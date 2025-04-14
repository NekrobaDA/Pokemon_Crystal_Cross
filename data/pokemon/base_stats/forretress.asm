	db 0 ; species ID placeholder

	db  75,  90, 140,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 148 ; base exp
	db METAL_COAT, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forretress/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWIFT, ROCK_SLIDE, ZAP_CANNON, BULLDOZE, EARTHQUAKE, EARTH_POWER, SPIKES, LIGHT_SCREEN, PAIN_SPLIT, MIMIC, SELFDESTRUCT, COUNTER, SUBSTITUTE, REFLECT, FLASH_CANNON, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, REST, ATTRACT, STRENGTH
	; end
