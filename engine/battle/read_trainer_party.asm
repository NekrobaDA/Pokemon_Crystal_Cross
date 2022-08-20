ReadTrainerParty:
	ld a, [wInBattleTowerBattle]
	bit 0, a
	ret nz

	ld a, [wLinkMode]
	and a
	ret nz

	ld hl, wOTPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

	ld hl, wOTPartyMons
	ld bc, wOTPartyMonsEnd - wOTPartyMons
	xor a
	call ByteFill

	ld a, [wOtherTrainerClass]
	cp CAL
	jr nz, .not_cal2
	ld a, [wOtherTrainerID]
	cp CAL2
	jr z, .cal2
	ld a, [wOtherTrainerClass]
.not_cal2

	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [wOtherTrainerID]
	ld b, a
.skip_trainer
	dec b
	jr z, .got_trainer
.loop
	ld a, [wTrainerGroupBank]
	call GetFarByte
	add a, l
	ld l, a
	jr nc, .skip_trainer
	inc h
	jr .skip_trainer
.got_trainer
	inc hl

.skip_name
	call GetNextTrainerDataByte
	cp "@"
	jr nz, .skip_name

	call GetNextTrainerDataByte
	ld [wOtherTrainerType], a
	ld d, h
	ld e, l
	call ReadTrainerPartyPieces

.done
	jp ComputeTrainerReward

.cal2
	ld a, BANK(sMysteryGiftTrainer)
	call OpenSRAM
	ld a, TRAINERTYPE_MOVES
	ld [wOtherTrainerType], a
	ld de, sMysteryGiftTrainer
	call ReadTrainerPartyPieces
	call CloseSRAM
	jr .done

ReadTrainerPartyPieces:
	ld h, d
	ld l, e

.loop
	call GetNextTrainerDataByte
	cp $ff
	ret z

;level + species
	ld [wCurPartyLevel], a
	call GetNextTrainerDataByte
	push hl
	push af
	call GetNextTrainerDataByte
	ld h, a
	pop af
	ld l, a
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a

;add to party	
	ld a, OTPARTYMON
	ld [wMonType], a
	predef TryAddMonToParty
	pop hl
	inc hl 

;item	
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_ITEM
	jr z, .no_item
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Item
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	call GetNextTrainerDataByte
	ld [de], a
.no_item

;moves
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_MOVES
	jr z, .no_moves
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Moves
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl

	ld b, NUM_MOVES
.copy_moves
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	dec b
	jr nz, .copy_moves

	push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1
	call GetPartyLocation
	ld d, h
	ld e, l
	ld hl, MON_PP
	add hl, de

	push hl
	ld hl, MON_MOVES
	add hl, de
	pop de

	ld b, NUM_MOVES
.copy_pp
	ld a, [hli]
	and a
	jr z, .copied_pp

	push hl
	push bc
	dec a
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop bc
	pop hl

	ld [de], a
	inc de
	dec b
	jr nz, .copy_pp
.copied_pp

	pop hl
.no_moves

;dvs
	push hl 
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1DVs
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_DVS
	jr z, .no_dvs 
	call GetNextTrainerDataByte 
	ld [de], a
	inc de
	call GetNextTrainerDataByte 
	ld [de], a
	jr .dvs_done
.no_dvs
	push hl
	farcall GetTrainerDVs
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a
	pop hl
.dvs_done

;stat exp
	ld a, [wOtherTrainerType] 
	and TRAINERTYPE_STAT_EXP
	jr z, .no_stat_exp
	
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	
	ld c, NUM_EXP_STATS
.stat_exp_loop
	rept 2
	ld a, [hli]
	ld [de], a
	inc de
endr
.continue_stat_exp
	dec c
	jr nz, .stat_exp_loop	
.no_stat_exp

;Custom stat exp, so recalculate them after TryAddMonToParty
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_STAT_EXP
	jr z, .no_stat_recalc

	push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1MaxHP
	call GetPartyLocation
	ld d, h
	ld e, l

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp - 1
	call GetPartyLocation

; recalculate stats
	ld b, TRUE
	push de
	predef CalcMonStats
	pop hl

; copy max HP to current HP
	inc hl
	ld c, [hl]
	dec hl
	ld b, [hl]
	dec hl
	ld [hl], c
	dec hl
	ld [hl], b

	pop hl
.no_stat_recalc	

;nickname
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_NICKNAME
	jr z, .no_nickname
.loop_nickname
	call GetNextTrainerDataByte
	cp "@"
	ld [de], a
	jr z, .nickname_done
	inc de
	jr .loop_nickname
.no_nickname

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	push de
	call GetPokemonName
	pop de
	push hl
	ld hl, wStringBuffer1
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	pop hl
.nickname_done
	jp .loop

ComputeTrainerReward:
	ld hl, hProduct
	xor a
	ld [hli], a
	ld [hli], a ; hMultiplicand + 0
	ld [hli], a ; hMultiplicand + 1
	ld a, [wEnemyTrainerBaseReward]
	ld [hli], a ; hMultiplicand + 2
	ld a, [wCurPartyLevel]
	ld [hl], a ; hMultiplier
	call Multiply
	ld hl, wBattleReward
	xor a
	ld [hli], a
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	ret

Battle_GetTrainerName::
	ld a, [wInBattleTowerBattle]
	bit 0, a
	ld hl, wOTPlayerName
	ld a, BANK(@)
	ld [wTrainerGroupBank], a
	jp nz, CopyTrainerName

	ld a, [wOtherTrainerID]
	ld b, a
	ld a, [wOtherTrainerClass]
	ld c, a

GetTrainerName::
	ld a, c
	cp CAL
	jr nz, .not_cal2

	ld a, BANK(sMysteryGiftTrainerHouseFlag)
	call OpenSRAM
	ld a, [sMysteryGiftTrainerHouseFlag]
	and a
	call CloseSRAM
	jr z, .not_cal2

	ld a, BANK(sMysteryGiftPartnerName)
	call OpenSRAM
	ld hl, sMysteryGiftPartnerName
	call CopyTrainerName
	jp CloseSRAM

.not_cal2
	dec c
	push bc
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc

.loop
	dec b
	jr z, .done

	ld a, [wTrainerGroupBank]
	call GetFarByte
	add a, l
	ld l, a
	jr nc, .loop
	inc h
	jr .loop

.done
	inc hl
	; fallthrough
	
CopyTrainerName:
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	ld a, [wTrainerGroupBank]
	call FarCopyBytes
	pop de
	ret

IncompleteCopyNameFunction: ; unreferenced
; Copy of CopyTrainerName but without "call CopyBytes"
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	pop de
	ret

GetNextTrainerDataByte:
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	ret

INCLUDE "data/trainers/party_pointers.asm"
