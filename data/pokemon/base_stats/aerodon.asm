	db 0 ; species ID placeholder

	db  45, 60,  35,  70,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db ROCK, DRAGON ; type
	db 45 ; catch rate
	db 253 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 17 ; step cycles to hatch
	INCBIN "gfx/pokemon/aerodon/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWIFT, TWISTER, SUNNY_DAY, EARTH_POWER, MIMIC, SUBSTITUTE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, RAZOR_WIND, FLAMETHROWER, ROCK_SLIDE, REST, ATTRACT, FLAMETHROWER
	; end
