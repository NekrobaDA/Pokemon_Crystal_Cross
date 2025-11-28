	db 0 ; species ID placeholder

	db 109,  76,  75,  75,  75,  80
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 229 ; base exp
	db NEVERMELTICE, LUCKY_EGG ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/haulibird/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_BEAM, SEISMIC_TOSS, ICE_PUNCH, STEEL_WING, ROOST, SWIFT, MEGA_PUNCH, MEGA_KICK, SPIKES, COUNTER, SUBSTITUTE, HAIL, MIMIC, WATER_PULSE, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, FLY, ICE_BEAM
	; end
