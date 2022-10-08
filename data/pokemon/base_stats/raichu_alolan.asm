	db 0 ; species ID placeholder

	db  70, 85,  50,  110,  95,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 153 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raichu_alolan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, SEISMIC_TOSS, CHARGE_BEAM, THUNDER_WAVE, MEGA_PUNCH, SUBSTITUTE, CALM_MIND, AURA_SPHERE, LIGHT_SCREEN, REFLECT, PSYCHIC_M, SWIFT, MIMIC, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, THIEF, STRENGTH, FLASH, SURF, THUNDERBOLT
	; end
