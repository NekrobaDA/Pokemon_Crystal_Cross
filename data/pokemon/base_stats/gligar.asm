	db 0 ; species ID placeholder

	db  65,  75, 105,  85,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 135 ; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, STEEL_WING, RAZOR_WIND, POISON_JAB, SPIKES, BULLDOZE, EARTH_POWER, RAIN_DANCE, NIGHT_SHADE, MIMIC, COUNTER, SWORDS_DANCE, SUBSTITUTE, DARK_PULSE, EARTHQUAKE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
