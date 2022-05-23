	db 0 ; species ID placeholder

	db  65,  90,  60,  95,  95,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DARK ; type
	db 90 ; catch rate
	db 185 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/belluna/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEAL_BELL, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, DARK_PULSE, MIMIC, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, ICY_WIND, PROTECT, THUNDERBOLT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, PSYCHIC_M, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, CUT, THUNDERBOLT
	; end
