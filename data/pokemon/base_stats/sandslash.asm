	db 0 ; species ID placeholder

	db  75, 100, 110,  65,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 204 ; base exp
	db SOFT_SAND, RAZOR_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sandslash/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, AURA_SPHERE, POISON_JAB, SUBMISSION, BULLDOZE, SEISMIC_TOSS, MIMIC, EARTH_POWER, COUNTER, SWORDS_DANCE, SUBSTITUTE, ROCK_CLIMB, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
