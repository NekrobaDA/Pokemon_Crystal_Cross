	db RAIKOU ; 243

	db  90,  85,  75, 115, 115, 100
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raikou/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, CUT, STRENGTH, FLASH, THUNDERBOLT
	; end