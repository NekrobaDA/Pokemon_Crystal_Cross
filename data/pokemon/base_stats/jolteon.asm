	db 0 ; species ID placeholder

	db  65,  65,  60, 130, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 247 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/jolteon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, ROCK_SMASH, STRENGTH, THIEF, FLASH_CANNON, CHARGE_BEAM, SPIKES, SNARL, HEAL_BELL, HYPER_VOICE, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, AURA_SPHERE, LIGHT_SCREEN, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FLASH, THUNDERBOLT
	; end
