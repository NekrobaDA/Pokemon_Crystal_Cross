	db 0 ; species ID placeholder

	db  90, 85,  90,  90,  100, 125
	;   hp  atk  def  spd  sat  sdf

	db FIRE, DARK ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/moltres/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, AURA_SPHERE, HYPER_VOICE, SACRED_FIRE, ROAR, ROOST, TWISTER, SUBSTITUTE, WILL_O_WISP, DARK_PULSE, SWIFT, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, DRAGONBREATH, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, RAZOR_WIND, REST, STEEL_WING, THIEF, FLY, FLAMETHROWER
	; end
