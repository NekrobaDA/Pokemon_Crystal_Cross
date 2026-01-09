	db 0 ; species ID placeholder

	db  60,  75,  45,  55,  65,  50
	;   hp  atk  def  spd  sat  sdf

	db FIRE, ROCK ; type
	db 190 ; catch rate
	db 114 ; base exp
	db BURNT_BERRY, CHARCOAL ; items
	db GENDER_F25 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/growlithe_hisuian/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, OUTRAGE, STRENGTH, THIEF, SNARL, SUBSTITUTE, WILL_O_WISP, MIMIC, ROCK_SLIDE, SWIFT, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER
	; end
