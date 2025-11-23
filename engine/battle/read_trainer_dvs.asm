GetTrainerDVs:
; Return the DVs of wOtherTrainerClass in bc

	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassDVs
	add hl, bc
	add hl, bc

	ld a, [hli]
	ld b, a
	ld c, [hl]

	pop hl
	ret

INCLUDE "data/trainers/dvs.asm"

GetTrainerMonGenders:
; Return the genders of wOtherTrainerClass in a

	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassMonGenders
	add hl, bc
	ld a, [hl]
	pop hl
	ret
	
INCLUDE "data/trainers/mon_genders.asm"
