	db 0 ; species ID placeholder

	db  38,  41,  40,  65,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 190 ; catch rate
	db 79 ; base exp
	db ASPEAR_BERRY, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vulpix_alolan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, PAIN_SPLIT, NIGHT_SHADE, SUBSTITUTE, HAIL, DARK_PULSE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, RAIN_DANCE, ICY_WIND, PROTECT, SHADOW_BALL, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, BLIZZARD, REST, ATTRACT, ICE_BEAM
	; end
