	db 0 ; species ID placeholder

	db  65,  80, 140,  70,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 12 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, ROOST, TWISTER, COUNTER, SWORDS_DANCE, SUBSTITUTE, FLASH_CANNON, DARK_PULSE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, RAZOR_WIND, ROCK_SLIDE, REST, ATTRACT, THIEF, STEEL_WING, CUT, FLY
	; end
