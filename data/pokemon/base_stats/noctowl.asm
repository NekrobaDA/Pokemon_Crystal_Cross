	db 0 ; species ID placeholder

	db 100,  50,  50,  70,  96,  96
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 203 ; base exp
	db LUM_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_VOICE, PSYCHIC_M, AURA_SPHERE, SWIFT, RAIN_DANCE, AEROBLAST, MIMIC, ROOST, TWISTER, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, REFLECT, CURSE, TOXIC, SHADOW_BALL, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, RAZOR_WIND, REST, ATTRACT, THIEF, STEEL_WING, FLY, FLASH
	; end
