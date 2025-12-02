	const_def 1
	const PINK_PAGE  ; 1
	const GREEN_PAGE ; 2
	const BLUE_PAGE  ; 3
NUM_STAT_PAGES EQU const_value - 1

STAT_PAGE_MASK EQU %00000011

BattleStatsScreenInit:
	ld a, [wLinkMode]
	cp LINK_MOBILE
	jr nz, StatsScreenInit

	ld a, [wBattleMode]
	and a
	jr z, StatsScreenInit

StatsScreenInit:
	ld hl, StatsScreenMain
	jr StatsScreenInit_gotaddress

StatsScreenInit_gotaddress:
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a ; disable overworld tile animations
	ld a, [wBoxAlignment] ; whether sprite is to be mirrorred
	push af
	ld a, [wJumptableIndex]
	ld b, a
	ld a, [wStatsScreenFlags]
	ld c, a

	push bc
	push hl
	call ClearBGPalettes
	call ClearTilemap
	call UpdateSprites
	farcall StatsScreen_LoadFont
	pop hl
	call _hl_
	call ClearBGPalettes
	call ClearTilemap
	pop bc

	; restore old values
	ld a, b
	ld [wJumptableIndex], a
	ld a, c
	ld [wStatsScreenFlags], a
	pop af
	ld [wBoxAlignment], a
	pop af
	ldh [hMapAnims], a
	ret

StatsScreenMain:
	xor a
	ld [wJumptableIndex], a
; ???
	ld [wStatsScreenFlags], a
	ld a, [wStatsScreenFlags]
	and $ff ^ STAT_PAGE_MASK
	or PINK_PAGE ; first_page
	ld [wStatsScreenFlags], a
.loop
	ld a, [wJumptableIndex]
	and $ff ^ (1 << 7)
	ld hl, StatsScreenPointerTable
	rst JumpTable
	call StatsScreen_WaitAnim
	ld a, [wJumptableIndex]
	bit 7, a
	jr z, .loop
	ret

StatsScreenPointerTable:
	dw MonStatsInit       ; regular pokémon
	dw EggStatsInit       ; egg
	dw StatsScreenWaitCry
	dw EggStatsJoypad
	dw StatsScreen_LoadPage
	dw StatsScreenWaitCry
	dw MonStatsJoypad
	dw StatsScreen_Exit

StatsScreen_WaitAnim:
	ld hl, wStatsScreenFlags
	bit 6, [hl]
	jr nz, .try_anim
	bit 5, [hl]
	jr nz, .finish
;	call DelayFrame          ;why is this even a thing
	ret

.try_anim
	farcall SetUpPokeAnim
	jr nc, .finish
	ld hl, wStatsScreenFlags
	res 6, [hl]
.finish
	ld hl, wStatsScreenFlags
	res 5, [hl]
	farcall HDMATransferTilemapToWRAMBank3
	ret

StatsScreen_SetJumptableIndex:
	ld a, [wJumptableIndex]
	and $80
	or h
	ld [wJumptableIndex], a
	ret

StatsScreen_Exit:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

MonStatsInit:
	ld hl, wStatsScreenFlags
	res 6, [hl]
	call ClearBGPalettes
	call ClearTilemap
	farcall HDMATransferTilemapToWRAMBank3
	call StatsScreen_CopyToTempMon
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	call StatsScreen_InitUpperHalf
	ld hl, wStatsScreenFlags
	set 4, [hl]
	ld h, 4
	call StatsScreen_SetJumptableIndex
	ret

.egg
	ld h, 1
	call StatsScreen_SetJumptableIndex
	ret

EggStatsInit:
	call EggStatsScreen
	ld a, [wJumptableIndex]
	inc a
	ld [wJumptableIndex], a
	ret

EggStatsJoypad:
	call StatsScreen_GetJoypad
	jr nc, .check
	ld h, 0
	call StatsScreen_SetJumptableIndex
	ret

.check
	bit A_BUTTON_F, a
	jr nz, .quit
if DEF(_DEBUG)
	cp START
	jr z, .hatch
endc
	and D_DOWN | D_UP | A_BUTTON | B_BUTTON
	jp StatsScreen_JoypadAction

.quit
	ld h, 7
	call StatsScreen_SetJumptableIndex
	ret

if DEF(_DEBUG)
.hatch
	ld a, [wMonType]
	or a
	jr nz, .skip
	push bc
	push de
	push hl
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Happiness
	call AddNTimes
	ld [hl], 1
	ld a, 1
	ld [wTempMonHappiness], a
	ld a, 127
	ld [wStepCount], a
	ld de, .HatchSoonString
	hlcoord 8, 17
	call PlaceString
	ld hl, wStatsScreenFlags
	set 5, [hl]
	pop hl
	pop de
	pop bc
.skip
	xor a
	jp StatsScreen_JoypadAction

.HatchSoonString:
	db "▶HATCH SOON!@"
endc

StatsScreen_LoadPage:
	call StatsScreen_LoadGFX
	ld hl, wStatsScreenFlags
	res 4, [hl]
	ld a, [wJumptableIndex]
	inc a
	ld [wJumptableIndex], a
	ret

MonStatsJoypad:
	call StatsScreen_GetJoypad
	jr nc, .next
	ld h, 0
	call StatsScreen_SetJumptableIndex
	ret

.next
	and D_DOWN | D_UP | D_LEFT | D_RIGHT | A_BUTTON | B_BUTTON
	jp StatsScreen_JoypadAction

StatsScreenWaitCry:
;	call IsSFXPlaying        ;disabling this removes so much artificial lag wow
;	ret nc
	ld a, [wJumptableIndex]
	inc a
	ld [wJumptableIndex], a
	ret

StatsScreen_CopyToTempMon:
	ld a, [wMonType]
	cp TEMPMON
	jr nz, .not_tempmon
	ld a, [wBufferMonSpecies]
	ld [wCurSpecies], a
	call GetBaseData
	ld hl, wBufferMon
	ld de, wTempMon
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes
	jr .done

.not_tempmon
	farcall CopyMonToTempMon
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .done
	ld a, [wMonType]
	cp BOXMON
	jr c, .done
	farcall CalcTempmonStats
.done
	and a
	ret

StatsScreen_GetJoypad:
	call GetJoypad
	ld a, [wMonType]
	cp TEMPMON
	jr nz, .not_tempmon
	push hl
	push de
	push bc
	farcall StatsScreenDPad
	pop bc
	pop de
	pop hl
	ld a, [wMenuJoypad]
	and D_DOWN | D_UP
	jr nz, .set_carry
	ld a, [wMenuJoypad]
	jr .clear_carry

.not_tempmon
	ldh a, [hJoyPressed]
.clear_carry
	and a
	ret

.set_carry
	scf
	ret

StatsScreen_JoypadAction:
	push af
	ld a, [wStatsScreenFlags]
	maskbits NUM_STAT_PAGES
	ld c, a
	pop af
	bit B_BUTTON_F, a
	jp nz, .b_button
	bit D_LEFT_F, a
	jr nz, .d_left
	bit D_RIGHT_F, a
	jr nz, .d_right
	bit A_BUTTON_F, a
	jr nz, .a_button
	bit D_UP_F, a
	jr nz, .d_up
	bit D_DOWN_F, a
	jr nz, .d_down
	jr .done

.d_down
	ld a, [wMonType]
	cp BOXMON
	jr nc, .done
	and a
	ld a, [wPartyCount]
	jr z, .next_mon
	ld a, [wOTPartyCount]
.next_mon
	ld b, a
	ld a, [wCurPartyMon]
	inc a
	cp b
	jr z, .done
	ld [wCurPartyMon], a
	ld b, a
	ld a, [wMonType]
	and a
	jr nz, .load_mon
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
	jr .load_mon

.d_up
	ld a, [wCurPartyMon]
	and a
	jr z, .done
	dec a
	ld [wCurPartyMon], a
	ld b, a
	ld a, [wMonType]
	and a
	jr nz, .load_mon
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
	jr .load_mon

.a_button
	ld a, c
	cp BLUE_PAGE ; last page
	jr z, .b_button
.d_right
	inc c
	ld a, BLUE_PAGE ; last page
	cp c
	jr nc, .set_page
	ld c, PINK_PAGE ; first page
	jr .set_page

.d_left
	dec c
	jr nz, .set_page
	ld c, BLUE_PAGE ; last page
	jr .set_page

.done
	ret

.set_page
	ld a, [wStatsScreenFlags]
	and $ff ^ STAT_PAGE_MASK
	or c
	ld [wStatsScreenFlags], a
	ld h, 4
	call StatsScreen_SetJumptableIndex
	ret

.load_mon
	ld h, 0
	call StatsScreen_SetJumptableIndex
	ret

.b_button
	ld h, 7
	call StatsScreen_SetJumptableIndex
	ret

StatsScreen_InitUpperHalf:
	call .PlaceHPBar
	xor a
	ldh [hBGMapMode], a
	
	ld a, [wBaseSpecies]
	ld [wCurSpecies], a
	call GetPokemonIndexFromID
	ld a, h
	ld h, l
	ld l, a
	push hl
	ld hl, sp + 0
	ld d, h
	ld e, l
	
	hlcoord 1, 0
	ld a, $42
	ld b, a
	ld a, [wTempMonCaughtLevel]  ;repurposed to caught ball index
	and CAUGHT_BALL_MASK
;	and a
	jr z, .endball
.ball_loop
	inc b
	dec a
	and a
	jr nz, .ball_loop
	
.endball
	ld a, b
	ld [wCurHPPal], a
	ld [hl], a

	add sp, 2
	
	hlcoord 2, 0
	call PrintLevel
;	ld hl, .NicknamePointers
;	call GetNicknamePointer
;	call CopyNickname
;	hlcoord 1, 2
;	call PlaceString
	call PlaceNickname

	hlcoord 5, 0
	call .PlaceGenderChar
	ld a, [wTempMonPokerusStatus]
	ld b, a
	and $f
	jr nz, .HasPokerus
	ld a, b
	and $f0
	jr z, .NotImmuneToPkrs
	hlcoord 6, 0
	ld [hl], "." ; Pokérus immunity dot
.NotImmuneToPkrs:
	ld a, [wMonType]
	cp BOXMON
	jr .done_status
.HasPokerus:
	ld de, .PkrsStr
	hlcoord 6, 0
	call PlaceString
.done_status
;	hlcoord 7, 0
	hlcoord 1, 4
	push hl
	xor a
	ld [hTemp], a
	ld de, wTempMonStatus
	predef PlaceStatusString
	pop hl
	
	hlcoord 1, 3
	ld b, $0
	predef DrawPlayerHP

	call StatsScreen_PlaceHorizontalDivider
	call StatsScreen_PlacePageSwitchArrows
	call StatsScreen_PlaceShinyIcon
	ret
	
.PkrsStr:
	db "<PKRS>@"

.PlaceHPBar:
	ld hl, wTempMonHP
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP
	ld a, [hli]
	ld d, a
	ld e, [hl]
	farcall ComputeHPBarPixels
	ld hl, wCurHPPal
	call SetHPPal
	ld b, SCGB_STATS_SCREEN_HP_PALS
	call GetSGBLayout
;	call DelayFrame
	ret

.PlaceGenderChar:
	push hl
	farcall GetGender
	pop hl
	ret c
	ld a, "♂"
	jr nz, .got_gender
	ld a, "♀"
.got_gender
	ld [hl], a
	ret

BallsSummaryGFX:
INCBIN "gfx/font/balls_summary.2bpp"

;BallsSummaryPals:
;INCLUDE "gfx/font/balls_summary_pals.pal"

StatsScreen_PlaceHorizontalDivider:
	hlcoord 0, 7
	ld b, SCREEN_WIDTH
	ld a, $76 ; horizontal divider (empty HP/exp bar)
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

StatsScreen_PlacePageSwitchArrows:
	hlcoord 1, 6
	ld [hl], "◀"
	hlcoord 8, 6
	ld [hl], "▶"
	ret

StatsScreen_PlaceShinyIcon:
	ld bc, wTempMonDVs
	farcall CheckShininess
	jr nc, .tryalt
	hlcoord 8, 0
	ld [hl], "⁂"
	jr .endshine
.tryalt
	ld bc, wTempMonDVs
	farcall CheckShininessAlt
	ret nc
	hlcoord 8, 0
	ld [hl], "<altshiny>"
.endshine
	ret

StatsScreen_LoadGFX:
	ld a, [wBaseSpecies]
	ld [wTempSpecies], a
	ld [wCurSpecies], a
	xor a
	ldh [hBGMapMode], a
	call .ClearBox
	call .PageTilemap
	call .LoadPals
	ld hl, wStatsScreenFlags
	bit 4, [hl]
	jr nz, .place_frontpic
	call SetPalettes
	ret

.place_frontpic
	call StatsScreen_PlaceFrontpic
	ret

.ClearBox:
	ld a, [wStatsScreenFlags]
	maskbits NUM_STAT_PAGES
	ld c, a
	call StatsScreen_LoadPageIndicators
	hlcoord 0, 8
	lb bc, 10, 20
	call ClearBox
	ret

.LoadPals:
	ld a, [wStatsScreenFlags]
	maskbits NUM_STAT_PAGES
	ld c, a
	farcall LoadStatsScreenPals
;	call DelayFrame
	ld hl, wStatsScreenFlags
	set 5, [hl]
	ret

.PageTilemap:
	ld a, [wStatsScreenFlags]
	maskbits NUM_STAT_PAGES
	dec a
	ld hl, .Jumptable
	rst JumpTable
	ret

.Jumptable:
; entries correspond to *_PAGE constants
	dw LoadPinkPage
	dw LoadGreenPage
	dw LoadBluePage

LoadPinkPage:
	call PlaceNickname

	ld de, .Status_Type
;	hlcoord 0, 9
	hlcoord 0, 8
	call PlaceString
	ld de, .NoneStr
;	hlcoord 1, 11
	hlcoord 1, 10
	call PlaceString
;	hlcoord 1, 10
	hlcoord 1, 9
	predef PrintMonTypes

.happiness	
	ld de, HappinessString
	hlcoord 0, 12
	call PlaceString
	
	ld a, [wTempMonHappiness]
	ld de, MaxString
	cp 255
	jr z, .got_happiness
	ld de, PoorString
	cp 30
	jr c, .got_happiness
	ld de, LowString
	cp 70
	jr c, .got_happiness
	ld de, MidString
	cp 150
	jr c, .got_happiness
	ld de, GoodString
	cp 220
	jr c, .got_happiness
	ld de, HighString
.got_happiness
	hlcoord 5, 13
	call PlaceString
	
	hlcoord 10, 8
	ld de, SCREEN_WIDTH
	ld b, 10
	ld a, $31 ; vertical divider
.vertical_divider
	ld [hl], a
	add hl, de
	dec b
	jr nz, .vertical_divider
	ld de, .ExpPointStr2
	hlcoord 0, 14
	call PlaceString
	hlcoord 3, 15
	lb bc, 3, 7
	ld de, wTempMonExp
	call PrintNum
	call .CalcExpToNextLevel
	hlcoord 3, 17
	lb bc, 3, 7
	ld de, wExpToNextLevel
	call PrintNum
	ld de, .ToStr
	hlcoord 0, 17
	call PlaceString
	hlcoord 1, 16
	ld a, [wTempMonLevel]
	ld b, a
	ld de, wTempMonExp + 2
	predef FillInExpBar
	hlcoord 0, 16
	ld [hl], $40 ; left exp bar end cap
	hlcoord 9, 16
	ld [hl], $41 ; right exp bar end cap

	hlcoord 11, 8
	ld bc, 6
	predef PrintTempMonStats
	ret

.PrintNextLevel:
	ld a, [wTempMonLevel]
	push af
	cp MAX_LEVEL
	jr z, .AtMaxLevel
	inc a
	ld [wTempMonLevel], a
.AtMaxLevel:
	call PrintLevel
	pop af
	ld [wTempMonLevel], a
	ret

.CalcExpToNextLevel:
	ld a, [wTempMonLevel]
	cp MAX_LEVEL
	jr z, .AlreadyAtMaxLevel
	inc a
	ld d, a
	farcall CalcExpAtLevel
	ld hl, wTempMonExp + 2
	ld hl, wTempMonExp + 2
	ldh a, [hQuotient + 3]
	sub [hl]
	dec hl
	ld [wExpToNextLevel + 2], a
	ldh a, [hQuotient + 2]
	sbc [hl]
	dec hl
	ld [wExpToNextLevel + 1], a
	ldh a, [hQuotient + 1]
	sbc [hl]
	ld [wExpToNextLevel], a
	ret

.AlreadyAtMaxLevel:
	ld hl, wExpToNextLevel
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.Status_Type:
	db "TYPE/@"

.NoneStr:
	db "NONE@"

.ExpPointStr:
	db "<EX><P:>@"

.ExpPointStr2:
	db "<E2>XP:@"

.ToStr:
	db "<TO>< N><EX><T:>@"

LoadGreenPage:
	call PlaceNickname

	ld de, .Item
	hlcoord 0, 8
	call PlaceString
	call .GetItemName
	hlcoord 8, 8
	call PlaceString
	ld de, .Move
	hlcoord 0, 10
	call PlaceString
	ld hl, wTempMonMoves
	ld de, wListMoves_MoveIndicesBuffer
	ld bc, NUM_MOVES
	call CopyBytes
	hlcoord 8, 10
	ld a, SCREEN_WIDTH * 2
	ld [wListMovesLineSpacing], a
	predef ListMoves
	hlcoord 12, 11
	ld a, SCREEN_WIDTH * 2
	ld [wListMovesLineSpacing], a
	predef ListMovePP

.GetItemName:
	ld de, .ThreeDashes
	ld a, [wTempMonItem]
	and a
	ret z
	ld b, a
	farcall TimeCapsule_ReplaceTeruSama
	ld a, b
	ld [wNamedObjectIndex], a
	call GetItemName
	ret

.Item:
	db "ITEM@"

.ThreeDashes:
	db "---@"

.Move:
	db "MOVE@"

LoadBluePage:
	call .PlaceOTInfo

.PlaceOTInfo:
	ld de, IDNoString
;	hlcoord 0, 10
	hlcoord 9, 8
	call PlaceString
	ld de, OTString
	hlcoord 0, 8
	call PlaceString
;	hlcoord 2, 11
	hlcoord 10, 9
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	ld de, wTempMonID
	call PrintNum
	ld hl, .OTNamePointers
	call GetNicknamePointer
	call CopyNickname
	farcall CorrectNickErrors
	hlcoord 2, 9
	call PlaceString
	
.speciesname:
	ld de, BlankNameString
	hlcoord 1, 2
	call PlaceString
	ld a, [wBaseSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	call PlaceString

.location:
	ld de, MetString
	hlcoord 1, 11
	call PlaceString
	ld a, [wTempMonCaughtLocation]
	and CAUGHT_LOCATION_MASK
	ld e, a
	farcall GetLandmarkNameS
	ld de, wStringBuffer1
	hlcoord 2, 12
	call PlaceString
	
	hlcoord 1, 13
	ld b, SCREEN_WIDTH
	dec b
	dec b
	ld a, $76 ; horizontal divider (empty HP/exp bar)
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	
;traits
	farcall GeneratePersonalityTrait
	hlcoord 0, 16
	ld a, d
	call PrintTrait
	
	farcall GetNature
	hlcoord 1, 15
	ld a, d
	call PrintNature
	
;eventual E4 ribbon at 17, 8 or so (17-18, 8-9)
	ret

.OTNamePointers:
	dw wPartyMonOT
	dw wOTPartyMonOT
	dw sBoxMonOT
	dw wBufferMonOT
	
GenderStringM:
	db "♂@"
	
GenderStringF:
	db "♀@"

HappinessString:
	db "<H2>APPINESS@"
	
MaxString:
;	db "/OVERJOYED@"
	db "<FH><FH><FH><FH><FH>@"
	
HighString:
;	db "/HAPPY@"
	db "<FH><FH><FH><FH><EH>@"
	
GoodString:
;	db "/CONTENT@"
	db "<FH><FH><FH><EH><EH>@"
	
MidString:
;	db "/AVERAGE@"
	db "<FH><FH><EH><EH><EH>@"
	
LowString:
;	db "/UNHAPPY@"
	db "<FH><EH><EH><EH><EH>@"
	
PoorString:
;	db "/MISERABLE@"
	db "<EH><EH><EH><EH><EH>@"

IDNoString:
	db "<ID>№.@"

OTString:
	db "OT/@"
	
MetString:
	db "MET/@"

StatsScreen_PlaceFrontpic:
	ld hl, wTempMonDVs
	predef GetVariant
	call StatsScreen_GetAnimationParam
	jr c, .egg
	and a
	jr z, .no_cry
	jr .cry

.egg
	call .AnimateEgg
	call SetPalettes
	ret

.no_cry
	call .AnimateMon
	call SetPalettes
	ret

.cry
	call SetPalettes
	call .AnimateMon
	ld a, [wCurPartySpecies]
	call PlayMonCry2
	ret

.AnimateMon:
	ld hl, wStatsScreenFlags
	set 5, [hl]
	hlcoord 12, 0
	xor a
	ld [wBoxAlignment], a
	jp _PrepMonFrontpic

.AnimateEgg:
	xor a
	ld [wBoxAlignment], a

;.get_animation
	ld a, [wCurPartySpecies]
	call IsAPokemon
	ret c
	call StatsScreen_LoadTextboxSpaceGFX
	ld de, vTiles2 tile $00
	predef GetAnimatedFrontpic
	hlcoord 12, 0
	ld d, $0
	ld e, ANIM_MON_MENU
	predef LoadMonAnimation
	ld hl, wStatsScreenFlags
	set 6, [hl]
	ret

StatsScreen_GetAnimationParam:
	ld a, [wMonType]
	ld hl, .Jumptable
	rst JumpTable
	ret

.Jumptable:
	dw .PartyMon
	dw .OTPartyMon
	dw .BoxMon
	dw .Tempmon
	dw .Wildmon

.PartyMon:
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld b, h
	ld c, l
	jr .CheckEggFaintedFrzSlp

.OTPartyMon:
	xor a
	ret

.BoxMon:
	ld hl, sBoxMons
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld b, h
	ld c, l
	ld a, BANK(sBoxMons)
	call OpenSRAM
	call .CheckEggFaintedFrzSlp
	push af
	call CloseSRAM
	pop af
	ret

.Tempmon:
	ld bc, wTempMonSpecies
	jr .CheckEggFaintedFrzSlp ; utterly pointless

.CheckEggFaintedFrzSlp:
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	call CheckFaintedFrzSlp
	jr c, .FaintedFrzSlp
.egg
	xor a
	scf
	ret

.Wildmon:
	ld a, $1
	and a
	ret

.FaintedFrzSlp:
	xor a
	ret

StatsScreen_LoadTextboxSpaceGFX:
	nop
	push hl
	push de
	push bc
	push af
;	call DelayFrame
	ldh a, [rVBK]
	push af
	ld a, $1
	ldh [rVBK], a
	ld de, TextboxSpaceGFX
	lb bc, BANK(TextboxSpaceGFX), 1
	ld hl, vTiles2 tile " "
	call Get2bpp
	pop af
	ldh [rVBK], a
	pop af
	pop bc
	pop de
	pop hl
	ret

EggStatsScreen:
	xor a
	ldh [hBGMapMode], a
	ld hl, wCurHPPal
	call SetHPPal
	ld b, SCGB_STATS_SCREEN_HP_PALS
	call GetSGBLayout
	call StatsScreen_PlaceHorizontalDivider
	ld de, EggString
	hlcoord 8, 1
	call PlaceString
	ld de, IDNoString
	hlcoord 8, 3
	call PlaceString
	ld de, OTString
	hlcoord 8, 5
	call PlaceString
	ld de, FiveQMarkString
	hlcoord 11, 3
	call PlaceString
	ld de, FiveQMarkString
	hlcoord 11, 5
	call PlaceString
if DEF(_DEBUG)
	ld de, .PushStartString
	hlcoord 8, 17
	call PlaceString
	jr .placed_push_start

.PushStartString:
	db "▶PUSH START.@"

.placed_push_start
endc
	ld a, [wTempMonHappiness] ; egg status
	ld de, EggSoonString
	cp $6
	jr c, .picked
	ld de, EggCloseString
	cp $b
	jr c, .picked
	ld de, EggMoreTimeString
	cp $29
	jr c, .picked
	ld de, EggALotMoreTimeString
.picked
	hlcoord 1, 9
	call PlaceString
	ld hl, wStatsScreenFlags
	set 5, [hl]
	call SetPalettes ; pals
	call DelayFrame
	hlcoord 0, 0
	call PrepMonFrontpic
	farcall HDMATransferTilemapToWRAMBank3
	call StatsScreen_AnimateEgg

	ld a, [wTempMonHappiness]
	cp 6
	ret nc
	ld de, SFX_2_BOOPS
	call PlaySFX
	ret

EggString:
	db "EGG@"

FiveQMarkString:
	db "?????@"

EggSoonString:
	db   "It's making sounds"
	next "inside. It's going"
	next "to hatch soon!@"

EggCloseString:
	db   "It moves around"
	next "inside sometimes."
	next "It must be close"
	next "to hatching.@"

EggMoreTimeString:
	db   "Wonder what's"
	next "inside? It needs"
	next "more time, though.@"

EggALotMoreTimeString:
	db   "This EGG needs a"
	next "lot more time to"
	next "hatch.@"

StatsScreen_AnimateEgg:
	call StatsScreen_GetAnimationParam
	ret nc
	ld a, [wTempMonHappiness]
	ld e, $7
	cp 6
	jr c, .animate
	ld e, $8
	cp 11
	jr c, .animate
	ret

.animate
	push de
	ld [wBoxAlignment], a
	call StatsScreen_LoadTextboxSpaceGFX
	ld de, vTiles2 tile $00
	predef GetAnimatedFrontpic
	pop de
	hlcoord 0, 0
	ld d, $0
	predef LoadMonAnimation
	ld hl, wStatsScreenFlags
	set 6, [hl]
	ret

StatsScreen_LoadPageIndicators:
	hlcoord 2, 5
	ld a, $36
	ld [hli], a
	hlcoord 3, 5
	ld [hl], a
	hlcoord 2, 6
	ld a, $38 ; first of 4 small square tiles
	call .load_square_alt
	hlcoord 4, 5
	ld a, $36
	ld [hli], a
	hlcoord 5, 5
	ld [hl], a
	hlcoord 4, 6
	ld a, $38 ; " "
	call .load_square_alt
	hlcoord 6, 5
	ld a, $36
	ld [hli], a
	hlcoord 7, 5
	ld [hl], a
	hlcoord 6, 6
	ld a, $38 ; " "
	call .load_square_alt
	ld a, c
	cp GREEN_PAGE
	ld a, $3a ; first of 4 large square tiles
	; PINK_PAGE (< GREEN_PAGE)
	hlcoord 2, 5
	jr c, .load_square
	; GREEN_PAGE (= GREEN_PAGE)
	hlcoord 4, 5 
	jr z, .load_square
	; BLUE_PAGE (> GREEN_PAGE)
	hlcoord 6, 5
.load_square
	push bc
	ld [hli], a
	inc a
	ld [hld], a
	ld bc, SCREEN_WIDTH
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	pop bc
	ret
.load_square_alt
	push bc
	ld [hli], a
	inc a
	ld [hld], a
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	ret

CopyNickname:
	ld de, wStringBuffer1
	ld bc, MON_NAME_LENGTH
	jr .okay ; utterly pointless
.okay
	ld a, [wMonType]
	cp BOXMON
	jr nz, .partymon
	ld a, BANK(sBoxMonNicknames)
	call OpenSRAM
	push de
	call CopyBytes
	pop de
	call CloseSRAM
	ret

.partymon
	push de
	call CopyBytes
	pop de
	ret

GetNicknamePointer:
	ld a, [wMonType]
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMonType]
	cp TEMPMON
	ret z
	ld a, [wCurPartyMon]
	jp SkipNames

CheckFaintedFrzSlp:
	ld hl, MON_HP
	add hl, bc
	ld a, [hli]
	or [hl]
	jr z, .fainted_frz_slp
	ld hl, MON_STATUS
	add hl, bc
	ld a, [hl]
	and 1 << FRZ | SLP
	jr nz, .fainted_frz_slp
	and a
	ret

.fainted_frz_slp
	scf
	ret
	
TraitStrings:
	dw TraitString1
	dw TraitString2
	dw TraitString3
	dw TraitString4
	dw TraitString5
	dw TraitString6
	dw TraitString7
	dw TraitString8
	dw TraitString9
	dw TraitString10
	dw TraitString11
	dw TraitString12
	dw TraitString14
	dw TraitString15
	dw TraitString16
	dw TraitString17
	dw TraitString18
	dw TraitString19
	dw TraitString20
	dw TraitString21
	dw TraitString22
	dw TraitString23
	dw TraitString24
	dw TraitString25
	dw TraitString26
	dw TraitString27
	dw TraitString28
	dw TraitString29
	dw TraitString30
	dw TraitString31
	dw TraitString32
	dw TraitString33
	dw TraitString34
	dw TraitString35
	dw TraitString36
	dw TraitString37
	dw TraitString38
	dw TraitString39
	dw TraitString40
	dw TraitString13

;character strings (40 total)
TraitString1:
	db " Likes to eat.@"
TraitString2:	
	db " Often dozes off.@"
TraitString3:
	db " Absent-minded.@"
TraitString4:
	db " Likes to relax.@"
TraitString5:
	db " Proud of its power.@"
TraitString6:
	db " Quick-tempered.@"
TraitString7:
	db " Loves to battle.@"
TraitString8:
	db " Somewhat impatient.@"
TraitString9:
	db " Easily bored.@"
TraitString10:
	db " Able to take hits.@"
TraitString11:
	db " Highly persistent.@"
TraitString12:
	db " Good endurance.@"
TraitString14:
	db " Likes to run.@"
TraitString15:
	db " Alert to sounds.@"
TraitString16:
	db " Impetuous and silly@"
TraitString17:
	db " Likes teasing foes.@"
TraitString18:
	db " Quick to flee.@"
TraitString19:
	db " Highly curious.@"
TraitString20:                   ;slot for female shiny
	db " Mischievous.@"
TraitString21:
	db " Thoroughly cunning.@"
TraitString22:
	db " Lost in thought.@"
TraitString23:
	db " Very finicky.@"
TraitString24:
	db " Strong-willed.@"
TraitString25:
	db " Somewhat vain.@"
TraitString26:
	db " Strongly defiant.@"
TraitString27:
	db " Hates to lose.@"
TraitString28:
	db " Somewhat stubborn.@"
TraitString29:
	db " Carefree and lazy.@"
TraitString30:
	db " Somewhat obsessive.@"
TraitString31:
	db " Easily jealous.@"
TraitString32:
	db " Prefers observing.@"
TraitString33:
	db " Overly confident.@"
TraitString34:
	db " Friendly & playful.@"
TraitString35:
	db " Somewhat shy.@"
TraitString36:
	db " Easily anxious.@"
TraitString37:
	db " Highly sensitive.@"
TraitString38:
	db " Quick-witted.@"
TraitString39:
	db " Highly vocal.@"
TraitString40:                   ;slot for both set-dv male shiny and alt shiny
	db " Thrashes about.@"
TraitString13:
	db " Quiet & thoughtful.@"

PrintTrait:
; Print type b at hl.

;	ld a, b
	push hl
	add a
	ld hl, TraitStrings
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl

	jp PlaceString
	
NatureStrings:         ;natures will modify stat exp gains
	dw HardyString     ;+-/--
	dw LonelyString    ;+atk/-def
	dw SassyString     ;+sp.def/-spd
	dw CarefulString   ;+sp.def/-sp.atk
	dw BraveString     ;atk/-spd
	dw BoldString      ;+def/-atk
	dw DocileString    ;+-/--
	dw RelaxedString   ;+def/-spd
	dw ImpishString    ;+def/-sp.atk
	dw RashString      ;+sp.atk/-sp.def *
	dw TimidString     ;+spd/-atk       *
	dw NaughtyString   ;+atk/-sp.def    *
	dw JollyString     ;+spd/-sp.atk    *
	dw NaiveString     ;+spd/-sp.def    *
	dw AdamantString   ;+atk/-sp.atk    *  (shiny + alt shiny 'male' set DVs)
	dw ModestString    ;+sp.atk/-atk    *
	dw MildString      ;+sp.atk/-def
	dw QuietString     ;+sp.atk/-spd
	dw CalmString      ;+sp.def/-atk
	dw HastyString     ;+spd/-def
	dw BashfulString   ;+-/--
	dw GentleString    ;+sp.def/-def
	dw SeriousString   ;+-/--
	dw LaxString       ;+def/-sp.def
	dw QuirkyString    ;+-/--

;nature strings	
HardyString:
	db "HARDY by nature.@"
LonelyString:
	db "LONELY by nature.@"
BraveString:
	db "BRAVE by nature.@"
AdamantString:
	db "ADAMANT by nature.@"
NaughtyString:
	db "NAUGHTY by nature.@"
BoldString:
	db "BOLD by nature.@"
DocileString:
	db "DOCILE by nature.@"
RelaxedString:
	db "RELAXED by nature.@"
ImpishString:
	db "IMPISH by nature.@"
LaxString:
	db "LAX by nature.@"
TimidString:
	db "TIMID by nature.@"
HastyString:
	db "HASTY by nature.@"
SeriousString:
	db "SERIOUS by nature.@"
JollyString:
	db "JOLLY by nature.@"
NaiveString:
	db "NAIVE by nature.@"
ModestString:
	db "MODEST by nature.@"
MildString:
	db "MILD by nature.@"
QuietString:
	db "QUIET by nature.@"
BashfulString:
	db "BASHFUL by nature.@"
RashString:
	db "RASH by nature.@"
CalmString:
	db "CALM by nature.@"
GentleString:
	db "GENTLE by nature.@"
SassyString:
	db "SASSY by nature.@"
CarefulString:
	db "CAREFUL by nature.@"
QuirkyString:
	db "QUIRKY by nature.@"
	
PrintNature:
; Print type b at hl.

;	ld a, b
	push hl
	add a
	ld hl, NatureStrings
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl

	jp PlaceString
	
BlankNameString:
	db "          @"
	
PlaceNickname:
	ld de, BlankNameString
	hlcoord 1, 2
	call PlaceString
	ld hl, .NicknamePointers
	call GetNicknamePointer
	call CopyNickname
	hlcoord 1, 2
	jp PlaceString
	
.NicknamePointers:
	dw wPartyMonNicknames
	dw wOTPartyMonNicknames
	dw sBoxMonNicknames
	dw wBufferMonNick
