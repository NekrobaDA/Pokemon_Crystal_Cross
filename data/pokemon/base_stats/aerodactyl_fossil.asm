	db 0 ; species ID placeholder

	db  80, 110,  65, 130,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db GHOST, DRAGON ; type
	db 45 ; catch rate
	db 253 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 17 ; step cycles to hatch
	INCBIN "gfx/pokemon/aerodactyl_fossil/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, STRENGTH, ROOST, SWIFT, THIEF, BULLDOZE, TWISTER, NIGHT_SHADE, AEROBLAST, EARTH_POWER, SUBSTITUTE, MIMIC, DRAGON_CLAW, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DRAGON_PULSE, EARTHQUAKE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, RAZOR_WIND, FLAMETHROWER, ROCK_SLIDE, REST, ATTRACT, STEEL_WING, FLY, FLAMETHROWER
	; end
