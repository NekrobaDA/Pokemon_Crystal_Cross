	db 0 ; species ID placeholder

	db  40,  65,  40,  70,  65,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DARK ; type
	db 255 ; catch rate
	db 87 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rinrin/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, MIMIC, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, CUT, THUNDERBOLT
	; end
