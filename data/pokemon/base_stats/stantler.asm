	db 0 ; species ID placeholder

	db  73,  95,  62,  85,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 207 ; base exp
	db CHESTO_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/stantler/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, SHADOW_BALL, BULLDOZE, THUNDER, EARTH_POWER, THUNDERBOLT, IRON_TAIL, SOLARBEAM, CALM_MIND, ENERGY_BALL, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, FLASH
	; end
