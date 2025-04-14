; Characteristics of each move.

;move: MACRO
;	db \1 ; animation
;	db \2 ; effect
;	db \3 ; power
;	db \4 | \5 ; type
;	db \6 percent ; accuracy
;	db \7 ; pp
;	db \8 percent ; effect chance
;ENDM

move: MACRO
	; the animation byte will be filled when the move is loaded
	db \1 ; effect
	db \2 ; power
	db \3 | \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	db \7 percent ; effect chance
ENDM

Moves::
; entries correspond to constants/move_constants.asm

	indirect_table MOVE_LENGTH - 1, 1
	indirect_entries NUM_ATTACKS, Moves1
	indirect_table_end
	
Moves1:

;POUND
	move EFFECT_NORMAL_HIT,         35, FIGHTING,     PHYSICAL, 100, 35,   0
;BUG_BUZZ
	move EFFECT_SP_DEF_DOWN_HIT,    90, BUG,          SPECIAL,  100, 10,  15
;MEGA_PUNCH
	move EFFECT_CONFUSE_HIT,        80, NORMAL,       PHYSICAL,  90, 20,  20
;PAY_DAY
	move EFFECT_PAY_DAY,            50, NORMAL,       PHYSICAL, 100, 20,   0
;FIRE_PUNCH
	move EFFECT_BURN_HIT,           75, FIRE,         PHYSICAL, 100, 15,  10
;ICE_PUNCH
	move EFFECT_FREEZE_HIT,         75, ICE,          PHYSICAL, 100, 15,  10
;THUNDERPUNCH
	move EFFECT_PARALYZE_HIT,       75, ELECTRIC,     PHYSICAL, 100, 15,  10
;SCRATCH
	move EFFECT_NORMAL_HIT,         40, NORMAL,       PHYSICAL, 100, 35,   0
;MUD_SHOT
	move EFFECT_SPEED_DOWN_HIT,     55, GROUND,       SPECIAL,   95, 15,  20
;OMINOUS_WIND
	move EFFECT_ALL_UP_HIT,         60, GHOST,        SPECIAL,  100, 10,  15
;RAZOR_WIND - high critical hit move
	move EFFECT_NORMAL_HIT,         80, FLYING,       SPECIAL,   90, 10,   0
;SWORDS_DANCE
	move EFFECT_ATTACK_UP_2,         0, NORMAL,       STATUS,   100, 30,   0
;CUT
	move EFFECT_NORMAL_HIT,         50, STEEL,        PHYSICAL,  95, 30,   0
;GUST
	move EFFECT_GUST,               40, FLYING,       SPECIAL,  100, 35,   0
;WING_ATTACK
	move EFFECT_NORMAL_HIT,         60, FLYING,       PHYSICAL, 100, 35,   0
;WHIRLWIND
	move EFFECT_FORCE_SWITCH,        0, FLYING,       STATUS,   100, 20,   0
;FLY - may paralyze
	move EFFECT_FLY,                90, FLYING,       PHYSICAL,  95, 15,  30
;AURA_SPHERE
	move EFFECT_ALWAYS_HIT,         75, FIGHTING,     SPECIAL,  100, 20,   0
;SLAM
	move EFFECT_PARALYZE_HIT,       85, NORMAL,       PHYSICAL,  90, 20,  30
;VINE_WHIP
	move EFFECT_NORMAL_HIT,         40, GRASS,        PHYSICAL, 100, 10,   0
;STOMP
	move EFFECT_STOMP,              65, NORMAL,       PHYSICAL, 100, 20,  30
;DOUBLE_KICK
	move EFFECT_DOUBLE_HIT,         30, FIGHTING,     PHYSICAL, 100, 30,   0
;MEGA_KICK
	move EFFECT_NORMAL_HIT,        120, NORMAL,       PHYSICAL,  75,  5,   0
;JUMP_KICK
	move EFFECT_JUMP_KICK,          85, FIGHTING,     PHYSICAL,  95, 25,   0
;EARTH_POWER
	move EFFECT_SP_DEF_DOWN_HIT,    90, GROUND,       SPECIAL,  100, 10,  15
;SAND_ATTACK
	move EFFECT_ACCURACY_DOWN,       0, GROUND,       STATUS,   100, 15,   0
;HEADBUTT
	move EFFECT_FLINCH_HIT,         70, NORMAL,       PHYSICAL, 100, 15,  30
;HORN_ATTACK - high critical hit move
	move EFFECT_NORMAL_HIT,         60, NORMAL,       PHYSICAL, 100, 25,   0
;HORN_DRILL
	move EFFECT_OHKO,                1, NORMAL,       PHYSICAL,  30,  5,   0
;TACKLE
	move EFFECT_NORMAL_HIT,         35, NORMAL,       PHYSICAL,  95, 35,   0
;POWER_GEM
	move EFFECT_NORMAL_HIT,         80, ROCK,         SPECIAL,  100, 20,   0
;WRAP
	move EFFECT_TRAP_TARGET,        20, NORMAL,       PHYSICAL,  90, 20,   0
;TAKE_DOWN
	move EFFECT_RECOIL_HIT,         90, NORMAL,       PHYSICAL,  85, 20,   0
;ICE_FANG - chance to flinch or freeze
	move EFFECT_ICE_FANG,           65, ICE,          PHYSICAL,  95, 15,  20
;TAIL_WHIP
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,       STATUS,   100, 30,   0
;POISON_STING
	move EFFECT_POISON_HIT,         40, POISON,       PHYSICAL, 100, 35,  30
;PIN_MISSILE
	move EFFECT_SPEED_DOWN_MULTI_HIT,  18, BUG,       PHYSICAL,  95, 20,  50
;LEER
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,       STATUS,   100, 30,   0
;BITE
	move EFFECT_FLINCH_HIT,         60, DARK,         PHYSICAL, 100, 25,  30
;GROWL
	move EFFECT_ATTACK_DOWN,         0, NORMAL,       STATUS,   100, 40,   0
;ROAR
	move EFFECT_FORCE_SWITCH,        0, NORMAL,       STATUS,   100, 20,   0
;SING
	move EFFECT_SLEEP,               0, NORMAL,       STATUS,    60, 15,   0
;SUPERSONIC
	move EFFECT_CONFUSE,             0, NORMAL,       STATUS,    55, 20,   0
;SONICBOOM
	move EFFECT_STATIC_DAMAGE,      20, NORMAL,       SPECIAL,   90, 20,   0
;DISABLE
	move EFFECT_DISABLE,             0, PSYCHIC_TYPE, STATUS,    80, 20,   0
;WATER_PULSE
	move EFFECT_CONFUSE_HIT,        60, WATER,        SPECIAL,  100, 20,  20
;EMBER
	move EFFECT_BURN_HIT,           40, FIRE,         SPECIAL,  100, 25,  10
;FLAMETHROWER
	move EFFECT_BURN_HIT,           90, FIRE,         SPECIAL,  100, 15,  10
;REFRESH - cures user's status
	move EFFECT_MIST,                0, NORMAL,       STATUS,   100, 30,   0
;WATER_GUN
	move EFFECT_NORMAL_HIT,         40, WATER,        SPECIAL,  100, 25,   0
;HYDRO_PUMP
	move EFFECT_NORMAL_HIT,        120, WATER,        SPECIAL,   80,  5,   0
;SURF
	move EFFECT_SURF,               90, WATER,        SPECIAL,  100, 15,   0
;ICE_BEAM
	move EFFECT_FREEZE_HIT,         90, ICE,          SPECIAL,  100, 10,  10
;BLIZZARD
	move EFFECT_BLIZZARD,          120, ICE,          SPECIAL,   70,  5,  30
;PSYBEAM
	move EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE, SPECIAL,  100, 20,  10
;BUBBLEBEAM
	move EFFECT_SPEED_DOWN_HIT,     65, WATER,        SPECIAL,  100, 20,  20
;AURORA_BEAM
	move EFFECT_ATTACK_DOWN_HIT,    65, ICE,          SPECIAL,  100, 20,  20
;HYPER_BEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,       SPECIAL,   90,  5,   0
;PECK
	move EFFECT_NORMAL_HIT,         35, FLYING,       PHYSICAL, 100, 35,   0
;DRILL_PECK
	move EFFECT_DEFENSE_DOWN_HIT,   80, FLYING,       PHYSICAL, 100, 20,  20
;SUBMISSION
	move EFFECT_RECOIL_HIT,         80, FIGHTING,     PHYSICAL,  80, 25,   0
;LOW_KICK
	move EFFECT_SPEED_DOWN_HIT,     50, FIGHTING,     PHYSICAL,  90, 20,  50
;COUNTER
	move EFFECT_COUNTER,             1, FIGHTING,     PHYSICAL, 100, 20,   0
;SEISMIC_TOSS
	move EFFECT_LEVEL_DAMAGE,        1, FIGHTING,     PHYSICAL, 100, 20,   0
;STRENGTH
	move EFFECT_PARALYZE_HIT,       70, FIGHTING,     PHYSICAL, 100, 15,  10
;MEGA_DRAIN
	move EFFECT_LEECH_HIT,          40, GRASS,        SPECIAL,  100, 15,   0
;LEECH_SEED
	move EFFECT_LEECH_SEED,          0, GRASS,        STATUS,    90, 10,   0
;GROWTH
	move EFFECT_GROWTH,              0, GRASS,        STATUS,   100, 40,   0
;RAZOR_LEAF - high critical hit move
	move EFFECT_NORMAL_HIT,         55, GRASS,        PHYSICAL,  95, 25,   0
;SOLARBEAM
	move EFFECT_SOLARBEAM,         120, GRASS,        SPECIAL,  100, 10,   0
;SLEEP_POWDER
	move EFFECT_SLEEP,               0, GRASS,        STATUS,    75, 15,   0
;PETAL_DANCE
	move EFFECT_ATTACK_DOWN_HIT,    90, GRASS,        PHYSICAL, 100, 20,  20
;STRING_SHOT
	move EFFECT_SPEED_DOWN,          0, BUG,          STATUS,    95, 40,   0
;DRAGON_RAGE
	move EFFECT_STATIC_DAMAGE,      40, DRAGON,       SPECIAL,  100, 10,   0
;THUNDERSHOCK
	move EFFECT_PARALYZE_HIT,       40, ELECTRIC,     SPECIAL,  100, 30,  10
;THUNDERBOLT
	move EFFECT_PARALYZE_HIT,       90, ELECTRIC,     SPECIAL,  100, 15,  10
;THUNDER_WAVE
	move EFFECT_PARALYZE,            0, ELECTRIC,     STATUS,   100, 20,   0
;THUNDER
	move EFFECT_THUNDER,           120, ELECTRIC,     SPECIAL,   70, 10,  30
;ROCK_THROW
	move EFFECT_NORMAL_HIT,         40, ROCK,         PHYSICAL,  90, 15,   0
;EARTHQUAKE
	move EFFECT_EARTHQUAKE,        100, GROUND,       PHYSICAL, 100, 10,   0
;X_SCISSOR - high critical hit move
	move EFFECT_NORMAL_HIT,         80, BUG,          PHYSICAL, 100, 15,   0
;DIG
	move EFFECT_DIG,                80, GROUND,       PHYSICAL, 100, 10,   0
;TOXIC
	move EFFECT_TOXIC,               0, POISON,       STATUS,    90, 10,   0
;CONFUSION
	move EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE, SPECIAL,  100, 25,  15
;PSYCHIC_M
	move EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE, SPECIAL,  100, 10,  10
;HYPNOSIS
	move EFFECT_SLEEP,               0, PSYCHIC_TYPE, STATUS,    70, 20,   0
;HOWL - atk up + focus energy (may be revised for balance reasons)
	move EFFECT_HOWL,                0, NORMAL,       STATUS,   100, 20,   0
;AGILITY
	move EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE, STATUS,   100, 30,   0
;QUICK_ATTACK
	move EFFECT_PRIORITY_HIT,       40, NORMAL,       PHYSICAL, 100, 30,   0
;TELEPORT
	move EFFECT_TELEPORT,            0, PSYCHIC_TYPE, STATUS,   100, 20,   0
;NIGHT_SHADE
	move EFFECT_LEVEL_DAMAGE,        1, GHOST,        SPECIAL,  100, 15,   0
;MIMIC
	move EFFECT_MIMIC,               0, NORMAL,       STATUS,   100, 10,   0
;SCREECH
	move EFFECT_DEFENSE_DOWN_2,      0, NORMAL,       STATUS,    85, 40,   0
;DOUBLE_TEAM
	move EFFECT_EVASION_UP,          0, NORMAL,       STATUS,   100, 15,   0
;RECOVER
	move EFFECT_HEAL,                0, PSYCHIC_TYPE, STATUS,   100, 20,   0
;HARDEN
	move EFFECT_DEFENSE_UP,          0, NORMAL,       STATUS,   100, 30,   0
;SMOKESCREEN
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,       STATUS,   100, 20,   0
;CONFUSE_RAY
	move EFFECT_CONFUSE,             0, GHOST,        STATUS,   100, 10,   0
;HEX
	move EFFECT_HEX,                50, GHOST,        SPECIAL,  100, 15,   0
;DEFENSE_CURL
	move EFFECT_DEFENSE_CURL,        0, NORMAL,       STATUS,   100, 40,   0
;CALM_MIND
	move EFFECT_CALM_MIND,           0, PSYCHIC_TYPE, STATUS,   100, 20,   0
;LIGHT_SCREEN
	move EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE, STATUS,   100, 30,   0
;HAZE
	move EFFECT_RESET_STATS,         0, ICE,          STATUS,   100, 30,   0
;REFLECT
	move EFFECT_REFLECT,             0, PSYCHIC_TYPE, STATUS,   100, 20,   0
;SILVER_WIND
	move EFFECT_ALL_UP_HIT,         60, BUG,          SPECIAL,  100, 10,  15
;METRONOME
	move EFFECT_METRONOME,           0, NORMAL,       STATUS,   100, 10,   0
;MIRROR_MOVE
	move EFFECT_MIRROR_MOVE,         0, FLYING,       STATUS,   100, 20,   0
;SELFDESTRUCT
	move EFFECT_SELFDESTRUCT,      200, NORMAL,       PHYSICAL, 100,  5,   0
;DRAGON_DANCE
	move EFFECT_DRAGON_DANCE,        0, DRAGON,       STATUS,   100, 20,   0
;LICK
	move EFFECT_PARALYZE_HIT,       20, GHOST,        PHYSICAL, 100, 30,  30
;CLEAR_SMOG - resets stats
	move EFFECT_CLEAR_SMOG,         50, POISON,       SPECIAL,   90, 20,   0
;ACID_SPRAY - hits steel types, corrodes target, may lower sp def
	move  EFFECT_ACIDDOWNPOUR,      55, POISON,       SPECIAL,  100, 20,  50
;BONE_CLUB
	move EFFECT_FLINCH_HIT,         65, GROUND,       PHYSICAL,  85, 20,  10
;FIRE_BLAST
	move EFFECT_BURN_HIT,          120, FIRE,         SPECIAL,   85,  5,  20
;WATERFALL
	move EFFECT_FLINCH_HIT,         80, WATER,        PHYSICAL, 100, 15,  20
;SWIFT
	move EFFECT_ALWAYS_HIT,         60, NORMAL,       SPECIAL,  100, 20,   0
;SPIKE_CANNON
	move EFFECT_MULTI_HIT,          20, STEEL,        PHYSICAL,  95, 15,   0
;POISON_FANG - chance to badly poison
	move EFFECT_POISON_FANG,        50, POISON,       PHYSICAL, 100, 15,  50
;AMNESIA
	move EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE, STATUS,   100, 20,   0
;WILL_O_WISP
	move EFFECT_WILL_O_WISP,         0, FIRE,         STATUS,    85, 15,   0
;GLARE
	move EFFECT_PARALYZE,            0, NORMAL,       STATUS,    80, 30,   0
;DREAM_EATER
	move EFFECT_DREAM_EATER,       120, PSYCHIC_TYPE, SPECIAL,  100, 15,   0
;PSYCHO_CUT - high critical hit move
	move EFFECT_NORMAL_HIT,         70, PSYCHIC_TYPE, PHYSICAL, 100, 20,   0
;FLASH_CANNON
	move EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,        SPECIAL,  100, 10,  15
;LEECH_LIFE
	move EFFECT_LEECH_HIT,          40, BUG,          PHYSICAL, 100, 15,   0
;ROOST (effect technically incorrect)
	move EFFECT_HEAL,                0, FLYING,       STATUS,   100, 10,   0
;BRAVE_BIRD
	move EFFECT_RECOIL_HIT,        120, FLYING,       PHYSICAL,  90,  5,   0
;TRANSFORM
	move EFFECT_TRANSFORM,           0, NORMAL,       STATUS,   100, 10,   0
;FLASH - accuracy down + evade down    
	move EFFECT_FLASH,               0, NORMAL,       STATUS,    70, 20,   0
;ICICLE_CRASH 
	move EFFECT_FLINCH_HIT,         85, ICE,          PHYSICAL,  90, 10,  30
;SPLASH  
	move EFFECT_SPLASH,              0, NORMAL,       STATUS,   100, 40,   0
;ACID_ARMOR  
	move EFFECT_DEFENSE_UP_2,        0, POISON,       STATUS,   100, 40,   0
;CRABHAMMER
	move EFFECT_DEFENSE_DOWN_HIT,  100, WATER,        PHYSICAL,  85, 10,   0
;SNARL       
	move EFFECT_SP_ATK_DOWN_HIT,    55, DARK,         SPECIAL,   95, 15,  70
;FURY_SWIPES
	move EFFECT_MULTI_HIT,          18, NORMAL,       PHYSICAL,  85, 15,   0
;BONEMERANG  
	move EFFECT_DOUBLE_HIT,         45, GROUND,       PHYSICAL,  90, 10,   0
;REST        
	move EFFECT_HEAL,                0, PSYCHIC_TYPE, STATUS,   100, 10,   0
;ROCK_SLIDE  
	move EFFECT_FLINCH_HIT,         75, ROCK,         PHYSICAL,  90, 10,  30
;HONE_CLAWS - attack + accuracy up   
	move EFFECT_HONE_CLAWS,          0, DARK,         STATUS,   100, 15,   0
;FIRE_FANG - chance to flinch or burn
	move EFFECT_FIRE_FANG,          65, FIRE,         PHYSICAL,  95, 15,  30
;TRI_ATTACK
	move EFFECT_TRI_ATTACK,         80, CURSE_TYPE,   SPECIAL,  100, 10,  20
;SUPER_FANG
	move EFFECT_SUPER_FANG,          1, NORMAL,       PHYSICAL,  90, 10,   0
;SLASH - high critical hit move
	move EFFECT_NORMAL_HIT,         70, NORMAL,       PHYSICAL, 100, 20,   0
;SUBSTITUTE
	move EFFECT_SUBSTITUTE,          0, NORMAL,       STATUS,   100, 10,   0
;SKETCH
	move EFFECT_SKETCH,              0, NORMAL,       STATUS,   100,  1,   0
;COSMIC_POWER
	move EFFECT_COSMIC_POWER,        0, PSYCHIC_TYPE, STATUS,   100, 20,   0
;THIEF
	move EFFECT_THIEF,              50, DARK,         PHYSICAL, 100, 10, 100
;SPIDER_WEB (currently spd drop + poison + trap, needs rebalancing)
	move EFFECT_SPIDER_WEB,          0, BUG,          STATUS,   100, 10,   0
;DRAGON_CLAW
	move EFFECT_NORMAL_HIT,         80, DRAGON,       PHYSICAL, 100, 15,   0
;FLAME_WHEEL
	move EFFECT_FLAME_WHEEL,        70, FIRE,         PHYSICAL, 100, 25,  50
;CURSE
	move EFFECT_CURSE,               0, CURSE_TYPE,   STATUS,   100, 10,   0
;AEROBLAST - high critical hit move
	move EFFECT_NORMAL_HIT,        100, FLYING,       SPECIAL,   95,  5,   0
;REVERSAL
	move EFFECT_REVERSAL,            1, FIGHTING,     PHYSICAL, 100, 15,   0
;SPITE
	move EFFECT_SPITE,               0, GHOST,        STATUS,   100, 10,   0
;POWDER_SNOW
	move EFFECT_FREEZE_HIT,         40, ICE,          SPECIAL,  100, 25,  10
;PROTECT
	move EFFECT_PROTECT,             0, NORMAL,       STATUS,   100, 10,   0
;SCARY_FACE
	move EFFECT_SPEED_DOWN_2,        0, NORMAL,       STATUS,    90, 10,   0
;BELLY_DRUM
	move EFFECT_BELLY_DRUM,          0, NORMAL,       STATUS,   100, 10,   0
;SLUDGE_BOMB
	move EFFECT_POISON_HIT,         90, POISON,       SPECIAL,  100, 10,  30
;MUD_SLAP
	move EFFECT_ACCURACY_DOWN_HIT,  35, GROUND,       SPECIAL,  100, 10, 100
;OCTAZOOKA
	move EFFECT_ACCURACY_DOWN_HIT, 100, WATER,        SPECIAL,   85, 10,  50
;SPIKES
	move EFFECT_SPIKES,              0, GROUND,       STATUS,   100, 20,   0
;ZAP_CANNON
	move EFFECT_PARALYZE_HIT,      100, ELECTRIC,     SPECIAL,   65,  5, 100
;DESTINY_BOND
	move EFFECT_DESTINY_BOND,        0, GHOST,        STATUS,   100,  5,   0
;PERISH_SONG
	move EFFECT_PERISH_SONG,         0, GHOST,        STATUS,   100,  5,   0
;ICY_WIND
	move EFFECT_SPEED_DOWN_HIT,     55, ICE,          SPECIAL,   95, 15, 100
;FEATHERDANCE
	move EFFECT_ATTACK_DOWN_2,       0, FLYING,       STATUS,   100, 15,   0
;OUTRAGE
	move EFFECT_RAMPAGE,           120, DRAGON,       PHYSICAL, 100, 15,   0
;SANDSTORM
	move EFFECT_SANDSTORM,           0, ROCK,         STATUS,   100, 10,   0
;GIGA_DRAIN
	move EFFECT_LEECH_HIT,          75, GRASS,        SPECIAL,  100, 10,   0
;ENDURE
	move EFFECT_ENDURE,              0, FIGHTING,     STATUS,   100, 10,   0
;CHARM
	move EFFECT_ATTACK_DOWN_2,       0, NORMAL,       STATUS,   100, 20,   0
;ROLLOUT
	move EFFECT_ROLLOUT,            30, ROCK,         PHYSICAL,  90, 20,   0
;FALSE_SWIPE
	move EFFECT_FALSE_SWIPE,        40, CURSE_TYPE,   PHYSICAL, 100, 40,   0
;SWAGGER
	move EFFECT_SWAGGER,             0, NORMAL,       STATUS,    90, 15, 100
;MILK_DRINK
	move EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
;SPARK
	move EFFECT_PARALYZE_HIT,       65, ELECTRIC,     PHYSICAL, 100, 20,  20
;FURY_CUTTER
	move EFFECT_FURY_CUTTER,        40, BUG,          PHYSICAL,  95, 20,   0
;STEEL_WING
	move EFFECT_DEFENSE_UP_HIT,     70, STEEL,        PHYSICAL,  90, 25,  30
;MEAN_LOOK
	move EFFECT_MEAN_LOOK,           0, DARK,         STATUS,   100,  5,   0
;ATTRACT
	move EFFECT_ATTRACT,             0, NORMAL,       STATUS,   100, 15,   0
;SLEEP_TALK
	move EFFECT_SLEEP_TALK,          0, NORMAL,       STATUS,   100, 10,   0
;HEAL_BELL
	move EFFECT_HEAL_BELL,           0, NORMAL,       STATUS,   100,  5,   0
;RETURN
	move EFFECT_RETURN,              1, NORMAL,       PHYSICAL, 100, 20,   0
;PRESENT
	move EFFECT_PRESENT,             1, NORMAL,       PHYSICAL,  90, 15,   0
;HAIL
	move EFFECT_HAIL,                0, ICE,          STATUS,   100, 10,   0
;SAFEGUARD
	move EFFECT_SAFEGUARD,           0, NORMAL,       STATUS,   100, 25,   0
;PAIN_SPLIT
	move EFFECT_PAIN_SPLIT,          0, GHOST,        STATUS,   100, 20,   0
;SACRED_FIRE
	move EFFECT_SACRED_FIRE,       100, FIRE,         PHYSICAL,  95,  5,  50
;DYNAMICPUNCH
	move EFFECT_CONFUSE_HIT,       100, FIGHTING,     PHYSICAL,  65,  5, 100
;MEGAHORN
	move EFFECT_NORMAL_HIT,        120, BUG,          PHYSICAL,  85, 10,   0
;DRAGONBREATH
	move EFFECT_PARALYZE_HIT,       60, DRAGON,       SPECIAL,  100, 20,  25
;BATON_PASS
	move EFFECT_BATON_PASS,          0, NORMAL,       STATUS,   100, 40,   0
;ENCORE
	move EFFECT_ENCORE,              0, NORMAL,       STATUS,   100,  5,   0
;PURSUIT
	move EFFECT_PURSUIT,            40, DARK,         PHYSICAL, 100, 20,   0
;RAPID_SPIN - spd up + remove hazards
	move EFFECT_RAPID_SPIN,         50, NORMAL,       PHYSICAL, 100, 40, 100
;SWEET_SCENT
	move EFFECT_EVASION_DOWN,        0, GRASS,        STATUS,   100, 20,   0
;IRON_TAIL
	move EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,        PHYSICAL,  85, 15,  30
;METAL_CLAW
	move EFFECT_ATTACK_UP_HIT,      55, STEEL,        PHYSICAL,  95, 35,  50
;MORNING_SUN
	move EFFECT_MORNING_SUN,         0, NORMAL,       STATUS,   100, 10,   0
;ENERGY_BALL
	move EFFECT_SP_DEF_DOWN_HIT,    90, GRASS,        SPECIAL,  100, 10,  15
;MOONLIGHT
	move EFFECT_MOONLIGHT,           0, NORMAL,       STATUS,   100, 10,   0
;HIDDEN_POWER
	move EFFECT_HIDDEN_POWER,       60, CURSE_TYPE,   SPECIAL,  100, 15,   0
;TWISTER
	move EFFECT_TWISTER,            40, DRAGON,       SPECIAL,  100, 20,  20
;RAIN_DANCE
	move EFFECT_RAIN_DANCE,          0, WATER,        STATUS,   100,  5,   0
;SUNNY_DAY
	move EFFECT_SUNNY_DAY,           0, FIRE,         STATUS,   100,  5,   0
;CRUNCH
	move EFFECT_DEFENSE_DOWN_HIT,   80, DARK,         PHYSICAL, 100, 15,  30
;MIRROR_COAT
	move EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE, SPECIAL,  100, 20,   0
;PSYCH_UP
	move EFFECT_PSYCH_UP,            0, PSYCHIC_TYPE, STATUS,   100, 10,   0
;EXTREMESPEED
	move EFFECT_PRIORITY_HIT,       80, NORMAL,       PHYSICAL, 100,  5,   0
;ANCIENTPOWER
	move EFFECT_ALL_UP_HIT,         60, ROCK,         SPECIAL,  100, 10,  15
;SHADOW_BALL
	move EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,        SPECIAL,  100, 15,  20
;HYPER_VOICE
	move EFFECT_NORMAL_HIT,         90, NORMAL,       SPECIAL,  100, 10,   0
;ROCK_SMASH
	move EFFECT_DEFENSE_DOWN_HIT,   50, FIGHTING,     PHYSICAL, 100, 15,  50
;WHIRLPOOL
	move EFFECT_WHIRLPOOL,          50, WATER,        SPECIAL,   85, 15,   0
;ROCK_CLIMB
	move EFFECT_CONFUSE_HIT,        90, NORMAL,       PHYSICAL,  85, 20,  20
;DARK_PULSE
	move EFFECT_FLINCH_HIT,         80, DARK,         SPECIAL,  100, 15,  20
;POISON_JAB
	move EFFECT_POISON_HIT,         80, POISON,       PHYSICAL, 100, 20,  30
;DIVE
	move EFFECT_DIVE,               60, WATER,        PHYSICAL, 100, 10,   0
;VOLT_TACKLE - recoil + paralyze chance
	move EFFECT_VOLT_TACKLE,       120, ELECTRIC,     PHYSICAL, 100, 10,  20
;POWERUPPUNCH
	move EFFECT_ATTACK_UP_HIT,      40, FIGHTING,     PHYSICAL, 100, 15, 100
;IRON_DEFENSE
	move EFFECT_DEFENSE_UP_2,        0, STEEL,        STATUS,   100, 15,   0
;LEAF_BLADE - high critical hit move
	move EFFECT_NORMAL_HIT,         90, GRASS,        PHYSICAL, 100, 15,   0
;ICE_SHARD
	move EFFECT_PRIORITY_HIT,       40, ICE,          PHYSICAL, 100, 20,   0
;RAZOR_SHELL - high critical hit move
	move EFFECT_DEFENSE_DOWN_HIT,   75, WATER,        PHYSICAL,  95, 10,  30
;CHARGE_BEAM
	move EFFECT_SP_ATK_UP_HIT,      50, ELECTRIC,     SPECIAL,  90,  15,  50
;SHADOW_RUSH
	move EFFECT_RECOIL_HIT,         90, CURSE_TYPE,   PHYSICAL, 100, 25,   0
;SYNTHESIS
	move EFFECT_SYNTHESIS,           0, GRASS,        STATUS,   100, 10,   0
;EFFECT_SPORE - 50/50 poison or paralyze chance
	move EFFECT_EFFECT_SPORE,        0, POISON,       STATUS,    75, 30, 100
;BULLDOZE
	move EFFECT_SPEED_DOWN_HIT,     60, GROUND,       PHYSICAL, 100, 20,  50
;BULLET_PUNCH
	move EFFECT_PRIORITY_HIT,       40, STEEL,        PHYSICAL, 100, 30,   0
;BUG_BITE (do I want to implement the actual effect?)
	move EFFECT_NORMAL_HIT,         60, BUG,          PHYSICAL, 100, 20,   0
;COIL
	move EFFECT_COIL,                0, POISON,       STATUS,   100, 20,   0
;FLAIL
	move EFFECT_REVERSAL,            1, NORMAL,       PHYSICAL, 100, 15,   0
;AIR_CUTTER - high critical hit move
	move EFFECT_NORMAL_HIT,         55, FLYING,       SPECIAL,   95, 25,   0
;MIRROR_SHOT
	move EFFECT_ACCURACY_DOWN_HIT,  65, STEEL,        SPECIAL,   85, 10,  20
;PSYSTRIKE
	move EFFECT_NORMAL_HIT,        100, PSYCHIC_TYPE, PHYSICAL, 100, 10,   0
;VACUUM_WAVE
	move EFFECT_PRIORITY_HIT,       40, FIGHTING,     SPECIAL,  100, 30,   0
;SHADOW_BONE
	move EFFECT_FLINCH_HIT,         85, GHOST,        PHYSICAL, 100, 15,  15
;ECHOED_VOICE
	move EFFECT_FURY_CUTTER,        40, NORMAL,       SPECIAL,  100, 15,   0
;DIRE_CLAW - chance to inflict poison, paralysis, or sleep
	move EFFECT_DIRE_CLAW,          75, POISON,       PHYSICAL, 100, 15,  20
;AQUA_JET
	move EFFECT_PRIORITY_HIT,       40, WATER,        PHYSICAL, 100, 20,   0
;MYSTICALFIRE
	move EFFECT_SP_ATK_DOWN_HIT,    65, FIRE,         SPECIAL,  100, 10,  50
;NASTY_PLOT
	move EFFECT_SP_ATK_UP_2,         0, DARK,         STATUS,   100, 20,   0
;FELL_STINGER (this is better than the proper effect anyway)
	move EFFECT_ATTACK_UP_HIT,      50, BUG,          PHYSICAL, 100, 25,  50 
;LASER_FOCUS - up critical hit chance + lock on effect
	move EFFECT_LASER_FOCUS,         0, NORMAL,       STATUS,   100, 10,   0
;DRILL_RUN - high critical hit move
	move EFFECT_NORMAL_HIT,         80, GROUND,       PHYSICAL,  95, 10,   0
;ACCELEROCK
	move EFFECT_PRIORITY_HIT,       40, ROCK,         PHYSICAL, 100, 20,   0 
;WAVE_CRASH
	move EFFECT_JUMP_KICK,         120, WATER,        PHYSICAL,  90, 10,   0
;NIGHT_SLASH - high critical hit move
	move EFFECT_NORMAL_HIT,         70, DARK,         PHYSICAL, 100, 15,   0
;SKY_UPPERCUT - double damage to flying foes
	move EFFECT_SKY_UPPERCUT,       85, FIGHTING,     PHYSICAL,  95, 15,   0
;BLAZE_KICK
	move EFFECT_BURN_HIT,           85, FIRE,         PHYSICAL,  90, 10,  10
;QUIVER_DANCE
	move EFFECT_QUIVER_DANCE,        0, BUG,          STATUS,   100, 20,   0
;BULK_UP
	move EFFECT_BULK_UP,             0, FIGHTING,     STATUS,   100, 20,   0	
;ACID - hits steel types, may lower sp def
	move EFFECT_ACID,               40, POISON,       SPECIAL,  100, 30,  30 
;SPORE
	move EFFECT_SLEEP,               0, GRASS,        STATUS,   100, 15,   0
;SOFTBOILED
	move EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
;FAINT_ATTACK
	move EFFECT_ALWAYS_HIT,         60, DARK,         PHYSICAL, 100, 20,   0
;CONVERSION (given effect of Conversion2; Effect of gen1 Conversion is a consideration)
	move EFFECT_CONVERSION2,         0, NORMAL,       STATUS,   100, 30,   0
;SHADOW_PUNCH
	move EFFECT_ALWAYS_HIT,         60, GHOST,        PHYSICAL, 100, 20,   0
;THRASH
	move EFFECT_RAMPAGE,           120, NORMAL,       PHYSICAL, 100, 10,   0
;COTTON_SPORE
	move EFFECT_SPEED_DOWN_2,        0, GRASS,        STATUS,   100, 40,   0
;TWINEEDLE
	move EFFECT_POISON_MULTI_HIT,   35, BUG,          PHYSICAL,  90, 20,  20
;ASTONISH
	move EFFECT_FLINCH_HIT,         30, GHOST,        PHYSICAL, 100, 15,  30
;MACH_PUNCH
	move EFFECT_PRIORITY_HIT,       40, FIGHTING,     PHYSICAL, 100, 30,   0
;DOUBLESLAP
	move EFFECT_MULTI_HIT,          15, NORMAL,       PHYSICAL,  85, 10,   0
;FIRE_SPIN
	move EFFECT_TRAP_TARGET,        50, FIRE,         SPECIAL,   85, 15,   0
;WITHDRAW
	move EFFECT_DEFENSE_UP,          0, WATER,        STATUS,   100, 40,   0
;FURY_ATTACK
	move EFFECT_MULTI_HIT,          18, FLYING,       PHYSICAL,  85, 15,   0
;SWEET_KISS
	move EFFECT_CONFUSE,             0, NORMAL,       STATUS,    75, 10,   0
;COTTON_GUARD
	move EFFECT_DEFENSE_UP_2,        0, GRASS,        STATUS,   100, 10,   0
;DRAGON_PULSE
	move EFFECT_NORMAL_HIT,         90, DRAGON,       SPECIAL,  100, 10,   0
;CROSS_POISON - high critical hit move
	move EFFECT_POISON_HIT,         70, POISON,       PHYSICAL, 100, 20,  10
;LUNGE
	move EFFECT_ATTACK_DOWN_HIT,    80, BUG,          PHYSICAL, 100, 15,  50
;SIGNAL_BEAM
	move EFFECT_CONFUSE_HIT,        75, BUG,          SPECIAL,  100, 15,  10
;TAIL_GLOW
	move EFFECT_SP_ATK_UP_2,         0, BUG,          STATUS,   100, 20,   0
;NIGHT_DAZE
	move EFFECT_ACCURACY_DOWN_HIT,  95, DARK,         SPECIAL,   85, 10,  40
;DRAGON_TAIL
	move EFFECT_SWITCH_HIT,         60, DRAGON,       PHYSICAL,  90, 10, 100
;SCALE_SHOT
	move EFFECT_MULTI_HIT,          18, DRAGON,       PHYSICAL,  90, 20,   0
;CHARGE - sp atk + sp def up
	move EFFECT_CALM_MIND,           0, ELECTRIC,     STATUS,   100, 20,   0
;DISCHARGE
	move EFFECT_PARALYZE_HIT,       80, ELECTRIC,     SPECIAL,  100, 15,  30
;THUNDER_FANG - chance to flinch or paralyze
	move EFFECT_THUNDER_FANG,       65, ELECTRIC,     PHYSICAL,  95, 15,  30
;CROSS_CHOP - high critical hit move
	move EFFECT_NORMAL_HIT,         75, FIGHTING,     PHYSICAL,  80,  5,   0
;DRAIN_PUNCH
	move EFFECT_LEECH_HIT,          75, FIGHTING,     PHYSICAL, 100, 10,   0
;FOCUS_BLAST
	move EFFECT_SP_DEF_DOWN_HIT,   110, FIGHTING,     SPECIAL,   70,  5,  10
;DETECT
	move EFFECT_PROTECT,             0, FIGHTING,     STATUS,   100,  5,   0
;FIERY_DANCE
	move EFFECT_SP_ATK_UP_HIT,      80, FIRE,         SPECIAL,  100, 10,  50
;HEAT_WAVE
	move EFFECT_BURN_HIT,          100, FIRE,         SPECIAL,   90, 10,  10
;LAVA_PLUME
	move EFFECT_BURN_HIT,           80, FIRE,         SPECIAL,  100, 15,  30
;AERIAL_ACE
	move EFFECT_ALWAYS_HIT,         60, FLYING,       PHYSICAL, 100, 20,   0
;SHADOW_SNEAK
	move EFFECT_PRIORITY_HIT,       40, GHOST,        PHYSICAL, 100, 30,   0
;BULLET_SEED
	move EFFECT_MULTI_HIT,          18, GRASS,        PHYSICAL,  90, 30,   0
;HORN_LEECH
	move EFFECT_LEECH_HIT,          75, GRASS,        PHYSICAL, 100, 10,   0
;MAGICAL_LEAF
	move EFFECT_ALWAYS_HIT,         60, GRASS,        SPECIAL,  100, 20,   0
;SEED_BOMB
	move EFFECT_NORMAL_HIT,         80, GRASS,        PHYSICAL, 100, 15,   0
;SAND_TOMB
	move EFFECT_TRAP_TARGET,        35, GROUND,       PHYSICAL,  85, 15,   0
;SEARING_SAND
	move EFFECT_BURN_HIT,           70, GROUND,       SPECIAL,  100, 10,  30
;FROSTBREATH - high critical hit move
	move EFFECT_NORMAL_HIT,         70, ICE,          SPECIAL,  100, 15,   0
;ICICLE_SPEAR
	move EFFECT_MULTI_HIT,          20, ICE,          PHYSICAL,  90, 30,   0
;CRUSH_CLAW
	move EFFECT_DEFENSE_DOWN_HIT,   75, STEEL,        PHYSICAL,  95, 10,  50
;DOUBLE_HIT
	move EFFECT_DOUBLE_HIT,         35, NORMAL,       PHYSICAL,  90, 10,   0
;POISON_TAIL - high critical hit move
	move EFFECT_POISON_HIT,         60, POISON,       PHYSICAL, 100, 25,  10
;SLUDGE
	move EFFECT_POISON_HIT,         65, POISON,       SPECIAL,  100, 20,  30
;EXTRASENSORY
	move EFFECT_FLINCH_HIT,         80, PSYCHIC_TYPE, SPECIAL,  100, 20,  10
;PSYCHIC_FANG - chance to disable opponent's move
	move EFFECT_DISABLE_HIT,        50, PSYCHIC_TYPE, PHYSICAL, 100, 10,  50
;ESPER_WING
	move EFFECT_SPEED_UP_HIT,       80, PSYCHIC_TYPE, PHYSICAL, 100, 10,  50
;METEOR_STORM
	move EFFECT_BURN_HIT,          100, ROCK,         SPECIAL,   90,  5,  30
;ROCK_TOMB
	move EFFECT_SPEED_DOWN_HIT,     60, ROCK,         PHYSICAL,  95, 15, 100
;METAL_BURST
	move EFFECT_RECOIL_HIT,        120, STEEL,        SPECIAL,  100, 10,   0
;MAGNET_BOMB
	move EFFECT_ALWAYS_HIT,         60, STEEL,        PHYSICAL, 100, 20,   0
;METAL_SOUND
	move EFFECT_SP_DEF_DOWN_2,       0, STEEL,        STATUS,    85, 40,   0
;VENOM_DRENCH - atk + sp atk down (add corrosion)
	move EFFECT_VENOM_DRENCH,        0, POISON,       STATUS,   100, 20,   0
;SKULL_BASH
	move EFFECT_RECOIL_HIT,        120, ROCK,         PHYSICAL,  95, 10,   0
;SCALD
	move EFFECT_BURN_HIT,           80, WATER,        SPECIAL,  100, 15,  30
;FOCUS_ENERGY
	move EFFECT_FOCUS_ENERGY,        0, FIGHTING,     STATUS,   100, 30,   0
;FORESIGHT
	move EFFECT_FORESIGHT,           0, FIGHTING,     STATUS,   100, 40,   0
;SNORE
	move EFFECT_SNORE,              70, NORMAL,       PHYSICAL, 100, 15,  30
;PAYBACK (effect currently inaccurate)
	move EFFECT_NEGATIVE_PRIORITY_HIT, 100, DARK,     PHYSICAL, 100, 10,   0
;AVALANCHE (effect currently inaccurate)
	move EFFECT_NEGATIVE_PRIORITY_HIT, 100, ICE,      PHYSICAL, 100, 10,   0
;INFESTATION
	move EFFECT_TRAP_TARGET,        35, BUG,          SPECIAL,   90, 20,   0
;VENOMSTRIKE - high critical hit move
	move EFFECT_VENOMSTRIKE,       100, POISON,       PHYSICAL,  95, 20,  30
;PHANTOMFORCE (effect unfinished)
	move EFFECT_FLY,                90, GHOST,        PHYSICAL, 100, 20,   0
;FISSURE
	move EFFECT_OHKO,                1, GROUND,       PHYSICAL,  30,  5,   0
;SHADOW_CLAW - high critical hit move
	move EFFECT_ALWAYS_HIT,         70, GHOST,        PHYSICAL, 100, 10,   0
;ACID_RAIN
	move EFFECT_ACID_RAIN,           0, POISON,       STATUS,   100, 10,   0	
;MIND_READER
	move EFFECT_LOCK_ON,             0, PSYCHIC_TYPE, STATUS,   100,  5,   0
;SHEER_COLD
	move EFFECT_OHKO,                1, ICE,          SPECIAL,   30,  5,   0
;FLARE_BLITZ
	move EFFECT_RECOIL_HIT,        120, FIRE,         PHYSICAL, 100,  15,  0
;WEATHER_BALL - 80bp during weather; sun=fire, rain=water, sand=rock, hail=ice, acidrain=poison
	move EFFECT_WEATHER_BALL,       50, NORMAL,       SPECIAL,  100,  10,  0
;FIERY_WRATH
	move EFFECT_BURN_HIT,           90, DARK,         SPECIAL,  100,  10, 20
;ICY_GLARE
	move EFFECT_FREEZE_HIT,         90, PSYCHIC_TYPE, SPECIAL,  100,  10, 10
;THUNDER_KICK
	move EFFECT_PARALYZE_HIT,       90, FIGHTING,     PHYSICAL, 100,  10, 20
;MIST_BALL
	move EFFECT_SP_ATK_DOWN_HIT,    70, PSYCHIC_TYPE, SPECIAL,  100,  10, 30
;LUSTER_BASH
	move EFFECT_DEFENSE_UP_HIT,     70, PSYCHIC_TYPE, PHYSICAL,  90,  10, 50
;MAELSTROM
	move EFFECT_TRAP_TARGET,       110, DRAGON,       SPECIAL,   75,  5,   0
;TOXIC_SPIKES
	move EFFECT_TOXIC_SPIKES,        0, POISON,       STATUS,   100, 20,   0
;SHOCK_WAVE
	move EFFECT_ALWAYS_HIT,         60, ELECTRIC,     SPECIAL,   100, 20,  0
;THUNDERSPEAR - high critical hit move
	move EFFECT_FLINCH_HIT,         80, ELECTRIC,     PHYSICAL,  100, 15, 20
;FLASH_STRIKE (effect temp)
	move EFFECT_PRIORITY_HIT,       50, ELECTRIC,     PHYSICAL,  100, 20,  0
;CAMOUFLAGE (just double team)
	move EFFECT_EVASION_UP,          0, GROUND,       STATUS,    100, 20,  0
;SOUL_DRAIN
	move EFFECT_LEECH_HIT,          75, GHOST,        SPECIAL,   100, 10,  0
;INFERNALPARADE
	move EFFECT_BURN_HIT,          100, GHOST,        SPECIAL,   100, 15, 30
;DARK_VOID - induce sleep + nightmare
	move EFFECT_DARK_VOID,           0, DARK,         STATUS,     70,  5,  0
;PSYCHO_BOOST  (effect temp)
	move EFFECT_RECOIL_HIT,        130, PSYCHIC_TYPE, SPECIAL,    90,  5,  0
;DRAGON_RUSH
	move EFFECT_FLINCH_HIT,         90, DRAGON,       PHYSICAL,   85, 10, 20
;AURORA_VEIL (effect unfinished)
	move EFFECT_AURORA_VEIL,         0, ICE,          STATUS,    100, 20,  0
;STAR_FREEZE (make freeze too?)
	move EFFECT_PARALYZE_HIT,       80, NORMAL,       SPECIAL,   100, 15, 30
;STONE_EDGE - high critical hit move
	move EFFECT_NORMAL_HIT,        100, ROCK,         PHYSICAL,   80,  5,  0
;IRON_HEAD
	move EFFECT_FLINCH_HIT,         80, STEEL,        PHYSICAL,  100, 15, 30
;LANDS_WRATH - rasies sp atk and sp def on charge turn, then attacks next turn (change to sp def only)
	move EFFECT_LANDS_WRATH,       120, GROUND,       SPECIAL,    90,  5,  0
;MUD_BOMB
	move EFFECT_ACCURACY_DOWN_HIT,  85, GROUND,       SPECIAL,    85, 10, 30
;AQUA_TAIL
	move EFFECT_NORMAL_HIT,         90, WATER,        PHYSICAL,   90, 10,  0
;MUDDY_WATER
	move EFFECT_ACCURACY_DOWN_HIT,  90, WATER,        SPECIAL,    85, 10, 30
;CLAMP (effect temp- make trap without continuous damage)
	move EFFECT_NORMAL_HIT,        50, WATER,        PHYSICAL,   85, 10,  0
;PETAL_STORM
	move EFFECT_NORMAL_HIT,        100, GRASS,        SPECIAL,    90, 15,  0
;AIR_SLASH
	move EFFECT_FLINCH_HIT,         75, FLYING,       SPECIAL,    95, 15, 20
;GALE_WIND (effect placeholder- will be wind weather)
	move EFFECT_SUNNY_DAY,           0, FLYING,       STATUS,    100,  5,  0
;TAUNT (temp effect)
	move EFFECT_DISABLE,             0, DARK,         STATUS,    100, 15,  0
;KNOCK_OFF (temp effect)
	move EFFECT_THIEF,              65, DARK,         PHYSICAL,  100, 25,  0
;NIGHTMARE
	move EFFECT_NIGHTMARE,           0, GHOST,        STATUS,    100, 15,  0
;AROMATHERAPY
	move EFFECT_HEAL_BELL,           0, GRASS,        STATUS,    100,  5,  0
;UPROAR (temp effect?)
	move EFFECT_CONFUSE_HIT,        70, NORMAL,       SPECIAL,   100, 10, 20
;YAWN (temp effect, check future sight code)
	move EFFECT_SLEEP,               0, NORMAL,       STATUS,    100, 10, 70
;BARRIER
	move EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE, STATUS,    100, 30,  0
;MIRACLE_EYE
	move EFFECT_MIRACLE_EYE,         0, PSYCHIC_TYPE, STATUS,    100, 40,  0
;PSYCHO_SHIFT (temp effect)
	move EFFECT_MIST,                0, PSYCHIC_TYPE, STATUS,     90, 10,  0
;SNATCH (temp effect)
	move EFFECT_PSYCH_UP,            0, DARK,         STATUS,    100, 10,  0
;WORK_UP
	move EFFECT_GROWTH,              0, NORMAL,       STATUS,    100, 30,  0
;SMOG - accuracy down + poison chance (would a 'Smog' area weather be cooler?)
	move EFFECT_SMOG,                0, POISON,       STATUS,     70, 20,  0
;SUPERPOWER
	move EFFECT_SUPERPOWER,        120, FIGHTING,     PHYSICAL,  100, 5, 100
;ROCK_POLISH
	move EFFECT_SPEED_UP_2,          0, ROCK,         STATUS,    100, 20,  0
;SHELL_SMASH - atk, sp atk, spd up; def, sp def down
	move EFFECT_SHELL_SMASH,         0, WATER,        STATUS,    100, 15,  0
;DOUBLE_EDGE
	move EFFECT_RECOIL_HIT,        120, NORMAL,       PHYSICAL,  100, 15,  0
;U_TURN (effect temp)
	move EFFECT_U_TURN,             70, BUG,          PHYSICAL,  100, 15,  0
;TERA_BURST - 80bp w/ shard; fire=fire, water=water, thunder=elec, leaf=grass, ice=ice
	move EFFECT_TERA_BURST,         50, NORMAL,       PHYSICAL,  100,  10,  0
	
;WYRM_WIND - 75bp special dragon move, chance to lower sp atk
	
;BASILISK FANG - dragon move w/ venomstrike effect ?

;WISH (also heal status?)

;ice ball

;ingrain ?

;purify ? for suicune (heals hp if heals status, otherwise does nothing) (heal status of party member in ow)

;sucker punch

;solar blade

;nature power

;shadow storm

;tera burst (phys move similar to natural gift but type based on held shard)

;rage ? (buff)

;readd mist w/ safeguard buff?

;sharpen

;foul play

;stored power ?

;bolt strike for zapdos ? (possibly remove flash strike, or change to be like sucker punch)

;burn up

;possibly buff flame wheel to 70 and re-add flame charge?

;freeze dry

;(I still like the idea of Falcon Dive, and could even turn it into a Jump-Kick like move w/ flinch but mm)

;frenzy plant

;leaf tornado as a trapping move?

;readd magnitude ?

;u-turn

;add gunk shot, (does acid rain cause corrosion too?)

;slag storm molten steel trapping move burn chance

;aqua ring

;'terrain' moves? (burning land?)

	
;fog map weather?
	
;STRUGGLE
	move EFFECT_RECOIL_HIT,         50, NORMAL,       PHYSICAL, 100,  1,   0
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	