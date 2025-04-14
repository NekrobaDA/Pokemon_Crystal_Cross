	db 0 ; species ID placeholder

	db  65,  40,  70,  70,  80, 140
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 25 ; catch rate
	db 210 ; base exp
	db MYSTIC_WATER, RAWST_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 12 ; step cycles to hatch
	INCBIN "gfx/pokemon/mantine/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm AEROBLAST, SHADOW_RUSH, DIVE, ROCK_SLIDE, BULLDOZE, MIMIC, HYPER_BEAM, EARTHQUAKE, ROOST, TWISTER, SUBSTITUTE, HAIL, WATER_PULSE, SWIFT, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
