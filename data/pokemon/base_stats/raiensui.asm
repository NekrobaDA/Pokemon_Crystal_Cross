	db 0 ; species ID placeholder

	db 112, 102, 102, 110, 108, 107
	;   hp  atk  def  spd  sat  sdf

	db CURSE_TYPE, CURSE_TYPE ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raiensui/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, VOLT_TACKLE, AEROBLAST, SHADOW_RUSH, WILL_O_WISP, FIRE_BLAST, FLAMETHROWER, AURA_SPHERE, THUNDERBOLT, THUNDER, STRENGTH, THUNDER_WAVE, SNARL, HEAL_BELL, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, WATER_PULSE, ROCK_CLIMB, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, CUT, SURF, WHIRLPOOL, WATERFALL
	; end
