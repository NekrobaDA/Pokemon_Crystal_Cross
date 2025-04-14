	db 0 ; species ID placeholder

	db  86,  86,  60,  88,  105,  100
	;   hp  atk  def  spd  sat  sdf

	db CURSE_TYPE, CURSE_TYPE ; type
	db 45 ; catch rate
	db 115 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 17 ; step cycles to hatch
	INCBIN "gfx/pokemon/chimereon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_VOICE, BULLDOZE, ICY_WIND, HEAL_BELL, VOLT_TACKLE, SACRED_FIRE, SUBMISSION, SPIKES, SUBSTITUTE, THUNDER_WAVE, WATER_PULSE, WILL_O_WISP, AURA_SPHERE, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, ZAP_CANNON, THUNDERBOLT, FLAMETHROWER, ICE_BEAM, SURF, FLASH, WATERFALL
	; end
