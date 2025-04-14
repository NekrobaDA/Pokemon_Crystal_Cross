	db 0 ; species ID placeholder

	db  55,  55,  30,  90,  50,  40
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp
	db ORAN_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/pikachu/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, ROCK_SMASH, DIG, MEGA_PUNCH, MEGA_KICK, COUNTER, SEISMIC_TOSS, CHARGE_BEAM, SUBMISSION, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, STRENGTH, FLASH, THUNDERBOLT, SURF, SWIFT, MIMIC
	; end
