	db 0 ; species ID placeholder

	db  90, 110,  80,  95, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 255 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/arcanine/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, THIEF, STRENGTH, SWIFT, AURA_SPHERE, BULLDOZE, SOLARBEAM, VOLT_TACKLE, SNARL, HYPER_VOICE, MIMIC, SUBMISSION, SUBSTITUTE, WILL_O_WISP, ROCK_CLIMB, OUTRAGE, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, DRAGONBREATH, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, FLAMETHROWER, REST, ATTRACT, FLAMETHROWER
	; end
