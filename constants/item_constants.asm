; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
;normal pokeballs
	const POKE_BALL    ; 01
	const GREAT_BALL   ; 02
	const ULTRA_BALL   ; 03
	const MASTER_BALL  ; 04
;normal medicines	
	const POTION       ; 05
	const SUPER_POTION ; 06
	const HYPER_POTION ; 07
	const FULL_HEAL    ; 08
	const FULL_RESTORE ; 09
	const REVIVE       ; 0a
	const MAX_REVIVE   ; 0b
	const ELIXER       ; 0c
	const MAX_ELIXER   ; 0d
;normal misc	
	const REPEL        ; 0e
	const MAX_REPEL    ; 0f
	const ESCAPE_ROPE  ; 10
	const RARE_CANDY   ; 11
	const POKE_DOLL    ; 12
	const MAIL         ; 13 all generic 'MAIL'
;herbal medicine
	const GREEN_TEA    ; 14
	const ENERGY_ROOT  ; 15
	const SOOTHE_BALM  ; 16
	const REVIVAL_HERB ; 17
;vending machine
	const FRESH_WATER  ; 18
	const SODA_POP     ; 19
	const LEMONADE     ; 1a
	const RAGECANDYBAR ; 1b
	const MOOMOO_MILK  ; 1c
;vitamins	
	const HP_UP        ; 1d + HP   EVs
	const PROTEIN      ; 1e + Atk  EVs
	const IRON         ; 1f + Def  EVs
	const CARBOS       ; 20 + Spd  EVs
	const CALCIUM      ; 21 + Spec EVs
	const PP_UP        ; 22 + Move PP
;evolution stones	
	const FIRE_STONE   ; 23
	const THUNDERSTONE ; 24
	const WATER_STONE  ; 25
	const LEAF_STONE   ; 26
	const SUN_STONE    ; 27
	const MOON_STONE   ; 28
	const SHINY_STONE  ; 29
	const DUSK_STONE   ; 2a	
	const ICE_STONE    ; 2b
;shards
	const FIRE_SHARD   ; 2c red    shard, tutor cost, tristone component
	const THUNDERSHARD ; 2d yellow shard, tutor cost, tristone component
	const WATER_SHARD  ; 2e blue   shard, tutor cost, tristone component
	const LEAF_SHARD   ; 2f green  shard, tutor cost
;type boost hold items
	const PINK_BOW     ; 30 boost normal moves
	const CHARCOAL     ; 31 boost fire moves
	const MYSTIC_WATER ; 32 boost water moves
	const MIRACLE_SEED ; 33 boost grass moves
	const SILVERPOWDER ; 34 boost bug moves
	const SHARP_BEAK   ; 35 boost flying moves
	const BLACKBELT_I  ; 36 boost fighting moves
	const HARD_STONE   ; 37 boost rock moves
	const SOFT_SAND    ; 38 boost ground moves
	const POISON_BARB  ; 39 boost poison moves
	const MAGNET       ; 3a boost electric moves
	const NEVERMELTICE ; 3b boost ice moves
	const SPELL_TAG    ; 3c boost ghost moves
	const TWISTEDSPOON ; 3d boost psychic moves
	const BLACKGLASSES ; 3e boost dark moves
	const METAL_COAT   ; 3f boost steel moves, boost ditto defense
	const DRAGON_SCALE ; 40 boost dragon moves
;misc evo items
	const KINGS_ROCK   ; 41 boost flinch chance
	const UP_GRADE     ; 42
	const DUBIOUS_DISC ; 43
	const RAZOR_FANG   ; 44
	const RAZOR_CLAW   ; 45
	const TRISTONE     ; 46 craft with water, fire, and thunder shards
;apricorns
	const BLU_APRICORN ; 47
	const GRN_APRICORN ; 48
	const YLW_APRICORN ; 49
	const RED_APRICORN ; 4a
	const WHT_APRICORN ; 4b
	const BLK_APRICORN ; 4c
	const PNK_APRICORN ; 4d
;apricorn balls
	const LURE_BALL    ; 4e
	const FRIEND_BALL  ; 4f
	const MOON_BALL    ; 50
	const LEVEL_BALL   ; 51
	const FAST_BALL    ; 52
	const HEAVY_BALL   ; 53
	const LOVE_BALL    ; 54
;park ball
	const PARK_BALL    ; 55
;berries
	const ORAN_BERRY   ; 56 hp recovery, mixed, berry juice
	const CHESTO_BERRY ; 57 sleep cure, dry, purple juice
	const RAWST_BERRY  ; 58 burn cure, bitter, green juice
	const ASPEAR_BERRY ; 59 freeze cure, sour, yellow juice
	const CHERI_BERRY  ; 5a paralyze cure, spicy, red juice
	const PECHA_BERRY  ; 5b poison cure, sweet, pink juice
	const LEPPA_BERRY  ; 5c pp recover, mixed, sweet cider
	const PERSIM_BERRY ; 5d confusion cure, mixed, prism drink
	const LUM_BERRY    ; 5e all-cure, mixed, tonic water
	const SITRUS_BERRY ; 5f hp recovery, mixed, revivalade
;berry juices
	const BERRY_JUICE  ; 60 HP restore drink	
	const PURPLE_JUICE ; 61 +HP EVs drink
	const GREEN_JUICE  ; 62 +Spec EVs drink
	const YELLOW_JUICE ; 63 +Def EVs drink
	const RED_JUICE    ; 64 +Atk EVs drink	
	const PINK_JUICE   ; 65 +Sped EVs drink
	const SWEET_CIDER  ; 66 PP restore drink
	const PRISM_SHAKE  ; 67 + happiness drink
	const TONIC_WATER  ; 68 status restore drink
	const REVIVALADE   ; 69 mon revival drink
	const FRUIT_PUNCH  ; 6a HP restore drink
	const RARE_SODA    ; 6b x2 rare candy drink
;berry trader items
	const PECHA_SCARF  ; 6c poison immune hold
	const LIMBER_BAND  ; 6d paralyze immune hold
	const INSOMNISCOPE ; 6e sleep immune hold
	const PERSIM_BAND  ; 6f confusion immune hold	
	const MAGMA_VEST   ; 70 freeze immune hold
	const FROST_RING   ; 71 burn immune hold
;stat boost hold items
	const SCOPE_LENS   ; 72 + crit hold
	const MUSCLE_BAND  ; 73 + attack hold
	const LIGHT_ARMOR  ; 74 + defense hold
	const SWIFT_BOOTS  ; 75 + speed hold
	const WISE_GLASSES ; 76 + sp atk hold
	const PSY_SHIELD   ; 77 + sp def hold
	const WIDE_LENS    ; 78 + accuracy hold
	const BRIGHTPOWDER ; 79 + evade hold
	const LIFE_ORB     ; 7a (effect wip)
;misc hold items
	const LEFTOVERS    ; 7b
	const QUICK_CLAW   ; 7c
	const EXP_SHARE    ; 7d
	const AMULET_COIN  ; 7e
	const FOCUS_BAND   ; 7f
	const CLEANSE_TAG  ; 80
	const LUCKY_EGG    ; 81
	const SMOKE_BALL   ; 82
	const STICK        ; 83
	const THICK_CLUB   ; 84
	const LIGHT_BALL   ; 85
	const EVERSTONE    ; 86
;legendary
	const BERSERK_GENE ; 87
	const SACRED_ASH   ; 88
;rock items
	const GOLD_ORE     ; 89
	const DOME_FOSSIL  ; 8a
	const HELIX_FOSSIL ; 8b
	const OLD_AMBER    ; 8c
;misc treature items
	const SLOWPOKETAIL ; 8d
	const RAREMUSHROOM ; 8e
	const GOLD_LEAF    ; 8f make a use for
	const PEARL        ; 90
	const SILVER_SCALE ; 91
	const SHOAL_SHELL  ; 92
	const STAR_PIECE   ; 93
	const BOTTLE_CAP   ; 94 move reminder cost
	const GOLD_BAND    ; 95
;key items	
	const BICYCLE      ; 96
	const OLD_ROD      ; 97
	const GOOD_ROD     ; 98
	const SUPER_ROD    ; 99
	const ITEMFINDER   ; 9a does anyone ever use this
	const COIN_CASE    ; 9b
	const MYSTERY_EGG  ; 9c
	const BLUE_CARD    ; 9d
	const SQUIRTBOTTLE ; 9e
	const BASEMENT_KEY ; 9f
	const RED_SCALE    ; a0
	const SECRETPOTION ; a1
	const CARD_KEY     ; a2
	const S_S_TICKET   ; a3
	const MACHINE_PART ; a4
	const LOST_ITEM    ; a5
	const PASS         ; a6
	const CLEAR_BELL   ; a7
	const RAINBOW_WING ; a8
	const SILVER_WING  ; a9
	const GS_BALL      ; aa
	const FROZEN_ORB   ; ab articuno-related item
	const STATIC_ORB   ; ac zapdos-related item
	const FIERY_ORB    ; ad moltres-related item
;unused slots
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

; see data/moves/tmhm_moves.asm for moves | b9-f4, 60
	add_tm DYNAMICPUNCH ; b9  1 x
	add_tm DRAGON_CLAW  ; ba  2 x
	add_tm WATER_PULSE  ; bb  3 x
	add_tm CALM_MIND    ; bc  4 x
	add_tm ROAR         ; bd  5 x
	add_tm TOXIC        ; be  6 x
	add_tm HAIL         ; bf  7 x
	add_tm CURSE        ; c0  8 x
	add_tm HEADBUTT     ; c1  9 x
	add_tm HIDDEN_POWER ; c2 10 x
	add_tm SUNNY_DAY    ; c3 11 x
	add_tm SLEEP_TALK   ; c4 12 x
	add_tm ICE_BEAM     ; c5 13 x
	add_tm BLIZZARD     ; c6 14 x
	add_tm HYPER_BEAM   ; c7 15 x
	add_tm LIGHT_SCREEN ; c8 16 x
	add_tm PROTECT      ; c9 17 x
	add_tm RAIN_DANCE   ; ca 18 x
	add_tm GIGA_DRAIN   ; cb 19 x
	add_tm REFLECT      ; cc 20 x
	add_tm SNARL        ; cd 21 x
	add_tm SOLARBEAM    ; ce 22 x
	add_tm IRON_TAIL    ; cf 23 x
	add_tm THUNDERBOLT  ; d0 24 x
	add_tm THUNDER      ; d1 25 x
	add_tm EARTHQUAKE   ; d2 26 x
	add_tm RETURN       ; d3 27 x
	add_tm DIG          ; d4 28 x
	add_tm PSYCHIC_M    ; d5 29 x
	add_tm SHADOW_BALL  ; d6 30 x
	add_tm WILL_O_WISP  ; d7 31 x
	add_tm DOUBLE_TEAM  ; d8 32 x
	add_tm ICE_PUNCH    ; d9 33 x
	add_tm THUNDER_WAVE ; da 34 x
	add_tm FLAMETHROWER ; db 35 x
	add_tm SLUDGE_BOMB  ; dc 36 x
	add_tm SANDSTORM    ; dd 37 x
	add_tm FIRE_BLAST   ; de 38 x
	add_tm ROCK_SLIDE   ; df 39 x
	add_tm ZAP_CANNON   ; e0 40 x
	add_tm THUNDERPUNCH ; e1 41 x
	add_tm DREAM_EATER  ; e2 42 x
	add_tm RAZOR_WIND   ; e3 43 x
	add_tm REST         ; e4 44 x
	add_tm ATTRACT      ; e5 45 x
	add_tm THIEF        ; e6 46 x
	add_tm STEEL_WING   ; e7 47 x
	add_tm FIRE_PUNCH   ; e8 48 x
	add_tm FURY_CUTTER  ; e9 49 x
	add_tm SUBSTITUTE   ; ea 50 x
	add_tm ROOST        ; eb 51 x
	add_tm AURA_SPHERE  ; ec 52 x
	add_tm ENERGY_BALL  ; ed 53 x
	add_tm POISON_JAB   ; ee 54 x
	add_tm SHADOWSTRIKE ; ef 55 x
	add_tm FLASH_CANNON ; f0 56 x
	add_tm CHARGE_BEAM  ; f1 57 x
	add_tm DARK_PULSE   ; f2 58 x
	add_tm DRAGONBREATH ; f3 59 x
	add_tm SHADOW_RUSH  ; f4 60 x
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

	add_hm CUT          ; f5 x
	add_hm FLY          ; f6 x
	add_hm SURF         ; f7 x
	add_hm STRENGTH     ; f8 x
	add_hm FLASH        ; f9 x
	add_hm WHIRLPOOL    ; fa x
	add_hm WATERFALL    ; fb x
	add_hm ROCK_SMASH   ; fc x
	add_hm ROCK_CLIMB   ; fd x
	add_hm DIVE         ; fe x , ff cancel
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

	add_mt MIMIC          ; x
	add_mt SWIFT          ; x
	add_mt OUTRAGE        ; x
	add_mt MEGA_PUNCH     ; x
	add_mt MEGA_KICK      ; x
	add_mt SWORDS_DANCE   ; x
	add_mt SEISMIC_TOSS   ; x
	add_mt COUNTER        ; x
	add_mt LASER_FOCUS    ; x
	add_mt SELFDESTRUCT   ; x
	add_mt NIGHT_SHADE    ; x
	add_mt EARTH_POWER    ; x
	add_mt SUBMISSION     ; x
	add_mt TWISTER        ; x
	add_mt ICY_WIND       ; x
	add_mt HYPER_VOICE    ; x
	add_mt PAIN_SPLIT     ; x
	add_mt HEAL_BELL      ; x
	add_mt SPIKES         ; x
	add_mt WAVE_CRASH     ; x
	add_mt BULLDOZE       ; x
	add_mt SACRED_FIRE    ; x
	add_mt AEROBLAST      ; x
	add_mt VOLT_TACKLE    ; x
NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

NUM_TM_HM_TUTOR EQU __tmhm_value__ - 1

USE_SCRIPT_VAR EQU $00
ITEM_FROM_MEM  EQU $ff

; leftovers from red
SAFARI_BALL    EQU $08 ; MOON_STONE
MOON_STONE_RED EQU $0a ; BURN_HEAL
FULL_HEAL_RED  EQU $34 ; X_SPEED

BERRY          EQU $56
GOLD_BERRY     EQU $5f
PSNCUREBERRY   EQU $5b
PRZCUREBERRY   EQU $5a
BURNT_BERRY    EQU $59
ICE_BERRY      EQU $58
BITTER_BERRY   EQU $5d
MINT_BERRY     EQU $57
MIRACLEBERRY   EQU $5e
MYSTERYBERRY   EQU $5c
ANTIDOTE       EQU $5b
BURN_HEAL      EQU $58
ICE_HEAL       EQU $59
AWAKENING      EQU $57
PARLYZ_HEAL    EQU $5a
SUPER_REPEL    EQU $0e
FLOWER_MAIL    EQU $13
SURF_MAIL      EQU $13
LITEBLUEMAIL   EQU $13
PORTRAITMAIL   EQU $13
LOVELY_MAIL    EQU $13
EON_MAIL       EQU $13
MORPH_MAIL     EQU $13
BLUESKY_MAIL   EQU $13
MUSIC_MAIL     EQU $13
MIRAGE_MAIL    EQU $13
POLKADOT_BOW   EQU $30
MAX_POTION     EQU $07

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
ENERGYPOWDER   EQU $14
HEAL_POWDER    EQU $16
TINYMUSHROOM   EQU $8e
BIG_MUSHROOM   EQU $8e
METAL_POWDER   EQU $3f
NUGGET         EQU $89
SILVER_LEAF    EQU $8f
BIG_PEARL      EQU $90
STARDUST       EQU $93
DRAGON_FANG    EQU $40
GOLD_SCALE     EQU $91
