	db 0 ; species ID placeholder

	db  73,  67,  75, 100,  81, 109
	;   hp  atk  def  spd  sat  sdf

	db ICE, GHOST ; type
	db 75 ; catch rate
	db 223 ; base exp
	db ASPEAR_BERRY, CLEANSE_TAG ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ninetales_alolan/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, DREAM_EATER, SWIFT, SOLARBEAM, MIMIC, LIGHT_SCREEN, REFLECT, PAIN_SPLIT, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, HAIL, DARK_PULSE, SHADOW_BALL, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, RAIN_DANCE, HYPER_BEAM, ICY_WIND, PROTECT, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, BLIZZARD, REST, ATTRACT, ICE_BEAM
	; end
