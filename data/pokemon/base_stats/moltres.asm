	db 0 ; species ID placeholder

	db  90, 100,  90,  90, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 25 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/moltres/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, AURA_SPHERE, ROOST, TWISTER, SUBSTITUTE, WILL_O_WISP, SWIFT, MIMIC, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SOLARBEAM, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, RAZOR_WIND, REST, STEEL_WING, FLY, FLAMETHROWER
	; end
