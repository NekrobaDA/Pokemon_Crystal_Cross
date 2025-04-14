	db 0

	db  75,  80,  85,  50,  90, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/bellossom/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm MIMIC, PROTECT, SLUDGE_BOMB, SWORDS_DANCE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ENERGY_BALL, HYPER_BEAM, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, SUBSTITUTE, SHADOW_RUSH, HEAL_BELL, REST, ATTRACT, CUT, FLASH
	; end
