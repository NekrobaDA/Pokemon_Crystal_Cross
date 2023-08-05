	db 0 ; species ID placeholder

	db  60, 110, 80,  45,  80,  50
	;   hp  atk  def  spd  sat  sdf

	db GHOST, CURSE_TYPE ; type
	db 45 ; catch rate
	db 249 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/omastar_fossil/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, ICE_BEAM, SHADOW_RUSH, PAIN_SPLIT, THUNDER_WAVE, NIGHT_SHADE, SELFDESTRUCT, MEGA_PUNCH, SUBSTITUTE, WILL_O_WISP, DARK_PULSE, MIMIC, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDER, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, DREAM_EATER, THIEF, NIGHTMARE, ICY_WIND, FLY
	; end
