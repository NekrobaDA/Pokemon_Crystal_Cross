	db 0 ; species ID placeholder

	db  65, 100,  70, 105,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 240 ; base exp
	db RAWST_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/rapidash/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SOLARBEAM, SACRED_FIRE, STRENGTH, POISON_JAB, SWIFT, SHADOW_RUSH, VOLT_TACKLE, MIMIC, SWORDS_DANCE, MEGA_KICK, SUBSTITUTE, WILL_O_WISP, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER
	; end
