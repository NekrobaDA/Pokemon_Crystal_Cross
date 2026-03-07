GetSpritePalette:
	ldh a, [rSVBK]
	push af
	
	ld hl, BugsyOverlayPaletteData
	ld a, BANK(wOBPals2)
	ld [rSVBK], a
	ld de, wOBPals2 palette PAL_BATTLE_OB_ENEMY color 1
rept PAL_COLOR_SIZE * 2 - 1
	ld a, [hli]
	ld [de], a
	inc de
endr
	ld a, [hl]
	ld [de], a
;apply the updated colors to the palette RAM
	ld a, $1
	ldh [hCGBPalUpdate], a
;restore the previous WRAM bank
	pop af
	ldh [rSVBK], a
	ret
	
BugsyOverlayPaletteData:
	RGB 20,08,23, 20,08,23       ;second pal currently unused
