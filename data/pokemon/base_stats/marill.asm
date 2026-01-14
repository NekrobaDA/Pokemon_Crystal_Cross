	db 0 ; species ID placeholder

	db  70,  45,  50,  40,  35,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 73 ; base exp
	db RAWST_BERRY, ASPEAR_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/marill/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, DIVE, ROCK_SMASH, STRENGTH, DIG, SWIFT, MEGA_PUNCH, MEGA_KICK, MIMIC, LIGHT_SCREEN, HYPER_VOICE, SUBSTITUTE, HAIL, WATER_PULSE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
