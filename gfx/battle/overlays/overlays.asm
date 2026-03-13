TrainerOverlayGFX:
	db BUGSY
	dw BugsyOverlayGFX
	db 5
	
	db -1 ;end

BugsyOverlayGFX:
INCBIN "gfx/battle/overlays/bugsy.2bpp"
