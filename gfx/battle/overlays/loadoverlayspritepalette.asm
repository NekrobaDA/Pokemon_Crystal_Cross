;lol this code is actually totally pointless right now, and not inc'd
LoadOverlaySpritePalette:
	ld hl, wVirtualOAMSprite00             ;iterate through sprites in OAM, searching for
	ld b, 40                               ;any in a given XY region to recolor

.loop
	ld a, [hl]           ;load y into hl
;	cp 16                ;search between Y 0 and Y 6 (y= a*8 + 16)
;	jr c, .skip          ;if less than, skip. Though this seems redundant since y=0
	cp 64                ;if Y is greater than 6, check next OAM entry
	jr nc, .skip         ;else check X region

	inc hl               ;inc to X coord
	ld a, [hl]
	cp 104               ;search between X 12 and X 18 (yx a*8 + 8)
	jr c, .skip2         ;if less than 12, skip
	cp 152               ;or, if greater than 18, skip
	jr nc, .skip2        ;else, we have found a sprite to recolor

	inc hl               ;x coor -> tile id
	inc hl               ;tile id -> attributes (skipping tile id)

	ld a, [hl]
	and %11111000              ;mask out palette bits (bits 0-2), then or with new palette
	or PAL_BATTLE_OB_ENEMY     ;temporary, need to load per trainer pal into an OBJ pal
	ld [hl], a                 ;load back into struct
	jr .next

.skip
	inc hl               ;y coor -> x coor
.skip2
	inc hl               ;x coor -> tile id
	inc hl               ;tile id -> attributes

.next
	inc hl               ;inc to next object
	dec b                ;dec objects remaining- in practice, can probably reduce number from 40
	jr nz, .loop         ;to something more realistic like 20. Will never use all 40 objects
	ret
