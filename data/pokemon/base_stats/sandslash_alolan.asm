	db 0 ; species ID placeholder

	db  75, 100, 120,  65,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 90 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandslash_alolan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, SUBMISSION, COUNTER, SWORDS_DANCE, SUBSTITUTE, HAIL, FLASH_CANNON, DRAGON_CLAW, ICE_PUNCH, ICY_WIND, BLIZZARD, ROCK_CLIMB, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
