	db 0 ; species ID placeholder

	db  85,  50,  95,  80, 120, 115
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 143 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/togekiss/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND, SHADOW_RUSH, AURA_SPHERE, HEAL_BELL, COUNTER, HYPER_VOICE, ROOST, TWISTER, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, WATER_PULSE, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, STEEL_WING, FLY, FLASH, FLAMETHROWER
	; end
