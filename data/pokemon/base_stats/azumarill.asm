	db 0 ; species ID placeholder

	db 100,  90,  80,  60,  50,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 192 ; base exp
	db RAWST_BERRY, ASPEAR_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/azumarill/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_VOICE, DIVE, DIG, SWIFT, MEGA_KICK, BULLDOZE, SUBMISSION, SEISMIC_TOSS, MIMIC, MEGA_PUNCH, SUBSTITUTE, AURA_SPHERE, LIGHT_SCREEN, HAIL, WATER_PULSE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
