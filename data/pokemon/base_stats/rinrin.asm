	db 0 ; species ID placeholder

	db  40,  65,  40,  70,  65,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DARK ; type
	db 255 ; catch rate
	db 87 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/rinrin/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, SWIFT, RAIN_DANCE, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, CUT, THUNDERBOLT
	; end
