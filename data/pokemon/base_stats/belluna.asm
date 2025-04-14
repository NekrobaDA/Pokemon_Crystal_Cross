	db 0 ; species ID placeholder

	db  65,  90,  60,  95,  95,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DARK ; type
	db 90 ; catch rate
	db 185 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/belluna/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, FURY_CUTTER, SWIFT, RAIN_DANCE, SNARL, HEAL_BELL, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, DARK_PULSE, MIMIC, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, ICY_WIND, PROTECT, THUNDERBOLT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, CUT, THUNDERBOLT
	; end
