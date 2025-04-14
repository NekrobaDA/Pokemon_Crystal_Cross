	db 0 ; species ID placeholder

	db  80, 125,  75,  85,  40,  95
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 250 ; base exp
	db CHESTO_BERRY, BLACKBELT_I ; items
	db GENDER_F50 ; gender ratio
	db 12 ; step cycles to hatch
	INCBIN "gfx/pokemon/heracross/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, DIG, SUBMISSION, BULLDOZE, RAIN_DANCE, HYPER_BEAM, MIMIC, COUNTER, SEISMIC_TOSS, SWORDS_DANCE, SUBSTITUTE, AURA_SPHERE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, EARTHQUAKE, RETURN, DOUBLE_TEAM, SLEEP_TALK, ROCK_SLIDE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
