	db 0 ; species ID placeholder

	db  80,  92,  73,  80, 110, 90
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/venusaur_clone/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, EARTH_POWER, SELFDESTRUCT, SUBSTITUTE, LIGHT_SCREEN, REFLECT, OUTRAGE, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, EARTHQUAKE, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, FURY_CUTTER, CUT, FLASH
	; end
