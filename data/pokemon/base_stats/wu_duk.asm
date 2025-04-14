	db 0 ; species ID placeholder

	db  75, 105,  70,  80,  58,  70
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 45 ; catch rate
	db 118 ; base exp
	db NO_ITEM, STICK ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/wu_duk/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, SWIFT, FURY_CUTTER, AURA_SPHERE, POISON_JAB, TWISTER, HYPER_BEAM, MIMIC, COUNTER, SWORDS_DANCE, SUBSTITUTE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, REST, ATTRACT, THIEF, STEEL_WING, ROCK_SMASH, CUT, STRENGTH, FLY
	; end
