	db 0 ; species ID placeholder

	db  80, 102,  65,  78,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 212 ; base exp
	db MYSTIC_WATER, GOLD_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/seaking/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, FURY_CUTTER, DIVE, WHIRLPOOL, THIEF, SWORDS_DANCE, AURA_SPHERE, POISON_JAB, SWIFT, BULLDOZE, SUBSTITUTE, HAIL, MIMIC, WATER_PULSE, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, WATERFALL, ICE_BEAM
	; end
