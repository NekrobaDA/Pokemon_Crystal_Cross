	db 0 ; species ID placeholder

	db  65, 130,  60,  65,  95, 110
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 248 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/flareon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, ROCK_SMASH, STRENGTH, WILL_O_WISP, SLUDGE_BOMB, THIEF, BULLDOZE, SOLARBEAM, SNARL, HEAL_BELL, HYPER_VOICE, SUBMISSION, SUBSTITUTE, CALM_MIND, AURA_SPHERE, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER
	; end
