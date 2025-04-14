	db 0 ; species ID placeholder

	db  38,  41,  40,  65,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 79 ; base exp
	db BURNT_BERRY, CHARCOAL ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, SWIFT, ENERGY_BALL, MIMIC, ROAR, PAIN_SPLIT, NIGHT_SHADE, SUBSTITUTE, WILL_O_WISP, DARK_PULSE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, SHADOW_BALL, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER
	; end
