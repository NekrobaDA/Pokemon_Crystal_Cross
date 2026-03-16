TrainerOverlayPals:
	db BUGSY
	db $FE   ;use same pal for all instances of this trainer
	RGB 20,08,23, 20,08,23 ;second currently unused
	db $FF

	db KIMONO_GIRL
	db SAYO   ;green (espeon)
	RGB 18,24,08, 06,21,03
	db KUNI   ;blue  (vaporeon)
	RGB 17,20,26, 10,09,31
	db MIKI   ;green (jolteon)
	RGB 18,24,08, 06,21,03
	db NAOKO  ;red   (flareon)
	RGB 26,21,12, 29,06,04
	db ZUKI   ;blue  (umbreon)
	RGB 17,20,26, 10,09,31
	db $FF

;	db GRUNTF
;	RGB 31,18,06, 20,06,08 ;second basically unused	
	
	db -1 ;end
