CopyName1::
; Copies the name from de to wStringBuffer2
	ld hl, wStringBuffer2

CopyName2::
; Copies the name from de to hl
.loop
	ld a, [de]
	inc de
	ld [hli], a
	cp "@"
	jr nz, .loop
	ret
	
CompareMove::
	; checks if the move ID in a matches the move in bc
	push hl
	call GetMoveIndexFromID
	ld a, h
	cp b
	ld a, l
	pop hl
	ret nz
	cp c
	ret

CheckMoveInList::
	; checks if the move ID in a belongs to a list of moves in hl
	push bc
	push de
	push hl
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	pop hl
	ld de, 2
	call IsInHalfwordArray
	pop de
	pop bc
	ret

TruncateHL_BC::
.loop
; Truncate 16-bit values hl and bc to 8-bit values b and c respectively.
; b = hl, c = bc

	ld a, h
	or b
	jr z, .finish

	srl b
	rr c
	srl b
	rr c

	ld a, c
	or b
	jr nz, .done_bc
	inc c

.done_bc
	srl h
	rr l
	srl h
	rr l

	ld a, l
	or h
	jr nz, .finish
	inc l
.finish
; If we go back to the loop point,
; it's the same as doing this exact
; same check twice.
	ld a, h
	or b
	jr nz, .loop

	ld b, l
	ret
	
CopyStringWithTerminator::
	; in: hl = source, de = destination, c = length (non-zero)
	; out: clobbers all but b
	dec c
.copy_loop
	ld a, [hli]
	ld [de], a
	inc de
	cp "@"
	jr z, .clear_loop
	dec c
	jr nz, .copy_loop
	ld a, "@"
	ld [de], a
	ret

.clear_loop
	ld [de], a
	inc de
	dec c
	jr nz, .clear_loop
	ret
