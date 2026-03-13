OverlaySpritesDrawtable:
	db BUGSY             ;trainer class
	db 24, 120, $35      ;stage tile coordinate addresses
	db 24, 128, $36      ;y first, then x
	db 24, 136, $37      ;y pos formula = y*8 + 16
	db 32, 120, $38      ;x pos formula = x*8 + 8
	db 32, 136, $39
	db $FF              ;end of list terminator

	db -1 ;end
