	db 0 ; species ID placeholder

	db  65,  110, 130,  95,  60, 65
	;   hp   atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 247 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/leafeon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, STRENGTH, ROCK_SMASH, ROAR, THIEF, BULLDOZE, EARTH_POWER, SOLARBEAM, HEAL_BELL, HYPER_VOICE, SWORDS_DANCE, SUBSTITUTE, CALM_MIND, AURA_SPHERE, GIGA_DRAIN, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, CUT, FLASH
	; end
