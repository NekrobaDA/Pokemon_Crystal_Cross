	db 0 ; species ID placeholder

	db  58,  74,  48,  80,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, DARK ; type
	db 45 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/charmeleon_clone/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROCK_SLIDE, OUTRAGE, SWIFT, THUNDERPUNCH, MEGA_PUNCH, MEGA_KICK, SWORDS_DANCE, SUBMISSION, COUNTER, SEISMIC_TOSS, MIMIC, SUBSTITUTE, WILL_O_WISP, DRAGON_CLAW, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, DRAGON_PULSE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, FLAMETHROWER, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER
	; end
