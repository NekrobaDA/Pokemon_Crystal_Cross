	db 0 ; species ID placeholder

	db  70,  105,  69,  80,  65,  79
	;   hp  atk  def  spd  sat  sdf

	db POISON, DRAGON ; type
	db 90 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arbok_sevii/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, DARK_PULSE, MIMIC, HEADBUTT, CURSE, DRAGONBREATH, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, STRENGTH
	; end
