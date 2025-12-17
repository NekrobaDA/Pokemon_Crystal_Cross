GetMoveCategoryName:
; Copy the category name of move b to wStringBuffer1.

;	ld a, b
;	dec a
;	ld bc, MOVE_LENGTH
;	ld hl, Moves + MOVE_TYPE
;	call AddNTimes
;	ld a, BANK(Moves)
;	call GetFarByte

	ld l, b
	ld a, MOVE_TYPE
	call GetMoveAttribute

; Mask out the type
	and ~TYPE_MASK
; Shift the category bits into the range 0-2
	rlc a
	rlc a
	dec a
	
	push af
	ld a, [wBattleMode]
	and a
	ld hl, CategoryNames
	jr z, .notinbattle
	ld hl, CategoryNames2
.notinbattle
	pop af
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wStringBuffer1
	ld bc, MOVE_NAME_LENGTH
	jp CopyBytes

INCLUDE "data/types/category_names.asm"