	db 0 ; species ID placeholder

	db  80,  75,  70,  95, 105,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 75 ; catch rate
	db 214 ; base exp
	db LEPPA_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/xatu/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, PAIN_SPLIT, SHADOW_BALL, STEEL_WING, SWIFT, ROOST, RAIN_DANCE, TWISTER, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, DREAM_EATER, REST, ATTRACT, THIEF, FLY, FLASH, THUNDERBOLT
	; end
