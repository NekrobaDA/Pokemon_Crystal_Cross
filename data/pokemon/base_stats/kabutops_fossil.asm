	db 0 ; species ID placeholder

	db  60, 115, 105,  80,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db GHOST, WATER ; type
	db 45 ; catch rate
	db 252 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/kabutops_fossil/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, DIG, SUBMISSION, WATERFALL, SEISMIC_TOSS, MIMIC, NIGHT_SHADE, EARTH_POWER, SWORDS_DANCE, MEGA_KICK, SUBSTITUTE, HAIL, WATER_PULSE, ROCK_CLIMB, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, SURF, WHIRLPOOL, ICE_BEAM
	; end
