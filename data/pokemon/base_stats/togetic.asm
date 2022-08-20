	db 0 ; species ID placeholder

	db  55,  40,  85,  40,  80, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 143 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/togetic/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, HYPER_VOICE, ROOST, TWISTER, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, WATER_PULSE, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, STEEL_WING, FLY, FLASH, FLAMETHROWER
	; end
