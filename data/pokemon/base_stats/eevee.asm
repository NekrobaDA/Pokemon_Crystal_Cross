	db 0 ; species ID placeholder

	db  55,  55,  50,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 115 ; base exp
	db NO_ITEM, GOLD_LEAF ; items
	db GENDER_F12_5 ; gender ratio
	db 17 ; step cycles to hatch
	INCBIN "gfx/pokemon/eevee/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, HYPER_VOICE, SUBSTITUTE, AURA_SPHERE, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT
	; end
