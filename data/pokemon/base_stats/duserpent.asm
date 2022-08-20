	db 0 ; species ID placeholder

	db 100,  80,  70,  85,  95,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DRAGON ; type
	db 190 ; catch rate
	db 94 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/duserpent/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, PAIN_SPLIT, ROOST, TWISTER, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, WATER_PULSE, ICE_BEAM, DRAGONBREATH, RAZOR_WIND, SWIFT, MIMIC, OUTRAGE, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, STEEL_WING, NIGHTMARE, STRENGTH, FLY, FLAMETHROWER, THUNDERBOLT
	; end
