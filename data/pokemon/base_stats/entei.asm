	db 0 ; species ID placeholder

	db 115, 115,  85, 100,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/entei/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, SHADOW_BALL, AURA_SPHERE, BULLDOZE, SNARL, SUBSTITUTE, CALM_MIND, WILL_O_WISP, LIGHT_SCREEN, REFLECT, ROCK_CLIMB, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, ROCK_SLIDE, REST, CUT, STRENGTH, FLASH, FLAMETHROWER
	; end
