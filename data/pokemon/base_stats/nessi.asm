	db 0 ; species ID placeholder

	db 55,  40,  20,  15,  40,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/nessi/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, DIVE, SUBSTITUTE, MIMIC, HAIL, WATER_PULSE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, SURF, WHIRLPOOL, THUNDERBOLT, ICE_BEAM
	; end
