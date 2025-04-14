	db 0 ; species ID placeholder

	db  65,  90,  40,  95,  45,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 199 ; base exp
	db POISON_BARB, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/beedrill/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, THIEF, ROCK_SMASH, FLASH, POISON_JAB, SWORDS_DANCE, SPIKES, SOLARBEAM, MIMIC, SUBSTITUTE, OUTRAGE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, RETURN, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, FURY_CUTTER, CUT
	; end
