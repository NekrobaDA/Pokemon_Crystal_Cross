	db 0 ; species ID placeholder

	db  75, 100, 120,  65,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 90 ; catch rate
	db 204 ; base exp
	db NEVERMELTICE, RAZOR_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sandslash_alolan/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, ROCK_SLIDE, AURA_SPHERE, POISON_JAB, BULLDOZE, SEISMIC_TOSS, SUBMISSION, COUNTER, MIMIC, SWORDS_DANCE, SUBSTITUTE, HAIL, FLASH_CANNON, ICE_PUNCH, ICY_WIND, BLIZZARD, ROCK_CLIMB, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
