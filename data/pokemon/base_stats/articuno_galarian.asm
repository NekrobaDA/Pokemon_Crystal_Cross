	db 0 ; species ID placeholder

	db  90,  85, 85,  95,  125, 100
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/articuno/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm AEROBLAST, SHADOW_RUSH, AURA_SPHERE, HEAL_BELL, HYPER_VOICE, ROAR, ROOST, TWISTER, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, HAIL, SWIFT, MIMIC, CURSE, PSYCHIC_M, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SHADOW_BALL, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, STEEL_WING, FLY, ICE_BEAM
	; end
