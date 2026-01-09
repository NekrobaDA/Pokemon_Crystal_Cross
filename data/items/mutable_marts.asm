MartGoldenrodMutableTMs1:
	db 5 ; # items
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_ICE_PUNCH,    3000
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_THUNDERPUNCH, 3000
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_FIRE_PUNCH,   3000
	dw wEventFlags + 3
	db 2                ;EVENT_GOT_TM02_HEADBUTT
	dbw TM_HEADBUTT,     2000
	dw wEventFlags + 3
	db 3                ;EVENT_GOT_TM10_HIDDEN_POWER
	dbw TM_HIDDEN_POWER, 3000
	db -1 ; end
	
MartGoldenrodMutableTMs2:
	db 5 ; # items
	dw wEventFlags + 5
	db 0                ;EVENT_GOT_A_POKEMON_FROM_ELM (aka always available)
	dbw TM_AERIAL_ACE,   3000
	dw wEventFlags + 1
	db 1                ;EVENT_GOT_TM49_FURY_CUTTER (U_TURN)
	dbw TM_U_TURN,       3000  ;in practice it's impossible to get here before this anyway
	dw wEventFlags + 1
	db 3                ;EVENT_GOT_TM45_ATTRACT
	dbw TM_ATTRACT,      3000
	dw wEventFlags + 3
	db 4                ;EVENT_GOT_TM47_STEEL_WING
	dbw TM_STEEL_WING,   3000
	dw wEventFlags + 1
	db 6                ;EVENT_GOT_TM16_ICY_WIND (HAIL)
	dbw TM_HAIL,         3000
	db -1 ; end
	
MartCeladonMutableTMs:
	db 5 ; # items
	dw wEventFlags + 4
	db 1                ;EVENT_GOT_TM03_WATER_PULSE
	dbw TM_WATER_PULSE,  3000
	dw wEventFlags + 4
	db 2                ;EVENT_GOT_TM56_CHARGE_BEAM
	dbw TM_CHARGE_BEAM,  3000
	dw wEventFlags + 4
	db 3                ;EVENT_GOT_TM19_GIGA_DRAIN
	dbw TM_GIGA_DRAIN,   3000
	dw wEventFlags + 4
	db 4                ;EVENT_GOT_TM54_POISON_JAB
	dbw TM_POISON_JAB,   3000
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_RAIN_DANCE,   2000
	db -1 ; end

MartSeviiTwoMutableTMs:
	db 5 ; # items
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_CURSE,        2000
	dw wEventFlags + 3
	db 6                ;EVENT_TEAM_ROCKET_BASE_B2F_TM_THIEF
	dbw TM_THIEF,        3000
	dw wEventFlags + 1
	db 2                ;EVENT_GOT_TM01_DYNAMICPUNCH
	dbw TM_DYNAMICPUNCH, 3000
	dw wEventFlags + 1
	db 5                ;EVENT_GOT_TM23_IRON_TAIL
	dbw TM_IRON_TAIL,    3000
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_SANDSTORM,    2000
	db -1 ; end
	
MartIndigoMutableTMs:
	db 5 ; # items
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_TAUNT,        3000
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_REST,         3000
	dw wEventFlags + 5
	db 0                ;(always available)
	dbw TM_SNARL,        3000
	dw wEventFlags + 3
	db 5                ;EVENT_GOT_TM55_SHADOW_CLAW
	dbw TM_SHADOW_CLAW,  3000
	dw wEventFlags + 3
	db 7                ;EVENT_GOT_TM60_TERA_BURST
	dbw TM_TERA_BURST,   2000
	db -1 ; end
