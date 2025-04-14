	db 0 ; species ID placeholder

	db  80,  82, 100,  80,  83, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DRAGON ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/meganium/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm FURY_CUTTER, SHADOW_RUSH, ROCK_CLIMB, DRAGONBREATH, BULLDOZE, ENERGY_BALL, MIMIC, EARTH_POWER, COUNTER, SWORDS_DANCE, SUBSTITUTE, AURA_SPHERE, LIGHT_SCREEN, REFLECT, OUTRAGE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, IRON_TAIL, EARTHQUAKE, RETURN, DOUBLE_TEAM, SLEEP_TALK, ROCK_SLIDE, REST, ATTRACT, FURY_CUTTER, CUT, STRENGTH, FLASH
	; end
