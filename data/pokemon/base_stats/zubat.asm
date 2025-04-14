	db 0 ; species ID placeholder

	db  40,  45,  35,  55,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 68 ; base exp
	db NO_ITEM, CHESTO_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 7 ; step cycles to hatch
	INCBIN "gfx/pokemon/zubat/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, SWIFT, SHADOW_BALL, TWISTER, RAIN_DANCE, MIMIC, NIGHT_SHADE, SUBSTITUTE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, STEEL_WING
	; end
