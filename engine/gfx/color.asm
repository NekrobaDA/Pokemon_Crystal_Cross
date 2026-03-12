;SHINY_ATK_BIT EQU 5
SHINY_DEF_VAL EQU 10
SHINY_SPD_VAL EQU 10
SHINY_SPC_VAL EQU 10
SHINY_SPC_VAL_2 EQU 5

CheckShininess:
; Check if a mon is shiny by DVs at bc.
; Return carry if shiny.

	ld l, c
	ld h, b

; Defense
	ld a, [hli]
	and $f
	cp  SHINY_DEF_VAL
	jr nz, .not_shiny

; Speed
	ld a, [hl]
	and $f0
	cp  SHINY_SPD_VAL << 4
	jr nz, .not_shiny

; Special
	ld a, [hl]
	and $f
	cp  SHINY_SPC_VAL
	jr nz, .check_second_shinyval
	jr .shiny
	
.check_second_shinyval   ;added to allow for more shiny+nature combos
	cp SHINY_SPC_VAL_2
	jr nz, .not_shiny

.shiny
	scf
	ret

.not_shiny
	and a
	ret
	
;SHINYALT_ATK_BIT EQU 5
SHINYALT_DEF_VAL EQU 13
SHINYALT_SPD_VAL EQU 13
SHINYALT_SPC_VAL EQU 13
SHINYALT_SPC_VAL_2 EQU 6

CheckShininessAlt:
; Check if a mon is shiny by DVs at bc.
; Return carry if shiny.

	ld l, c
	ld h, b

; Defense
	ld a, [hli]
	and $f
	cp  SHINYALT_DEF_VAL
	jr nz, .not_shiny

; Speed
	ld a, [hl]
	and $f0
	cp  SHINYALT_SPD_VAL << 4
	jr nz, .not_shiny

; Special
	ld a, [hl]
	and $f
	cp  SHINYALT_SPC_VAL
	jr nz, .check_second_shinyval_alt
	jr .shiny
	
.check_second_shinyval_alt   ;added to allow for more shiny+nature combos
	cp SHINYALT_SPC_VAL_2
	jr nz, .not_shiny

.shiny
	scf
	ret

.not_shiny
	and a
	ret

InitPartyMenuPalettes:
	ld hl, PalPacket_PartyMenu + 1
	call CopyFourPalettes
	call InitPartyMenuOBPals
	call WipeAttrmap
	ret

LoadTrainerClassPaletteAsNthBGPal:
	ld a, [wTrainerClass]
	call GetTrainerPalettePointer
	ld a, e
	jr LoadNthMiddleBGPal

LoadMonPaletteAsNthBGPal:
	ld a, [wCurPartySpecies]
	call _GetMonPalettePointer
	ld a, e
	bit 7, a
	jr z, LoadNthMiddleBGPal
	and $7f
	inc hl
	inc hl
	inc hl
	inc hl

LoadNthMiddleBGPal:
	push hl
	ld hl, wBGPals1
	ld de, 1 palettes
.loop
	and a
	jr z, .got_addr
	add hl, de
	dec a
	jr .loop

.got_addr
	ld e, l
	ld d, h
	pop hl
	call LoadPalette_White_Col1_Col2_Black
	ret

ApplyMonOrTrainerPals:
	call CheckCGB
	ret z
	ld a, e
	and a
	jr z, .get_trainer
	ld a, [wCurPartySpecies]
	call GetMonPalettePointer
	jr .load_palettes

.get_trainer
	ld a, [wTrainerClass]
	call GetTrainerPalettePointer

.load_palettes
	ld de, wBGPals1
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

ApplyHPBarPals:
	ld a, [wWhichHPBar]
	and a
	jr z, .Enemy
	cp $1
	jr z, .Player
	cp $2
	jr z, .PartyMenu
	ret

.Enemy:
	ld de, wBGPals2 palette PAL_BATTLE_BG_ENEMY_HP color 1
	jr .okay

.Player:
	ld de, wBGPals2 palette PAL_BATTLE_BG_PLAYER_HP color 1

.okay
	ld l, c
	ld h, $0
	add hl, hl
	add hl, hl
	
;get palset based on time of day
	ld a, [wNightFlag]
	ld bc, HPBarPals  ;day pals
	and a
	jr z, .continueHPpals
	ld bc, HPBarPalsNight
	cp 1
	jr z, .continueHPpals	
;eveHPpals
	ld bc, HPBarPalsEve

.continueHPpals	
	add hl, bc
	ld bc, 4
	ld a, BANK(wBGPals2)
	call FarCopyWRAM
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.PartyMenu:
	ld e, c
	inc e
	hlcoord 11, 1, wAttrmap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wCurPartyMon]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop

.done
	lb bc, 2, 8
	ld a, e
	call FillBoxCGB
	ret

LoadStatsScreenPals:
	call CheckCGB
	ret z
	ld hl, StatsScreenPals
	ld b, 0
	dec c
	add hl, bc
	add hl, bc
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
	ld a, [hli]
;	ld [wBGPals1 palette 0], a
	ld [wBGPals1 palette 2], a
	ld a, [hl]
	ld [wBGPals1 palette 0 + 1], a
	ld [wBGPals1 palette 2 + 1], a
	pop af
	ldh [rSVBK], a
	call ApplyPals
	ld a, $1
	ret

LoadMailPalettes:
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, .MailPals
	add hl, de
.cgb
	ld de, wBGPals1
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	call ApplyPals
	call WipeAttrmap
	call ApplyAttrmap
	ret

.MailPals:
INCLUDE "gfx/mail/mail.pal"

INCLUDE "engine/gfx/cgb_layouts.asm"

CopyFourPalettes:
	ld de, wBGPals1
	ld c, 4

CopyPalettes:
.loop
	push bc
	ld a, [hli]
	push hl
	call GetPredefPal
	call LoadHLPaletteIntoDE
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, .loop
	ret

GetPredefPal:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PredefPals
	add hl, bc
	ret

LoadHLPaletteIntoDE:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wOBPals1)
	ldh [rSVBK], a
	ld c, 1 palettes
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	pop af
	ldh [rSVBK], a
	ret

LoadPalette_White_Col1_Col2_Black:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	
	ld a, [wStatsScreenFlags]  ;tricky to use because overlaps with wPackJumptableIndex
	cp 1
	jr z, .day
	cp 2
	jr z, .day
	cp 3
	jr z, .day
	
	ld a, [wNightFlag]
	and a
	jr z, .day
	cp 1
	jr z, .night
	
;eve
	ld a, LOW(PALRGB_EVE) ;EF
	ld [de], a
	inc de
	ld a, HIGH(PALRGB_EVE) ;51
	ld [de], a
	inc de
	
	call EveColors
	ld c, 2 * PAL_COLOR_SIZE

	jr .black	
	
.night
	ld a, LOW(PALRGB_NIGHT) ;EF
	ld [de], a
	inc de
	ld a, HIGH(PALRGB_NIGHT) ;51
	ld [de], a
	inc de
	
	call NightColors
	ld c, 2 * PAL_COLOR_SIZE

	jr .black

.day
	ld a, LOW(PALRGB_WHITE) ;FF
	ld [de], a
	inc de
	ld a, HIGH(PALRGB_WHITE) ;7F
	ld [de], a
	inc de
	
	ld c, 2 * PAL_COLOR_SIZE
	
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop

.black
	xor a
	ld [de], a
	inc de
	ld [de], a
	inc de
	

	pop af
	ldh [rSVBK], a
	ret
	
NightColors:
	call NightColorSwap
	
; b = gggrrrrr, c = 0bbbbbGG
	
.loop
	ld a, b
	ld [de], a
	inc de
	inc hl
	
	ld a, c
	ld [de], a
	inc de
	inc hl
	
	call NightColorSwap
	
; b = gggrrrrr, c = 0bbbbbGG

.loop2
	ld a, b
	ld [de], a
	inc hl
	inc de
	
	ld a, c
	ld [de], a
	inc hl
	inc de
	
	ret
	
NightColorSwap:
	push de
	
; red
	ld a, [hl] ; gggrrrrr
	and $1f ; 00011111 -> 000rrrrr
	
	ld e, a ;e red 000rrrrr
	
;green
	ld a, [hli] ; gggrrrrr
	and $e0 ; 11100000 -> ggg00000
	ld b, a 
	ld a, [hl] ; 0bbbbbGG
	and 3 ; 00000011 -> 000000GG
	or b ; 000000GG + ggg00000
	swap a ; ggg0 00GG -> 00GGggg0
	rrca ; 000GGggg
	
	ld d, a ;d green 000GGggg

;blue
	ld a, [hld] ; 0bbbbbGG
	and $7c ; 1111100 -> 0bbbbb00
	
	ld c, a ;c blue 0bbbbb00

;mod colors here
	srl e
	srl d
	
	ld a, c
	; a == %0bbbbb00
	rrca ; a = a / 2 = %00bbbbb0
	ld b, a ; b == a / 2
	rrca ; a = a / 4 = %000bbbbb
	add b ; a = a / 4 + a / 2 = a * 3 / 4
	and %01111100 ; mask the blue bits
; now a == 3/4ths of previous a
	ld c, a

	ld a, d
	rlca ; 00GGggg0
	swap a ; 00GG ggg0 -> ggg000GG
	and $e0 ; 11100000 -> ggg00000
	ld b, a
	ld a, d
	rlca ; 00GGggg0
	swap a ; 00GG ggg0 -> ggg000GG
	and 3 ; 00000011 -> 000000GG
	ld d, a
	
;red in e, low green in b, high green in d, blue in c
	ld a, e 
	or b ; 000rrrrr + ggg00000
	ld b, a ; gggrrrrr
	ld a, d
	or c ; 0bbbbb00 + 000000GG
	ld c, a ; 0bbbbbGG
	pop de
	ret
	
EveColors:
	call EveColorSwap
	
; b = gggrrrrr, c = 0bbbbbGG
	
.loop
	ld a, b
	ld [de], a
	inc de
	inc hl
	
	ld a, c
	ld [de], a
	inc de
	inc hl
	
	call EveColorSwap
	
; b = gggrrrrr, c = 0bbbbbGG

.loop2
	ld a, b
	ld [de], a
	inc hl
	inc de
	
	ld a, c
	ld [de], a
	inc hl
	inc de
	
	ret
	
EveColorSwap:
	push de
	
; red
	ld a, [hl] ; gggrrrrr
	and $1f ; 00011111 -> 000rrrrr
	
	ld e, a ;e red 000rrrrr
	
;green
	ld a, [hli] ; gggrrrrr
	and $e0 ; 11100000 -> ggg00000
	ld b, a 
	ld a, [hl] ; 0bbbbbGG
	and 3 ; 00000011 -> 000000GG
	or b ; 000000GG + ggg00000
	swap a ; ggg0 00GG -> 00GGggg0
	rrca ; 000GGggg
	
	ld d, a ;d green 000GGggg

;blue
	ld a, [hld] ; 0bbbbbGG
	and $7c ; 1111100 -> 0bbbbb00
	
	ld c, a ;c blue 0bbbbb00

;mod colors here
	;e unchanged
	
	ld a, d
	; a == 000GGggg
	rrca ; a / 2
	ld b, a
	rrca ; a / 4
	rrca ; a / 8
	add b ; 1/2 + 1/8 = 5/8
	and %00011111 ; mask green bits
	ld d, a
	
	ld a, c
	; a == %0bbbbb00
	rrca ; a = a / 2 = %00bbbbb0
	ld b, a ; b == a / 2
	rrca ; a = a / 4 = %000bbbbb
	rrca
	add b ; a = a / 4 + a / 2 = a * 3 / 4
	and %01111100 ; mask the blue bits
; now a == 3/4ths of previous a
	ld c, a

	ld a, d
	rlca ; 00GGggg0
	swap a ; 00GG ggg0 -> ggg000GG
	and $e0 ; 11100000 -> ggg00000
	ld b, a
	ld a, d
	rlca ; 00GGggg0
	swap a ; 00GG ggg0 -> ggg000GG
	and 3 ; 00000011 -> 000000GG
	ld d, a
	
;red in e, low green in b, high green in d, blue in c
	ld a, e 
	or b ; 000rrrrr + ggg00000
	ld b, a ; gggrrrrr
	ld a, d
	or c ; 0bbbbb00 + 000000GG
	ld c, a ; 0bbbbbGG
	pop de
	ret


FillBoxCGB:
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret

ResetBGPals:
	push af
	push bc
	push de
	push hl

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

	ld hl, wBGPals1
	ld c, 1 palettes
.loop
	ld a, $ff
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	dec c
	jr nz, .loop

	pop af
	ldh [rSVBK], a

	pop hl
	pop de
	pop bc
	pop af
	ret

WipeAttrmap:
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call ByteFill
	ret

ApplyPals:
	ld hl, wBGPals1
	ld de, wBGPals2
	ld bc, 16 palettes
	ld a, BANK(wGBCPalettes)
	call FarCopyWRAM
	ret

ApplyAttrmap:
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr z, .UpdateVBank1
	ldh a, [hBGMapMode]
	push af
	ld a, $2
	ldh [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	call DelayFrame
	pop af
	ldh [hBGMapMode], a
	ret

.UpdateVBank1:
	hlcoord 0, 0, wAttrmap
	debgcoord 0, 0
	ld b, SCREEN_HEIGHT
	ld a, $1
	ldh [rVBK], a
.row
	ld c, SCREEN_WIDTH
.col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .col
	ld a, BG_MAP_WIDTH - SCREEN_WIDTH
	add e
	jr nc, .okay
	inc d
.okay
	ld e, a
	dec b
	jr nz, .row
	ld a, $0
	ldh [rVBK], a
	ret

; CGB layout for SCGB_PARTY_MENU_HP_BARS
CGB_ApplyPartyMenuHPPals:
	ld hl, wHPPals
	ld a, [wSGBPals]
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	ld a, [de]
	inc a
	ld e, a
	hlcoord 11, 2, wAttrmap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wSGBPals]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop
.done
	lb bc, 2, 8
	ld a, e
	call FillBoxCGB
	ret

InitPartyMenuOBPals:
	ld hl, PartyMenuOBPals
	ld de, wOBPals1
	ld bc, 8 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM
	ret

GetBattlemonBackpicPalettePointer:
	push de
	farcall GetPartyMonDVs
	ld c, l
	ld b, h
	ld a, [wTempBattleMonSpecies]
	call GetPlayerOrMonPalettePointer
	pop de
	ret

GetEnemyFrontpicPalettePointer:
	ld a, [wd010] ;[wDittoFlag]
	cp 0
	jr z, .not_ditto

	push de
	farcall GetEnemyMonDVs
	ld c, l
	ld b, h
	ld a, [wTempEnemyMonSpecies]
	call GetMonNormalOrShinyPalettePointerDitto
	pop de
	jr .end

.not_ditto
	push de
	farcall GetEnemyMonDVs     ;hl loaded into bc just for bc to get loaded back in hl?
	ld c, l
	ld b, h
	ld a, [wTempEnemyMonSpecies]
	call GetFrontpicPalettePointer   ;hl, bc, a in
	pop de
.end
	ret

GetPlayerOrMonPalettePointer:
	and a
	jp nz, GetMonNormalOrShinyPalettePointer

	ld a, [wPlayerSpriteSetupFlags]
	bit PLAYERSPRITESETUP_FEMALE_TO_MALE_F, a
	jr nz, .male
	ld a, [wPlayerGender]
	and a
	jr z, .male
	ld hl, KrisPalette
	ret

.male
	ld hl, PlayerPalette
	ret

GetFrontpicPalettePointer:
	and a
	jp nz, GetMonNormalOrShinyPalettePointer
	ld a, [wTrainerClass]

GetTrainerPalettePointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, TrainerPalettes
	add hl, bc
	ret

GetMonPalettePointer:
	call _GetMonPalettePointer
	ret

BattleObjectPals:
INCLUDE "gfx/battle_anims/battle_anims.pal"

.PushPalette:
	ld c, 1 palettes
.loop
	ld a, [hli]
	ldh [rOBPD], a
	dec c
	jr nz, .loop
	ret

_GetMonPalettePointer:
	call GetPokemonIndexFromID
	add hl, hl
	add hl, hl
	ld bc, PokemonPalettes
	add hl, bc
	ret
	
_GetMonPalettePointerShiny
	call GetPokemonIndexFromID
	add hl, hl
	add hl, hl
	ld bc, PokemonPalettesShiny
	add hl, bc
	ret
	
_GetMonPalettePointerShinyAlt
	call GetPokemonIndexFromID
	add hl, hl
	add hl, hl
	ld bc, PokemonPalettesShinyAlt
	add hl, bc
	ret

GetMonNormalOrShinyPalettePointer:
	push af
	push hl
	call CheckShininess
	pop hl
	jr c, .shiny
	push hl
	call CheckShininessAlt
	pop hl
	jr c, .shinyalt
	
	pop af
	call _GetMonPalettePointer
	jr .end
	
.shiny
	pop af
	call _GetMonPalettePointerShiny
	jr .end
	
.shinyalt
	pop af
	call _GetMonPalettePointerShinyAlt
.end
	ret
	
GetMonNormalOrShinyPalettePointerDitto:
	call _GetMonPalettePointerDitto
	ret
	
_GetMonPalettePointerDitto:
	call GetPokemonIndexFromID
	add hl, hl
	add hl, hl
	ld bc, DittoPalettes
	add hl, bc
	ret

InitCGBPals::
	call CheckCGB
	ret z

; CGB only
	ld a, BANK(vTiles3)
	ldh [rVBK], a
	ld hl, vTiles3
	ld bc, $200 tiles
	xor a
	call ByteFill
	ld a, BANK(vTiles0)
	ldh [rVBK], a
	ld a, 1 << rBGPI_AUTO_INCREMENT
	ldh [rBGPI], a
	ld c, 4 * 8
.bgpals_loop
	ld a, LOW(PALRGB_WHITE)
	ldh [rBGPD], a
	ld a, HIGH(PALRGB_WHITE)
	ldh [rBGPD], a
	dec c
	jr nz, .bgpals_loop
	ld a, 1 << rOBPI_AUTO_INCREMENT
	ldh [rOBPI], a
	ld c, 4 * 8
.obpals_loop
	ld a, LOW(PALRGB_WHITE)
	ldh [rOBPD], a
	ld a, HIGH(PALRGB_WHITE)
	ldh [rOBPD], a
	dec c
	jr nz, .obpals_loop
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
	ld hl, wBGPals1
	call .LoadWhitePals
	ld hl, wBGPals2
	call .LoadWhitePals
	pop af
	ldh [rSVBK], a
	ret

.LoadWhitePals:
	ld c, 4 * 16
.loop
	ld a, LOW(PALRGB_WHITE)
	ld [hli], a
	ld a, HIGH(PALRGB_WHITE)
	ld [hli], a
	dec c
	jr nz, .loop
	ret

SGB_ClearVRAM:
	ld hl, VRAM_Begin
	ld bc, VRAM_End - VRAM_Begin
	xor a
	call ByteFill
	ret

CopyData:
; copy bc bytes of data from hl to de
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ret

ClearBytes:
; clear bc bytes of data starting from de
.loop
	xor a
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ret

DrawDefaultTiles:
; Draw 240 tiles (2/3 of the screen) from tiles in VRAM
	hlbgcoord 0, 0 ; BG Map 0
	ld de, BG_MAP_WIDTH - SCREEN_WIDTH
	ld a, $80 ; starting tile
	ld c, 12 + 1
.line
	ld b, 20
.tile
	ld [hli], a
	inc a
	dec b
	jr nz, .tile
; next line
	add hl, de
	dec c
	jr nz, .line
	ret

SGBDelayCycles:
	ld de, 7000
.wait
	nop
	nop
	nop
	dec de
	ld a, d
	or e
	jr nz, .wait
	ret

INCLUDE "gfx/sgb/pal_packets.asm"

PredefPals:
INCLUDE "gfx/sgb/predef.pal"

HPBarPals:
INCLUDE "gfx/battle/hp_bar.pal"
HPBarPalsNight:
INCLUDE "gfx/battle/hp_bar_n.pal"
HPBarPalsEve:
INCLUDE "gfx/battle/hp_bar_e.pal"

ExpBarPalette:
INCLUDE "gfx/battle/exp_bar.pal"

;trainer overlay palettes
INCLUDE "gfx/battle/overlays/overlay_pals.asm"

INCLUDE "data/pokemon/palettes.asm"

INCLUDE "data/trainers/palettes.asm"

LoadMapPals:
	farcall LoadSpecialMapPalette
	jr c, .got_pals

	; Which palette group is based on whether we're outside or inside
	ld a, [wEnvironment]
	and 7
	ld e, a
	ld d, 0
	ld hl, EnvironmentColorsPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	; Futher refine by time of day
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	add a
	add a
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
	ld hl, wBGPals1
	ld b, 8
.outer_loop
	ld a, [de] ; lookup index for TilesetBGPalette
	push de
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl	
	ld de, TilesetBGPalette
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld c, 1 palettes
.inner_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .inner_loop
	pop de
	inc de
	dec b
	jr nz, .outer_loop
	pop af
	ldh [rSVBK], a

.got_pals
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld b, a
	ld a, [wMapNumber]
	cp MAP_CHERRYGROVE_CITY
	jr nz, .skipcherry
	ld a, b
	ld hl, MapObjectPalsCherry
	jr .checkdone
.skipcherry
	ld a, b
	ld hl, MapObjectPals
.checkdone
	ld bc, 8 palettes
	call AddNTimes
	ld de, wOBPals1
	ld bc, 8 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM
	
	farcall LoadSpecialNPCPalette
	farcall LoadSpecialMapObjectPalette

	ld a, [wEnvironment]
	cp TOWN
	jr z, .outside
	cp ROUTE
	ret nz
.outside
	ld a, [wMapGroup]
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, RoofPals
	add hl, de
	add hl, de
	add hl, de
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	cp NITE_F
	ld de, 4
	jr z, .nite
	jr c, .morn_day
; eve
	add hl, de
.nite
	add hl, de
.morn_day
	ld de, wBGPals1 palette PAL_BG_ROOF color 1
	ld bc, 4
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ret

INCLUDE "data/maps/environment_colors.asm"

PartyMenuBGMobilePalette:
INCLUDE "gfx/stats/party_menu_bg_mobile.pal"

PartyMenuBGPalette:
INCLUDE "gfx/stats/party_menu_bg.pal"

TilesetBGPalette:
INCLUDE "gfx/tilesets/bg_tiles.pal"

MapObjectPals::
INCLUDE "gfx/overworld/npc_sprites.pal"

MapObjectPalsCherry::
INCLUDE "gfx/overworld/npc_sprites_cherry.pal"

RoofPals:
INCLUDE "gfx/tilesets/roofs.pal"

DiplomaPalettes:
INCLUDE "gfx/diploma/diploma.pal"

PartyMenuOBPals:
INCLUDE "gfx/stats/party_menu_ob.pal"

MalePokegearPals:
INCLUDE "gfx/pokegear/pokegear.pal"

FemalePokegearPals:
INCLUDE "gfx/pokegear/pokegear_f.pal"

SlotMachinePals:
INCLUDE "gfx/slots/slots.pal"
