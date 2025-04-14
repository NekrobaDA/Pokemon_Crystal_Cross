	db 0 ; species ID placeholder

	db  75,  95, 125,  85,  45,  75
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 135 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/gliscor/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, STEEL_WING, POISON_JAB, SPIKES, BULLDOZE, EARTH_POWER, GIGA_DRAIN, RAIN_DANCE, MIMIC, NIGHT_SHADE, COUNTER, SWORDS_DANCE, SUBSTITUTE, DARK_PULSE, RAZOR_WIND, EARTHQUAKE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
