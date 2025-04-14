	db 0 ; species ID placeholder

	db  65,  60,  70,  40,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 163 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/porygon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, SHADOW_BALL, SOLARBEAM, PAIN_SPLIT, THUNDER_WAVE, SUBSTITUTE, REFLECT, SWIFT, MIMIC, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, THIEF, FLASH, THUNDERBOLT, ICE_BEAM
	; end
