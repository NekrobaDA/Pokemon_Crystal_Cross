	db 0 ; species ID placeholder

	db 100,  75, 115,  85,  90, 115
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/suicune/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm AEROBLAST, SHADOW_RUSH, SNARL, HEAL_BELL, TWISTER, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, HAIL, WATER_PULSE, ROCK_CLIMB, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, CUT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
