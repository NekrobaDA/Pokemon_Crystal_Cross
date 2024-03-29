EvolvePokemon:
	ld hl, wEvolvableFlags
	xor a
	ld [hl], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, SET_FLAG
	call EvoFlagAction
EvolveAfterBattle:
	xor a
	ld [wMonTriedToEvolve], a
	dec a
	ld [wCurPartyMon], a
	push hl
	push bc
	push de
	ld hl, wPartyCount

	push hl

EvolveAfterBattle_MasterLoop:
	ld hl, wCurPartyMon
	inc [hl]

	pop hl

	inc hl
	ld a, [hl]
	cp $ff
	jp z, .ReturnToMap

	ld [wEvolutionOldSpecies], a

	push hl
	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wEvolvableFlags
	ld b, CHECK_FLAG
	call EvoFlagAction
	ld a, c
	and a
	jp z, EvolveAfterBattle_MasterLoop

	ld a, [wEvolutionOldSpecies]
	call GetPokemonIndexFromID
	ld bc, EvosAttacksPointers - 2
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a

	push hl
	xor a
	ld [wMonType], a
	predef CopyMonToTempMon
	pop hl

.loop
	ld a, [hli]
	and a
	jr z, EvolveAfterBattle_MasterLoop

	ld b, a

	cp EVOLVE_TRADE
	jp z, .trade

	ld a, [wLinkMode]
	and a
	jp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_ITEM
	jp z, .item
	
	cp EVOLVE_ITEM_LEVEL
	jp z, .item_level
	
	cp EVOLVE_ITEM_REGION_SEVII
	jp z, .item_sevii

	ld a, [wForceEvolution]
	and a
	jp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_LEVEL
	jp z, .level

	cp EVOLVE_HAPPINESS
	jp z, .happiness
	
	cp EVOLVE_LEVEL_REGION
	jp z, .level_region
	
	cp EVOLVE_LEVEL_REGION_SEVII
	jp z, .level_sevii
	
	cp EVOLVE_GENDER
	jp z, .gender
	
	cp EVOLVE_MOVE
	jp z, .move
	
	cp EVOLVE_HOLD_LEVEL
	jp z, .hold_level
	
	cp EVOLVE_HOLD
	jp z, .hold

; EVOLVE_STAT
	ld a, [wTempMonLevel]
	cp [hl]
	jp c, .dont_evolve_1

	call IsMonHoldingEverstone
	jp z, .dont_evolve_1

	push hl
	ld de, wTempMonAttack
	ld hl, wTempMonDefense
	ld c, 2
	call CompareBytes
	ld a, ATK_EQ_DEF
	jr z, .got_tyrogue_evo
	ld a, ATK_LT_DEF
	jr c, .got_tyrogue_evo
	ld a, ATK_GT_DEF
.got_tyrogue_evo
	pop hl

	inc hl
	cp [hl]
	jp nz, .dont_evolve_2

	inc hl
	jp .proceed
	
.gender
	ld a, [wTempMonLevel]
	cp [hl]
	jp c, .dont_evolve_1

	call IsMonHoldingEverstone
	jp z, .dont_evolve_1
	
	push hl
	ld a, TEMPMON
	ld [wMonType], a
	predef GetGender
	ld a, EVO_MALE
	jr nz, .got_gender
	ld a, EVO_FEMALE
	
.got_gender
	pop hl
	
	inc hl   
	cp [hl]
	jp nz, .dont_evolve_2 

	inc hl
	jp .proceed
	
.item_level
	ld a, [hli]             ;item -> level
	ld b, a
	ld a, [wCurItem]
	cp b
	jp nz, .dont_evolve_2
	
	ld a, [wTempMonLevel]
	cp [hl]
	jp c, .dont_evolve_2

	inc hl                  ;level -> mon
	jp .proceed
	
.hold_level
	ld a, [hli]             ;item -> level
	ld b, a
	ld a, [wTempMonItem]
	cp b
	jp nz, .dont_evolve_2
	
	ld a, [wTempMonLevel]
	cp [hl]
	jp c, .dont_evolve_2

	xor a
	ld [wTempMonItem], a
	inc hl                  ;level -> mon
	jp .proceed
	
.hold
	ld a, [hli]             ;item -> mon
	ld b, a
	ld a, [wTempMonItem]
	cp b
	jp nz, .dont_evolve_3

	xor a
	ld [wTempMonItem], a
	jp .proceed
	
.item_sevii
	ld a, [hli]             ;item -> mon
	ld b, a
	ld a, [wCurItem]
	cp b
	jp nz, .dont_evolve_3
	
	push hl
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	pop hl
	
	cp SEVII_LANDMARK
	jp z, .proceed
	jp .dont_evolve_3
	
.move
	ld a, [hli]
	push hl
	push bc
	ld b, a
	ld hl, wTempMonMoves
rept NUM_MOVES
	ld a, [hli]
	cp b
	jr z, .move_proceed
endr
	pop bc
	pop hl
	jp .dont_evolve_3
	
.move_proceed
	pop bc
	pop hl
	jp .proceed

.happiness
	ld a, [wTempMonHappiness]
	cp HAPPINESS_TO_EVOLVE
	jp c, .dont_evolve_2

	call IsMonHoldingEverstone
	jp z, .dont_evolve_2

	ld a, [hli]
	cp TR_ANYTIME
	jp z, .proceed
	cp TR_MORNDAY
	jr z, .happiness_daylight

; TR_EVENITE
	ld a, [wTimeOfDay]
	cp NITE_F
	jp c, .dont_evolve_3
	jp .proceed

.happiness_daylight
	ld a, [wTimeOfDay]
	cp NITE_F
	jp nc, .dont_evolve_3
	jp .proceed

.trade
	ld a, [wLinkMode]
	and a
	jp z, .dont_evolve_2

	call IsMonHoldingEverstone
	jp z, .dont_evolve_2

	ld a, [hli]
	ld b, a
	inc a
	jp z, .proceed

	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jp z, .dont_evolve_3

	ld a, [wTempMonItem]
	cp b
	jp nz, .dont_evolve_3

	xor a
	ld [wTempMonItem], a
	jp .proceed

.item
	ld a, [hli]
	ld b, a
	ld a, [wCurItem]
	cp b
	jp nz, .dont_evolve_3

	ld a, [wForceEvolution]
	and a
	jp z, .dont_evolve_3
	ld a, [wLinkMode]
	and a
	jp nz, .dont_evolve_3
	jr .proceed
	
.level_region
	ld a, [hli]
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3
	
	push hl
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	pop hl
	
	cp KANTO_LANDMARK
	jp c, .dont_evolve_3
	jp .proceed
	
.level_sevii
	ld a, [hli]
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3
	
	push hl
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	pop hl
	
	cp SEVII_LANDMARK
	jr z, .proceed
	jp .dont_evolve_3

.level
	ld a, [hli]      ;level -> pokemon (end)
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3    ;+2
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3

.proceed
	ld a, [wTempMonLevel]
	ld [wCurPartyLevel], a
	ld a, $1
	ld [wMonTriedToEvolve], a

	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wEvolutionNewSpecies], a
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	call CopyName1
	ld hl, EvolvingText
	call PrintText

	ld c, 50
	call DelayFrames

	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	lb bc, 12, 20
	call ClearBox

	ld a, $1
	ldh [hBGMapMode], a
	call ClearSprites
	
	ld a, TEMPMON
	ld [wMonType], a

	farcall EvolutionAnimation

	push af
	call ClearSprites
	pop af
	jp c, CancelEvolution

	ld hl, CongratulationsYourPokemonText
	call PrintText

	ld a, [wEvolutionNewSpecies]
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	ld [wNamedObjectIndex], a
	call GetPokemonName

	push hl
	ld hl, EvolvedIntoText
	call PrintTextboxText
	farcall StubbedTrainerRankings_MonsEvolved

	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_CAUGHT_MON
	call PlaySFX
	call WaitSFX

	ld c, 40
	call DelayFrames

	call ClearTilemap
	call UpdateSpeciesNameIfNotNicknamed
	call GetBaseData

	ld hl, wTempMonExp + 2
	ld de, wTempMonMaxHP
	ld b, TRUE
	predef CalcMonStats

	ld a, [wCurPartyMon]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld e, l
	ld d, h
	ld bc, MON_MAXHP
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP + 1
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld hl, wTempMonHP + 1
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a

	ld hl, wTempMonSpecies
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes

	ld a, [wCurSpecies]
	ld [wTempSpecies], a
	xor a
	ld [wMonType], a
	call LearnEvolutionMove
	call LearnLevelMoves
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon

	ld a, [wTempSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .skip_unown
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr nz, .skip_unown

	ld hl, wTempMonDVs
	predef GetVariant
	callfar UpdateUnownDex

.skip_unown
	pop de
	pop hl
	ld a, [wTempMonSpecies]
	ld [hl], a
	push hl
	ld l, e
	ld h, d
	jp EvolveAfterBattle_MasterLoop
	
.dont_evolve_check
	ld a, b
	cp EVOLVE_HOLD_LEVEL
	jr z, .dont_evolve_1
	cp EVOLVE_GENDER
	jr z, .dont_evolve_1
	cp EVOLVE_ITEM_LEVEL
	jr z, .dont_evolve_1
	cp EVOLVE_STAT
	jr nz, .dont_evolve_2

.dont_evolve_1
	inc hl
.dont_evolve_2
	inc hl
.dont_evolve_3
	inc hl
	inc hl
	jp .loop

.UnusedReturnToMap: ; unreferenced
	pop hl
.ReturnToMap:
	pop de
	pop bc
	pop hl
	ld a, [wLinkMode]
	and a
	ret nz
	ld a, [wBattleMode]
	and a
	ret nz
	ld a, [wMonTriedToEvolve]
	and a
	call nz, RestartMapMusic
	ret
	
LearnEvolutionMove:
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	call GetPokemonIndexFromID
	ld bc, EvolutionMoves - 1
	add hl, bc
	ld a, [hl]
	and a
	ret z

	push hl
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes

	ld b, NUM_MOVES
.check_move
	ld a, [hli]
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move

	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a

.has_move
	pop hl
	ret

UpdateSpeciesNameIfNotNicknamed:
	ld a, [wCurSpecies]
	push af
	ld a, [wBaseSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	pop af
	ld [wCurSpecies], a
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
.loop
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	ret nz
	cp "@"
	jr nz, .loop

	ld a, [wCurPartyMon]
	ld bc, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames
	call AddNTimes
	push hl
	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	pop de
	ld bc, MON_NAME_LENGTH
	jp CopyBytes

CancelEvolution:
	ld hl, StoppedEvolvingText
	call PrintText
	call ClearTilemap
	jp EvolveAfterBattle_MasterLoop

IsMonHoldingEverstone:
	push hl
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld a, [hl]
	cp EVERSTONE
	pop hl
	ret

CongratulationsYourPokemonText:
	text_far _CongratulationsYourPokemonText
	text_end

EvolvedIntoText:
	text_far _EvolvedIntoText
	text_end

StoppedEvolvingText:
	text_far _StoppedEvolvingText
	text_end

EvolvingText:
	text_far _EvolvingText
	text_end

LearnLevelMoves:
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	call GetPokemonIndexFromID
	ld bc, EvosAttacksPointers - 2
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call SkipEvolutions

.find_move
	ld a, [hli]
	and a
	jr z, .done

	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	ld a, [hli]
	jr nz, .find_move

	push hl
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes

	ld b, NUM_MOVES
.check_move
	ld a, [hli]
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move
	jr .learn
.has_move

	pop hl
	jr .find_move

.learn
	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	pop hl
	jr .find_move

.done
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	ret

FillMoves:
; Fill in moves at de for wCurPartySpecies at wCurPartyLevel

	push hl
	push de
	push bc
	ld bc, EvosAttacksPointers - 2
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call SkipEvolutions
	jr .GetLevel

.NextMove:
	pop de
.GetMove:
	inc hl
.GetLevel:
	ld a, [hli]
	and a
	jp z, .done
	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	jp c, .done
	ld a, [wSkipMovesBeforeLevelUp]
	and a
	jr z, .CheckMove
	ld a, [wPrevPartyLevel]
	cp b
	jr nc, .GetMove

.CheckMove:
	push de
	ld c, NUM_MOVES
.CheckRepeat:
	ld a, [de]
	inc de
	cp [hl]
	jr z, .NextMove
	dec c
	jr nz, .CheckRepeat
	pop de
	push de
	ld c, NUM_MOVES
.CheckSlot:
	ld a, [de]
	and a
	jr z, .LearnMove
	inc de
	dec c
	jr nz, .CheckSlot
	pop de
	push de
	push hl
	ld h, d
	ld l, e
	call ShiftMoves
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .ShiftedMove
	push de
	ld bc, wPartyMon1PP - (wPartyMon1Moves + NUM_MOVES - 1)
	add hl, bc
	ld d, h
	ld e, l
	call ShiftMoves
	pop de

.ShiftedMove:
	pop hl

.LearnMove:
	ld a, [hl]
	ld [de], a
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .NextMove
	push hl
	ld a, [hl]
	ld hl, MON_PP - MON_MOVES
	add hl, de
	push hl
	dec a
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop hl
	ld [hl], a
	pop hl
	jr .NextMove

.done
	pop bc
	pop de
	pop hl
	ret

ShiftMoves:
	ld c, NUM_MOVES - 1
.loop
	inc de
	ld a, [de]
	ld [hli], a
	dec c
	jr nz, .loop
	ret

EvoFlagAction:
	push de
	ld d, $0
	predef SmallFarFlagAction
	pop de
	ret

GetLowestEvolutionStage:
; Return the first mon to evolve into wCurPartySpecies.
; Instead of looking it up, we just load it from a table. This is a lot more efficient.
	ld a, [wCurPartySpecies]    ; loading mother species into a
	call GetPokemonIndexFromID  ; in: a = 8-bit index, out: hl = 16-bit index; a clobbered
	ld bc, FirstEvoStages ;- 2   ; load this into bc?
	add hl, hl                  ; hl + hl, idk what this does
	add hl, bc                  ; hl + firstevostages bank?
	ld a, BANK(FirstEvoStages)  ; load bank?
	call GetFarWord             ; retrive a word from a (the bank), return in hl
	call GetPokemonIDFromIndex  ; convert hl back to a
	ld [wCurPartySpecies], a    ; load a into current species
	ret

SkipEvolutions::
; Receives a pointer to the evos and attacks for a mon in hl, and skips to the attacks.
	ld a, [hli]
	and a
	ret z
	cp EVOLVE_HOLD_LEVEL
	jr z, .extra_skip
	cp EVOLVE_GENDER
	jr z, .extra_skip
	cp EVOLVE_ITEM_LEVEL
	jr z, .extra_skip
	cp EVOLVE_STAT
	jr nz, .no_extra_skip
.extra_skip
	inc hl
.no_extra_skip
	inc hl
	inc hl
	inc hl
	jr SkipEvolutions

DetermineEvolutionItemResults::
; in: de: pointer to evos and attacks struct, wCurItem: item
; out: de: species ID or zero; a, hl: clobbered
	ld h, d
	ld l, e
	ld de, 0
.loop
	ld a, [hli]  ;evo method -> item
	and a
	ret z

	cp EVOLVE_ITEM_LEVEL
	jr nz, .next
	
	ld a, [wCurItem]
	cp [hl]
	jr nz, .increase	

	inc hl           ;item -> level
	ld a, [wTempMonLevel]
	cp [hl]
	jr c, .no_item_check
	jr .get_species

.next
	cp EVOLVE_HOLD_LEVEL
	jr z, .increase
	cp EVOLVE_STAT
	jr z, .increase
	cp EVOLVE_GENDER
	jr z, .increase
	jr .no_extra_increase

.increase	
	inc hl
.no_extra_increase
	cp EVOLVE_ITEM ; will fail if the EVOLVE_STAT check passed
	jr nz, .no_item_check
	ld a, [wCurItem]
	cp [hl]
	jr z, .get_species
	
.no_item_check
	inc hl
	inc hl
	inc hl
	jr .loop

.get_species
	inc hl      ;level -> species
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ret
	