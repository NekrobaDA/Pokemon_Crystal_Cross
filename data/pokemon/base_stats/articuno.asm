	db 0 ; species ID placeholder

	db  90,  85, 100,  85,  95, 125
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/articuno/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm AEROBLAST, SHADOW_RUSH, AURA_SPHERE, HEAL_BELL, ROOST, TWISTER, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HAIL, WATER_PULSE, SWIFT, MIMIC, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, STEEL_WING, FLY, ICE_BEAM
	; end
