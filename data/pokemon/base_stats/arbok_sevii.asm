	db 0 ; species ID placeholder

	db  70,  95,  89,  80,  75,  79
	;   hp  atk  def  spd  sat  sdf

	db POISON, DRAGON ; type
	db 90 ; catch rate
	db 184 ; base exp
	db DRAGON_FANG, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/arbok_sevii/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, ROCK_SLIDE, FLAMETHROWER, POISON_JAB, BULLDOZE, NIGHT_SHADE, IRON_TAIL, SNARL, RAIN_DANCE, DARK_PULSE, MIMIC, HEADBUTT, CURSE, DRAGON_PULSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, STRENGTH
	; end
