	db 0 ; species ID placeholder

	db  70,  65,  60,  85,  55, 110
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 90 ; catch rate
	db 168 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/ledian/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, MEGA_PUNCH, ROCK_SMASH, STRENGTH, SWORDS_DANCE, ROOST, MIMIC, COUNTER, SUBSTITUTE, AURA_SPHERE, LIGHT_SCREEN, REFLECT, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, THIEF, FLASH
	; end
