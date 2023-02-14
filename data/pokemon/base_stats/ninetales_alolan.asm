	db 0 ; species ID placeholder

	db  73,  67,  75, 100,  81, 109
	;   hp  atk  def  spd  sat  sdf

	db ICE, GHOST ; type
	db 75 ; catch rate
	db 223 ; base exp
	db ASPEAR_BERRY, CLEANSE_TAG ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ninetales_alolan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, PAIN_SPLIT, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, HAIL, DARK_PULSE, SHADOW_BALL, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, RAIN_DANCE, HYPER_BEAM, ICY_WIND, PROTECT, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, BLIZZARD, REST, ATTRACT, ICE_BEAM
	; end
