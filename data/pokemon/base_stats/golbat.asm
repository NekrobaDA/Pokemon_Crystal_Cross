	db 0 ; species ID placeholder

	db  75,  80,  70,  90,  65,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 214 ; base exp
	db CHESTO_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/golbat/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, SHADOW_BALL, SLUDGE_BOMB, SWIFT, TWISTER, RAIN_DANCE, NIGHT_SHADE, SUBSTITUTE, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, RETURN, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
