	db 0 ; species ID placeholder

	db  70,  120,  65, 125,  65,  85
	;   hp   atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 60 ; catch rate
	db 165 ; base exp
	db NO_ITEM, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/weavile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, REFLECT, SNARL, SUBMISSION, NIGHT_SHADE, COUNTER, SWORDS_DANCE, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, CALM_MIND, HAIL, DARK_PULSE, DRAGON_CLAW, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, RAZOR_WIND, DREAM_EATER, REST, ATTRACT, THIEF, FURY_CUTTER, NIGHTMARE, CUT, SURF, STRENGTH, ICE_BEAM
	; end
