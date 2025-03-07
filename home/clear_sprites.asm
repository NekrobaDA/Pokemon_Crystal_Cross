ClearSprites::
; Erase OAM data
	ld hl, wVirtualOAM
	ld b, wVirtualOAMEnd - wVirtualOAM
	xor a
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

HideSprites::
; Set all OAM y-positions to 160 to hide them offscreen
	ld hl, wVirtualOAMSprite00YCoord
	ld de, SPRITEOAMSTRUCT_LENGTH
	ld b, NUM_SPRITE_OAM_STRUCTS
	ld a, SCREEN_WIDTH_PX
.loop
	ld [hl], a ; y
	add hl, de
	dec b
	jr nz, .loop
	ret

CompleteDex::
	ld a, $FF
	; Set all species as seen and caught
    ld hl, wPokedexSeen
    ld bc, wEndPokedexSeen - wPokedexSeen - 1
    call ByteFill
    ld hl, wPokedexCaught
    ld bc, wEndPokedexCaught - wPokedexCaught - 1
    call ByteFill
    ld a, $ff >> (8 - NUM_POKEMON % 8)  ; Except the last one, to avoid wrapping.
    ld [wEndPokedexSeen - 1], a
    ld [wEndPokedexCaught - 1], a
	