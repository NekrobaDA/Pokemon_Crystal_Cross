	db 0 ; species ID placeholder

	db  52,  75,  55,  60,  58,  62
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 118 ; base exp
	db STICK, STICK ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/farfetch_d/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROCK_SMASH, SHADOW_RUSH, FURY_CUTTER, AURA_SPHERE, POISON_JAB, SWIFT, ROOST, TWISTER, COUNTER, SWORDS_DANCE, MIMIC, SUBSTITUTE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, REST, ATTRACT, THIEF, STEEL_WING, CUT, FLY
	; end
