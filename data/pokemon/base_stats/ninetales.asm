	db 0 ; species ID placeholder

	db  73,  76,  75, 100,  81, 100
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 223 ; base exp
	db RAWST_BERRY, CLEANSE_TAG ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ninetales/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SOLARBEAM, SACRED_FIRE, DREAM_EATER, AURA_SPHERE, SNARL, SWIFT, MIMIC, ENERGY_BALL, SHADOW_RUSH, PAIN_SPLIT, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, WILL_O_WISP, DARK_PULSE, SHADOW_BALL, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER
	; end
