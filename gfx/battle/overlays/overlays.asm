TrainerOverlayGFX:
	db BUGSY
	dw BugsyOverlayGFX
	db 5
	
;	db GRUNTF                ;decided going to replace with a dedicated cassidy sprite
;	dw GruntFOverlayGFX      ;and a new design for grunt f
;	db 10
	
	db KIMONO_GIRL
	dw KimonoGirlOverlayGFX
	db 18
	
	db -1 ;end

BugsyOverlayGFX:
INCBIN "gfx/battle/overlays/bugsy.2bpp"

;GruntFOverlayGFX:
;INCBIN "gfx/battle/overlays/cassidy.2bpp"  ;this is basically Cassidy tbh

KimonoGirlOverlayGFX:
INCBIN "gfx/battle/overlays/kimono.2bpp"
