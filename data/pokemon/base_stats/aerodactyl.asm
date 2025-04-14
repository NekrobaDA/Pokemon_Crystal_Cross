	db 0 ; species ID placeholder

	db  80, 110,  65, 130,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db ROCK, DRAGON ; type
	db 45 ; catch rate
	db 253 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 17 ; step cycles to hatch
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, STRENGTH, SWIFT, THIEF, BULLDOZE, TWISTER, AEROBLAST, SUNNY_DAY, EARTH_POWER, MIMIC, SUBSTITUTE, DRAGON_CLAW, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, RAZOR_WIND, FLAMETHROWER, ROCK_SLIDE, REST, ATTRACT, STEEL_WING, FLY, FLAMETHROWER
	; end
