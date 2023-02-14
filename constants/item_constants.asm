; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const BRIGHTPOWDER ; 03
	const GREAT_BALL   ; 04
	const POKE_BALL    ; 05
	const BICYCLE      ; 06
	const MOON_STONE   ; 07
	const FULL_RESTORE ; 08
	const MAX_POTION   ; 09
	const HYPER_POTION ; 0a
	const SUPER_POTION ; 0b
	const POTION       ; 0c
	const ESCAPE_ROPE  ; 0d
	const REPEL        ; 0e
	const MAX_ELIXER   ; 0f
	const FIRE_STONE   ; 10
	const THUNDERSTONE ; 11
	const WATER_STONE  ; 12
	const ICE_STONE    ; 13
	const HP_UP        ; 14
	const PROTEIN      ; 15
	const IRON         ; 16
	const CARBOS       ; 17
	const LUCKY_PUNCH  ; 18
	const CALCIUM      ; 19
	const RARE_CANDY   ; 1a
	const WIDE_LENS    ; 1b x accuracy
	const LEAF_STONE   ; 1c
	const METAL_POWDER ; 1d
	const NUGGET       ; 1e
	const POKE_DOLL    ; 1f
	const FULL_HEAL    ; 20
	const REVIVE       ; 21
	const MAX_REVIVE   ; 22
	const PSY_SHIELD   ; 23 x sp def
	const MAX_REPEL    ; 24 
	const SHINY_STONE  ; 25
	const FRESH_WATER  ; 26
	const SODA_POP     ; 27
	const LEMONADE     ; 28
	const MUSCLE_BAND  ; 29 x attack
	const DUSK_STONE   ; 2a
	const LIGHT_ARMOR  ; 2b x defense
	const SWIFT_BOOTS  ; 2c x speed
	const WISE_GLASSES ; 2d x sp attack
	const COIN_CASE    ; 2e
	const ITEMFINDER   ; 2f
	const EXP_SHARE    ; 30
	const OLD_ROD      ; 31
	const GOOD_ROD     ; 32
	const SILVER_LEAF  ; 33 make a use for
	const SUPER_ROD    ; 34
	const PP_UP        ; 35
	const ELIXER       ; 36
	const RED_SCALE    ; 37
	const SECRETPOTION ; 38
	const S_S_TICKET   ; 39
	const MYSTERY_EGG  ; 3a
	const CLEAR_BELL   ; 3b
	const SILVER_WING  ; 3c
	const MOOMOO_MILK  ; 3d
	const QUICK_CLAW   ; 3e
	const PECHA_BERRY  ; 3f rename to g3+ equivilents
	const GOLD_LEAF    ; 40 make a use for
	const SOFT_SAND    ; 41
	const SHARP_BEAK   ; 42
	const CHERI_BERRY  ; 43 rename to g3+ equivilents
	const ASPEAR_BERRY ; 44 rename to g3+ equivilents
	const RAWST_BERRY  ; 45 rename to g3+ equivilents
	const POISON_BARB  ; 46
	const KINGS_ROCK   ; 47
	const PERSIM_BERRY ; 48 rename to g3+ equivilents
	const CHESTO_BERRY ; 49 rename to g3+ equivilents
	const RED_APRICORN ; 4a
	const TINYMUSHROOM ; 4b
	const BIG_MUSHROOM ; 4c
	const SILVERPOWDER ; 4d
	const BLU_APRICORN ; 4e
	const TRISTONE     ; 4f
	const AMULET_COIN  ; 50
	const YLW_APRICORN ; 51
	const GRN_APRICORN ; 52
	const CLEANSE_TAG  ; 53
	const MYSTIC_WATER ; 54
	const TWISTEDSPOON ; 55
	const WHT_APRICORN ; 56
	const BLACKBELT_I  ; 57
	const BLK_APRICORN ; 58
	const PNK_APRICORN ; 59
	const BLACKGLASSES ; 5a
	const SLOWPOKETAIL ; 5b
	const PINK_BOW     ; 5c
	const STICK        ; 5d
	const SMOKE_BALL   ; 5e
	const NEVERMELTICE ; 5f
	const MAGNET       ; 60
	const LUM_BERRY    ; 61 rename to g3+ equivilents
	const PEARL        ; 62
	const BIG_PEARL    ; 63
	const EVERSTONE    ; 64
	const SPELL_TAG    ; 65
	const RAGECANDYBAR ; 66
	const GS_BALL      ; 67
	const BLUE_CARD    ; 68
	const MIRACLE_SEED ; 69
	const THICK_CLUB   ; 6a
	const FOCUS_BAND   ; 6b
	const ENERGYPOWDER ; 6c
	const ENERGY_ROOT  ; 6d
	const HEAL_POWDER  ; 6e
	const REVIVAL_HERB ; 6f
	const HARD_STONE   ; 70
	const LUCKY_EGG    ; 71
	const CARD_KEY     ; 72
	const MACHINE_PART ; 73
	const LOST_ITEM    ; 74
	const STARDUST     ; 75
	const STAR_PIECE   ; 76
	const BASEMENT_KEY ; 77
	const PASS         ; 78
	const CHARCOAL     ; 79
	const BERRY_JUICE  ; 7a
	const SCOPE_LENS   ; 7b
	const METAL_COAT   ; 7c
	const DRAGON_FANG  ; 7d
	const LEFTOVERS    ; 7e
	const LEPPA_BERRY  ; 7f rename to g3+ equivilents
	const DRAGON_SCALE ; 80
	const BERSERK_GENE ; 81
	const SACRED_ASH   ; 82
	const HEAVY_BALL   ; 83
	const MAIL         ; 84 make all generic 'MAIL'
	const LEVEL_BALL   ; 85
	const LURE_BALL    ; 86
	const FAST_BALL    ; 87
	const LIGHT_BALL   ; 88
	const FRIEND_BALL  ; 89
	const MOON_BALL    ; 8a
	const LOVE_BALL    ; 8b
	const NORMAL_BOX   ; 8c  ??
	const GORGEOUS_BOX ; 8d  ??
	const SUN_STONE    ; 8e
	const SHARP_HORN   ; 8f
	const UP_GRADE     ; 90
	const ORAN_BERRY   ; 91 rename to g3+ equivilents
	const SITRUS_BERRY ; 92 rename to g3+ equivilents
	const SQUIRTBOTTLE ; 93
	const PARK_BALL    ; 94
	const RAINBOW_WING ; 95
	const OLD_AMBER    ; 96
	const DOME_FOSSIL  ; 97
	const HELIX_FOSSIL ; 98
	const PECHA_SCARF  ; 99
	const PERSIM_BAND  ; 9a
	const INSOMNISCOPE ; 9b
	const LIMBER_BAND  ; 9c
	const MAGMA_VEST   ; 9d
	const FROST_RING   ; 9e
	const RAZOR_FANG   ; 9f
	const RAZOR_CLAW   ; a0
	const SILVER_SCALE ; a1
	const GOLD_SCALE   ; a2
	const STATIC_ORB   ; a3
	const FROZEN_ORB   ; a4
	const FIERY_ORB    ; a5
	const PURPLE_JUICE ; a6
	const RED_JUICE    ; a7
	const YELLOW_JUICE ; a8
	const PINK_JUICE   ; a9
	const BLUE_JUICE   ; aa
	const RARE_SODA    ; ab
	const PRISM_SHAKE  ; ac
	const ITEM_X24     ; ad
	const ITEM_X25     ; ae
	const ITEM_X26     ; af
	const ITEM_X27     ; b0
	const ITEM_X28     ; b1
	const ITEM_X29     ; b2
	const ITEM_X30     ; b3
	const ITEM_X31     ; b4
	const ITEM_X32     ; b5
	const ITEM_X33     ; b6
	const ITEM_X34     ; b7
	const ITEM_X35     ; b8

__tmhm_value__ = 1

add_tm: MACRO
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
; The first usage also defines TM01 as the first TM item id.
if !DEF(TM01)
TM01 EQU const_value
endc
if __tmhm_value__ < 10
MOVE_FOR_TM EQUS "TM0{d:__tmhm_value__}_MOVE"
else
MOVE_FOR_TM EQUS "TM{d:__tmhm_value__}_MOVE"
endc
MOVE_FOR_TM = \1
PURGE MOVE_FOR_TM
	const TM_\1
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

; see data/moves/tmhm_moves.asm for moves
	add_tm DYNAMICPUNCH ; ba  1
	add_tm HEADBUTT     ; bb  2
	add_tm CURSE        ; bc  3
	add_tm SNARL        ; bd  4
	add_tm ROAR         ; be  5
	add_tm TOXIC        ; bf  6
	add_tm ZAP_CANNON   ; c0  7
	add_tm CHARGE_BEAM  ; c2  8
	add_tm HIDDEN_POWER ; c3  9
	add_tm SUNNY_DAY    ; c4 10
	add_tm ENERGY_BALL  ; c5 11
	add_tm ICE_BEAM     ; c6 12
	add_tm BLIZZARD     ; c7 13
	add_tm HYPER_BEAM   ; c8 14
	add_tm ICY_WIND     ; c9 15
	add_tm PROTECT      ; ca 16
	add_tm RAIN_DANCE   ; cb 17
	add_tm GIGA_DRAIN   ; cc 18
	add_tm THUNDERBOLT  ; cd 19
	add_tm CALM_MIND    ; ce 20
	add_tm SOLARBEAM    ; cf 21
	add_tm IRON_TAIL    ; d0 22
	add_tm DRAGONBREATH ; d1 23
	add_tm THUNDER      ; d2 24
	add_tm EARTHQUAKE   ; d3 25
	add_tm RETURN       ; d4 26
	add_tm DIG          ; d5 27
	add_tm PSYCHIC_M    ; d6 28
	add_tm SHADOW_BALL  ; d7 29
	add_tm MUD_SLAP     ; d8 30
	add_tm DOUBLE_TEAM  ; d9 31
	add_tm ICE_PUNCH    ; da 32
	add_tm SWAGGER      ; db 33
	add_tm SLEEP_TALK   ; dc 34
	add_tm SLUDGE_BOMB  ; dd 35
	add_tm SANDSTORM    ; de 36
	add_tm FIRE_BLAST   ; df 37
	add_tm RAZOR_WIND   ; e0 38
	add_tm FLAMETHROWER ; e1 39
	add_tm THUNDERPUNCH ; e2 40
	add_tm DREAM_EATER  ; e3 41
	add_tm ROCK_SLIDE   ; e4 42
	add_tm REST         ; e5 43
	add_tm ATTRACT      ; e6 44
	add_tm THIEF        ; e7 45
	add_tm STEEL_WING   ; e8 46
	add_tm FIRE_PUNCH   ; e9 47
	add_tm FURY_CUTTER  ; ea 48
	add_tm NIGHTMARE    ; eb 49
	add_tm DRAGON_CLAW  ; ec 50
	add_tm WATER_PULSE  ; ed 51
	add_tm DARK_PULSE   ; ee 52
	add_tm FLASH_CANNON ; ef 53
	add_tm HAIL         ; f0 54
	add_tm REFLECT      ; f1 55
	add_tm LIGHT_SCREEN ; f2 56
	add_tm WILL_O_WISP  ; f3 57
	add_tm AURA_SPHERE  ; f4 58
	add_tm SUBSTITUTE   ; f5 59
	add_tm SHADOW_RUSH  ; c1 60
NUM_TMS EQU __tmhm_value__ - 1

add_hm: MACRO
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
; The first usage also defines HM01 as the first TM item id.
if !DEF(HM01)
HM01 EQU const_value
endc
HM_VALUE EQU __tmhm_value__ - NUM_TMS
if HM_VALUE < 10
MOVE_FOR_HM EQUS "HM0{d:HM_VALUE}_MOVE"
else
MOVE_FOR_HM EQUS "HM{d:HM_VALUE}_MOVE"
endc
MOVE_FOR_HM = \1
PURGE MOVE_FOR_HM
PURGE HM_VALUE
	const HM_\1
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

	add_hm CUT          ; f6
	add_hm FLY          ; f7
	add_hm SURF         ; f8
	add_hm STRENGTH     ; f9
	add_hm FLASH        ; fa
	add_hm WHIRLPOOL    ; fb
	add_hm WATERFALL    ; fc
	add_hm ROCK_CLIMB   ; fd
	add_hm ROCK_SMASH   ; fe
	add_hm DIVE         ; b9
NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

add_mt: MACRO
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
MT_VALUE EQU __tmhm_value__ - NUM_TMS - NUM_HMS
if MT_VALUE < 10
MOVE_FOR_MT EQUS "MT0{d:MT_VALUE}_MOVE"
else
MOVE_FOR_MT EQUS "MT{d:MT_VALUE}_MOVE"
endc
MOVE_FOR_MT = \1
PURGE MOVE_FOR_MT
PURGE MT_VALUE
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

	add_mt MIMIC
	add_mt SWIFT
	add_mt OUTRAGE
	add_mt MEGA_PUNCH
	add_mt MEGA_KICK
	add_mt SWORDS_DANCE
	add_mt SEISMIC_TOSS
	add_mt COUNTER
	add_mt THUNDER_WAVE
	add_mt SELFDESTRUCT
	add_mt NIGHT_SHADE
	add_mt EARTH_POWER
	add_mt SUBMISSION
	add_mt TWISTER
	add_mt ROOST
	add_mt HYPER_VOICE
	add_mt PAIN_SPLIT
	add_mt HEAL_BELL
	add_mt SPIKES
	add_mt SACRED_FIRE
	add_mt AEROBLAST
	add_mt VOLT_TACKLE
NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

NUM_TM_HM_TUTOR EQU __tmhm_value__ - 1

USE_SCRIPT_VAR EQU $00
ITEM_FROM_MEM  EQU $ff

; leftovers from red
SAFARI_BALL    EQU $08 ; MOON_STONE
MOON_STONE_RED EQU $0a ; BURN_HEAL
FULL_HEAL_RED  EQU $34 ; X_SPEED

BERRY          EQU $91
GOLD_BERRY     EQU $92
PSNCUREBERRY   EQU $3f
PRZCUREBERRY   EQU $43
BURNT_BERRY    EQU $44
ICE_BERRY      EQU $45
BITTER_BERRY   EQU $48
MINT_BERRY     EQU $49
MIRACLEBERRY   EQU $61
MYSTERYBERRY   EQU $7f
ANTIDOTE       EQU $3f
BURN_HEAL      EQU $44
ICE_HEAL       EQU $45
AWAKENING      EQU $49
PARLYZ_HEAL    EQU $43
SUPER_REPEL    EQU $0e
FLOWER_MAIL    EQU $84
SURF_MAIL      EQU $84
LITEBLUEMAIL   EQU $84
PORTRAITMAIL   EQU $84
LOVELY_MAIL    EQU $84
EON_MAIL       EQU $84
MORPH_MAIL     EQU $84
BLUESKY_MAIL   EQU $84
MUSIC_MAIL     EQU $84
MIRAGE_MAIL    EQU $84
POLKADOT_BOW   EQU $8f

DIRE_HIT       EQU $05 ; to be removed
ETHER          EQU $05
MAX_ETHER      EQU $05
EGG_TICKET     EQU $01
X_ACCURACY     EQU $05
X_ATTACK       EQU $05
X_DEFEND       EQU $05
X_SPEED        EQU $05
GUARD_SPEC     EQU $05
X_SPECIAL      EQU $05

