	db 0 ; species ID placeholder

	db  60, 85, 110,  55,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 155 ; base exp
	db NO_ITEM, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/marowak_alolan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm OUTRAGE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, RAIN_DANCE, SHADOW_BALL, HYPER_BEAM, ICY_WIND, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, BLIZZARD, THUNDER, THUNDERPUNCH, ROCK_SLIDE, DREAM_EATER, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLAMETHROWER, ICE_BEAM, THUNDERBOLT
	; end
