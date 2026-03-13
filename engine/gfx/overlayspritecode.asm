;draw sprites to battle screen function
ProtoDrawOverlaySpriteDetail:
	ld a, [wTrainerClass]                  ;temporary, since only bugsy is being tested rn
	cp BUGSY                               ;will need a pointer table for which gfx to load
	ret nz

	call LoadOverlaySpriteGFX
	call StageOverlaySpriteData
	ret

;load overlay sprites into vram
LoadOverlaySpriteGFX:
	ld de, BugsyOverlayGFX                 ;load after party ball tiles
	ld hl, vTiles0 tile $35                ;figure out how to adjust for varible sizes
	lb bc, BANK(LoadOverlaySpriteGFX), 5   ;likely have a file defining how large each 
	call Get2bppViaHDMA                    ;trainer overlay is, and load into 'a' (?)
	ret

INCLUDE "gfx/battle/overlays/overlays.asm"             ;overlay gfx

StageOverlaySpriteData:
	ld a, [wTrainerClass]                  ;store trainer class for lookup
	ld b, a
	ld hl, OverlaySpritesDrawtable         ;change to load matching trainer (eventually)
	ld de, wVirtualOAMSprite12

.trainerlookuploop
	ld a, [hli]          ;trainer class -> first table entry
	cp -1
	ret z                ;end if table ends (just a safeguard)
	
	cp b                 ;if trainer class matches, proceed to
	jr z, .loadloop      ;the object load/placement loop

.skiptonextloop          ;if not, advance the table to the next trainer entry
	ld a, [hli]          ;(eventually) ff -> next trainer class
	cp $FF               ;return to trainer lookup
	jr z, .trainerlookuploop
	jr .skiptonextloop   ;I don't know if this is really a good way of doing this overall
	                     ;it might be slow the more that is added
.loadloop
	ld a, [hl]           ;start at entry 1, coor y
	cp $FF               ;if FF, end
	ret z
	
	ld [de], a           ;load y coor into de
	inc hl               ;y coor -> x coor
	inc de               ;y coor -> x coor
	
	ld a, [hl]           ;x coor
	ld [de], a           ;load x coor into de
	inc hl               ;x coor -> tile id
	inc de               ;x coor -> tile id
	
	ld a, [hl]           ;tile id
	ld [de], a           ;load tile id into de
	inc hl               ;tile id -> next entry
	inc de               ;tile id -> attributes
	ld a, 0
	ld [de], a           ;no flip, priority, etc. pal data will be written later
	inc de               ;attributes -> next entry
	jr .loadloop
	ret

INCLUDE "gfx/battle/overlays/overlay_spritedata.asm"   ;overlay placement data

;pals are currently handled by overlay_pals.asm in color.asm & loaded in cgb_layouts.asm
