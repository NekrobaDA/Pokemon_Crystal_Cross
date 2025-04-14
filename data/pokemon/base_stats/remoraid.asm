	db 0 ; species ID placeholder

	db  35,  65,  35,  65,  65,  35
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 98 ; base exp
	db NO_ITEM, SILVER_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/remoraid/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, FLASH_CANNON, DIVE, PSYCHIC_M, ZAP_CANNON, SWIFT, ICY_WIND, CHARGE_BEAM, MIMIC, THUNDER_WAVE, SUBSTITUTE, WATER_PULSE, CURSE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, SURF, WHIRLPOOL, FLAMETHROWER, ICE_BEAM
	; end
