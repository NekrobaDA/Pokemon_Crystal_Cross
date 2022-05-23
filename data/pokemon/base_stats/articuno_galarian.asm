	db 0 ; species ID placeholder

	db  90,  85, 85,  95,  125, 100
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/articuno/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HYPER_VOICE, ROOST, TWISTER, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, HAIL, SWIFT, MIMIC, CURSE, PSYCHIC_M, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, MUD_SLAP, DOUBLE_TEAM, SHADOW_BALL, SWAGGER, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, NIGHTMARE, STEEL_WING, FLY, ICE_BEAM
	; end
