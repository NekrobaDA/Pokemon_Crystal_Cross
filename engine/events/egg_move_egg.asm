GiveEggMoveEgg:
	; Figure out which egg to give.

	; Compare a random word to
	; probabilities out of 0xffff.
	call Random
	ld hl, BaseStructEggProbabilities
	ld c, 0
	ld b, c

.loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a

	; Break on $ffff.
	ld a, d
	cp HIGH($ffff)
	jr nz, .not_done
	ld a, e
	cp LOW($ffff)
	jr z, .done
.not_done

	; Break when the random word <= the next probability in de.
	ldh a, [hRandomSub]
	cp d
	jr c, .done
	jr z, .ok
	jr .next
.ok
	ldh a, [hRandomAdd]
	cp e
	jr c, .done
	jr z, .done
.next
	inc bc
	jr .loop
.done

	push bc
	ld hl, BaseStructEgg
	ld a, NICKNAMED_MON_STRUCT_LENGTH
	call AddNTimes

	; Writes to wOddEgg, wOddEggName, and wOddEggOTName,
	; even though OddEggs does not have data for wOddEggOTName
	ld de, wOddEgg
	ld bc, NICKNAMED_MON_STRUCT_LENGTH + NAME_LENGTH
	call CopyBytes
	pop bc

; Compare a random word to
	; probabilities out of 0xffff.
	call Random

	call GetWeekday
	cp 0
	jr z, .sundayprob
	cp 1
	jr z, .mondayprob
	cp 2
	jr z, .tuesdayprob
	cp 3
	jr z, .wednesdayprob
	cp 4
	jr z, .thursdayprob
	cp 5
	jr z, .fridayprob
	jr .saturdayprob
	
.sundayprob
	ld hl, EggMoveEggProbabilitiesSunday
	jr .continueprobs

.mondayprob
	ld hl, EggMoveEggProbabilitiesMonday
	jr .continueprobs

.tuesdayprob
	ld hl, EggMoveEggProbabilitiesTuesday
	jr .continueprobs

.wednesdayprob
	ld hl, EggMoveEggProbabilitiesWednesday
	jr .continueprobs

.thursdayprob
	ld hl, EggMoveEggProbabilitiesThursday
	jr .continueprobs

.fridayprob
	ld hl, EggMoveEggProbabilitiesFriday
	jr .continueprobs

.saturdayprob
	ld hl, EggMoveEggProbabilitiesSaturday

.continueprobs	
	ld c, 0
	ld b, c

.loop1
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a

	; Break on $ffff.
	ld a, d
	cp HIGH($ffff)
	jr nz, .not_done1
	ld a, e
	cp LOW($ffff)
	jr z, .done1
.not_done1

	; Break when the random word <= the next probability in de.
	ldh a, [hRandomSub]
	cp d
	jr c, .done1
	jr z, .ok1
	jr .next1
.ok1
	ldh a, [hRandomAdd]
	cp e
	jr c, .done1
	jr z, .done1
.next1
	inc bc
	jr .loop1
.done1

	; Loads the actual species and overwrites the zero in wOddEggSpecies
	call GetWeekday
	cp 0
	jr z, .sundayspecies
	cp 1
	jr z, .mondayspecies
	cp 2
	jr z, .tuesdayspecies
	cp 3
	jr z, .wednesdayspecies
	cp 4
	jr z, .thursdayspecies
	cp 5
	jr z, .fridayspecies
	jr .saturdayspecies
	
.sundayspecies
	ld hl, EggMoveEggSpeciesSunday
	jr .continuespecies

.mondayspecies
	ld hl, EggMoveEggSpeciesMonday
	jr .continuespecies

.tuesdayspecies
	ld hl, EggMoveEggSpeciesTuesday
	jr .continuespecies

.wednesdayspecies
	ld hl, EggMoveEggSpeciesWednesday
	jr .continuespecies

.thursdayspecies
	ld hl, EggMoveEggSpeciesThursday
	jr .continuespecies

.fridayspecies
	ld hl, EggMoveEggSpeciesFriday
	jr .continuespecies

.saturdayspecies
	ld hl, EggMoveEggSpeciesSaturday

.continuespecies
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wOddEggSpecies], a
	
	call GetWeekday
	cp 0
	jr z, .sundayegg
	cp 1
	jr z, .mondayegg
	cp 2
	jr z, .tuesdayegg
	cp 3
	jr z, .wednesdayegg
	cp 4
	jr z, .thursdayegg
	cp 5
	jr z, .fridayegg
	jr .saturdayegg
	
.sundayegg
	ld hl, EggMoveEggsSunday
	jr .continueegg

.mondayegg
	ld hl, EggMoveEggsMonday
	jr .continueegg

.tuesdayegg
	ld hl, EggMoveEggsTuesday
	jr .continueegg

.wednesdayegg
	ld hl, EggMoveEggsWednesday
	jr .continueegg

.thursdayegg
	ld hl, EggMoveEggsThursday
	jr .continueegg

.fridayegg
	ld hl, EggMoveEggsFriday
	jr .continueegg

.saturdayegg
	ld hl, EggMoveEggsSaturday

.continueegg	
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	ld de, wOddEggMoves
	ld bc, NUM_MOVES
	call CopyBytes
	
	; load Odd Egg Name in wTempOddEggNickname
	ld hl, .Odd
	ld de, wTempOddEggNickname
	ld bc, MON_NAME_LENGTH
	call CopyBytes	

	; load species in wMobileMonSpecies
	ld a, EGG
	ld [wMobileMonSpecies], a

	; load pointer to (wMobileMonSpecies - 1) in wMobileMonSpeciesPointer
	ld a, LOW(wMobileMonSpecies - 1)
	ld [wMobileMonSpeciesPointer], a
	ld a, HIGH(wMobileMonSpecies - 1)
	ld [wMobileMonSpeciesPointer + 1], a
	;load pointer to wOddEgg in wMobileMonStructPointer
	ld a, LOW(wOddEgg)
	ld [wMobileMonStructPointer], a
	ld a, HIGH(wOddEgg)
	ld [wMobileMonStructPointer + 1], a

	; load Odd Egg Name in wTempOddEggNickname
	ld hl, .Odd
	ld de, wTempOddEggNickname
	ld bc, MON_NAME_LENGTH
	call CopyBytes

	; load pointer to wTempOddEggNickname in wMobileMonOTNamePointer
	ld a, LOW(wTempOddEggNickname)
	ld [wMobileMonOTNamePointer], a
	ld a, HIGH(wTempOddEggNickname)
	ld [wMobileMonOTNamePointer + 1], a
	; load pointer to wOddEggName in wMobileMonNicknamePointer
	ld a, LOW(wOddEggName)
	ld [wMobileMonNicknamePointer], a
	ld a, HIGH(wOddEggName)
	ld [wMobileMonNicknamePointer + 1], a
	farcall AddMobileMonToParty
	ret

.Odd:
	db "ODD@@@@@@@@@"
	
probegg: MACRO
prob_totalegg = prob_totalegg + (\1)
	dw prob_totalegg * $ffff / 100
ENDM
	
BaseStructEggProbabilities:
prob_totalegg = 0
;male
	probegg 49	
;female
	probegg 49
;shiny male
	probegg 1
;shiny female
	probegg 1

BaseStructEgg:

	db 0 ; base
	db NO_ITEM
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; base
	db NO_ITEM
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; base
	db NO_ITEM
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; base
	db NO_ITEM
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"

INCLUDE "data/events/egg_move_eggs_sunday.asm"
INCLUDE "data/events/egg_move_eggs_monday.asm"
INCLUDE "data/events/egg_move_eggs_tuesday.asm"
INCLUDE "data/events/egg_move_eggs_wednesday.asm"
INCLUDE "data/events/egg_move_eggs_thursday.asm"
INCLUDE "data/events/egg_move_eggs_friday.asm"
INCLUDE "data/events/egg_move_eggs_saturday.asm"