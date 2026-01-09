	db 0 ; species ID placeholder

	db  99,  83,  91, 109, 125, 83
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/suicudrax/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FIRE_BLAST, HYPER_VOICE, SHADOW_BALL, BULLDOZE, STRENGTH, DRAGON_CLAW, DRAGON_PULSE, OUTRAGE, FLAMETHROWER, AEROBLAST, SHADOW_RUSH, SNARL, TWISTER, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, WATER_PULSE, ROCK_CLIMB, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, REST, CUT, SURF, WHIRLPOOL, WATERFALL
	; end
