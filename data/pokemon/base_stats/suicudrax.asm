	db 0 ; species ID placeholder

	db  99,  83,  91, 109, 125, 83
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/suicudrax/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FIRE_BLAST, HYPER_VOICE, STRENGTH, DRAGON_CLAW, DRAGONBREATH, OUTRAGE, FLAMETHROWER, AEROBLAST, SHADOW_RUSH, SNARL, TWISTER, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, WATER_PULSE, ROCK_CLIMB, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, RAZOR_WIND, REST, CUT, SURF, WHIRLPOOL, WATERFALL
	; end
