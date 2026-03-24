OverlaySpritesDrawtable:
	db BUGSY             ;trainer class
	db 24, 120, $35      ;stage tile coordinate addresses
	db 24, 128, $36      ;y first, then x
	db 24, 136, $37      ;y pos formula = y*8 + 16
	db 32, 120, $38      ;x pos formula = x*8 + 8
	db 32, 136, $39
	db $FF               ;end of list terminator

;	db GRUNTF
;	db 16, 120, $35
;	db 16, 128, $36
;	db 16, 136, $37
;	db 24, 120, $38
;	db 24, 136, $39
;	db 32, 136, $3a
;	db 32, 144, $3b
;	db 40, 120, $3c
;	db 40, 136, $3d
;	db 40, 144, $3e
;	db $FF
	
	db KIMONO_GIRL
	db 32, 120, $35
	db 32, 128, $36
	db 32, 144, $37
	db 40, 120, $38
	db 40, 128, $39
	db 40, 136, $3a
	db 40, 144, $3b
	db 48, 120, $3c
	db 48, 128, $3d
	db 48, 136, $3e
	db 48, 144, $3f
	db 56, 120, $40
	db 56, 128, $41
	db 56, 136, $42
	db 56, 144, $43
	db 64, 120, $44
	db 64, 128, $45
	db 64, 136, $46
	db $FF
	
	db BLUE
	db 16, 120, $35
	db 16, 128, $36
	db 16, 136, $37
	db 24, 120, $38
	db 24, 128, $39
	db 24, 136, $3a
	db $FF
	
	db CLAIR
	db 16, 116, $35
	db 16, 124, $36
	db 16, 132, $37
	db 24, 116, $38
	db 24, 124, $39
	db 24, 132, $3a
	db 24, 140, $3b
	db 32, 116, $3c
	db 32, 132, $3d
	db 40, 116, $3e
	db 40, 124, $3f
	db 40, 132, $40
	db 40, 140, $41
	db 40, 148, $42
	db 48, 116, $43
	db 48, 132, $44
	db 48, 140, $45
	db 48, 148, $46
	db 56, 116, $47
	db 56, 124, $48
	db 56, 132, $49
	db 56, 140, $4a
	db 64, 116, $4b
	db 64, 124, $4c
	db 64, 132, $4d
	db $FF
	
	db -1 ;end
