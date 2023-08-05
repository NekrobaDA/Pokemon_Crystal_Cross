	db 0 ; species ID placeholder

	db  33, 136,  0,  29,  23,  6
	;   hp  atk  def  spd  sat  sdf

	db BIRD, NORMAL ; type
	db 45 ; catch rate
	db 82 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/missingno/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND, SWORDS_DANCE, TOXIC, ICE_BEAM, BLIZZARD, MEGA_PUNCH, MEGA_KICK, SUBMISSION, SEISMIC_TOSS, THUNDER, EARTHQUAKE, PSYCHIC_M, REST, THUNDER_WAVE, SUBSTITUTE, CUT, FLY
	; end
