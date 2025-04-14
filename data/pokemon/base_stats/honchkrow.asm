	db 0 ; species ID placeholder

	db  100,  125,  52,  71,  105,  52
	;   hp    atk   def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 134 ; base exp
	db SHARP_BEAK, GOLD_LEAF ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/honchkrow/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, THUNDER_WAVE, PSYCHIC_M, RAIN_DANCE, SUBMISSION, AEROBLAST, SNARL, ROOST, TWISTER, MIMIC, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, WILL_O_WISP, DARK_PULSE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, DREAM_EATER, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
