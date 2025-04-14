	db 0 ; species ID placeholder

	db  75,  90,  50,  95, 110,  80
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 255 ; base exp
	db BLACKGLASSES, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/houndoom/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, AURA_SPHERE, HYPER_VOICE, MIMIC, SACRED_FIRE, COUNTER, SUBSTITUTE, WILL_O_WISP, DARK_PULSE, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLARBEAM, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, THIEF, STRENGTH, FLAMETHROWER
	; end
