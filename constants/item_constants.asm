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
	const FIRE_SHARD   ; 2c red    shard, tutor cost, tristone component, terra burst crystal
	const THUNDERSHARD ; 2d yellow shard, tutor cost, tristone component, terra burst crystal
	const WATER_SHARD  ; 2e blue   shard, tutor cost, tristone component, terra burst crystal
	const LEAF_SHARD   ; 2f green  shard, tutor cost, terra burst crystal
	const ICE_SHARD_I  ; 30 terra burst crystal
;type boost hold items
	const PINK_BOW     ; 31 boost normal moves
	const CHARCOAL     ; 32 boost fire moves
	const MYSTIC_WATER ; 33 boost water moves
	const MIRACLE_SEED ; 34 boost grass moves
	const SILVERPOWDER ; 35 boost bug moves
	const SHARP_BEAK   ; 36 boost flying moves
	const BLACKBELT_I  ; 37 boost fighting moves
	const HARD_STONE   ; 38 boost rock moves
	const SOFT_SAND    ; 39 boost ground moves
	const POISON_BARB  ; 3a boost poison moves
	const MAGNET       ; 3b boost electric moves
	const NEVERMELTICE ; 3c boost ice moves
	const SPELL_TAG    ; 3d boost ghost moves
	const TWISTEDSPOON ; 3e boost psychic moves
	const BLACKGLASSES ; 3f boost dark moves
	const METAL_COAT   ; 40 boost steel moves, boost ditto defense
	const DRAGON_SCALE ; 41 boost dragon moves
;misc evo items
	const KINGS_ROCK   ; 42 boost flinch chance
	const UP_GRADE     ; 43
	const DUBIOUS_DISC ; 44
	const RAZOR_FANG   ; 45
	const RAZOR_CLAW   ; 46
	const TRISTONE     ; 47 craft with water, fire, and thunder shards
;apricorns
	const BLU_APRICORN ; 48
	const GRN_APRICORN ; 49
	const YLW_APRICORN ; 4a
	const RED_APRICORN ; 4b
	const WHT_APRICORN ; 4c
	const BLK_APRICORN ; 4d
	const PNK_APRICORN ; 4e
;apricorn balls
	const LURE_BALL    ; 4f
	const FRIEND_BALL  ; 50
	const MOON_BALL    ; 51
	const LEVEL_BALL   ; 52
	const FAST_BALL    ; 53
	const HEAVY_BALL   ; 54
	const LOVE_BALL    ; 55
;park ball
	const PARK_BALL    ; 56
;berries
	const ORAN_BERRY   ; 57 hp recovery, mixed, berry juice
	const CHESTO_BERRY ; 58 sleep cure, dry, purple juice
	const RAWST_BERRY  ; 59 burn cure, bitter, green juice
	const ASPEAR_BERRY ; 5a freeze cure, sour, yellow juice
	const CHERI_BERRY  ; 5b paralyze cure, spicy, red juice
	const PECHA_BERRY  ; 5c poison cure, sweet, pink juice
	const LEPPA_BERRY  ; 5d pp recover, mixed, sweet cider
	const PERSIM_BERRY ; 5e confusion cure, mixed, prism drink
	const LUM_BERRY    ; 5f all-cure, mixed, tonic water
	const SITRUS_BERRY ; 60 hp recovery, mixed, revivalade
;berry juices
	const BERRY_JUICE  ; 61 HP restore drink	
	const PURPLE_JUICE ; 62 +HP EVs drink
	const GREEN_JUICE  ; 63 +Spec EVs drink
	const YELLOW_JUICE ; 64 +Def EVs drink
	const RED_JUICE    ; 65 +Atk EVs drink	
	const PINK_JUICE   ; 66 +Spd EVs drink
	const SWEET_CIDER  ; 67 PP restore drink
	const PRISM_SHAKE  ; 68 + happiness drink
	const TONIC_WATER  ; 69 status restore drink
	const REVIVALADE   ; 6a mon revival drink
	const FRUIT_PUNCH  ; 6b HP restore drink
	const RARE_SODA    ; 6c x2 rare candy drink
;berry trader items
	const PECHA_SCARF  ; 6d poison immune hold
	const LIMBER_BAND  ; 6e paralyze immune hold
	const INSOMNISCOPE ; 6f sleep immune hold
	const PERSIM_BAND  ; 70 confusion immune hold	
	const MAGMA_VEST   ; 71 freeze immune hold
	const FROST_RING   ; 72 burn immune hold
;stat boost hold items
	const SCOPE_LENS   ; 73 + crit hold
	const MUSCLE_BAND  ; 74 + attack hold
	const LIGHT_ARMOR  ; 75 + defense hold
	const SWIFT_BOOTS  ; 76 + speed hold
	const WISE_GLASSES ; 77 + sp atk hold
	const PSY_SHIELD   ; 78 + sp def hold
	const WIDE_LENS    ; 79 + accuracy hold
	const BRIGHTPOWDER ; 7a + evade hold
	const LIFE_ORB     ; 7b (effect wip)
;misc hold items
	const LEFTOVERS    ; 7c
	const QUICK_CLAW   ; 7d
	const EXP_SHARE    ; 7e
	const AMULET_COIN  ; 7f
	const FOCUS_BAND   ; 80
	const CLEANSE_TAG  ; 81
	const LUCKY_EGG    ; 82
	const SMOKE_BALL   ; 83
	const STICK        ; 84
	const THICK_CLUB   ; 85
	const LIGHT_BALL   ; 86
	const EVERSTONE    ; 87
;legendary
	const BERSERK_GENE ; 88
	const SACRED_ASH   ; 89
;rock items
	const GOLD_ORE     ; 8a
	const DOME_FOSSIL  ; 8b
	const HELIX_FOSSIL ; 8c
	const OLD_AMBER    ; 8d
;misc treature items
	const SLOWPOKETAIL ; 8e
	const RAREMUSHROOM ; 8f
	const GOLD_LEAF    ; 90 make a use for
	const PEARL        ; 91
	const SILVER_SCALE ; 92
	const SHOAL_SHELL  ; 93
	const STAR_PIECE   ; 94
	const BOTTLE_CAP   ; 95 move reminder cost
	const GOLD_BAND    ; 96
;key items	
	const BICYCLE      ; 97
	const OLD_ROD      ; 98
	const GOOD_ROD     ; 99
	const SUPER_ROD    ; 9a
	const ITEMFINDER   ; 9b does anyone ever use this
	const COIN_CASE    ; 9c
	const MYSTERY_EGG  ; 9d
	const BLUE_CARD    ; 9e
	const SQUIRTBOTTLE ; 9f
	const BASEMENT_KEY ; a0
	const RED_SCALE    ; a1
	const SECRETPOTION ; a2
	const CARD_KEY     ; a3
	const S_S_TICKET   ; a4
	const MACHINE_PART ; a5
	const LOST_ITEM    ; a6
	const PASS         ; a7
	const CLEAR_BELL   ; a8
	const RAINBOW_WING ; a9
	const SILVER_WING  ; aa
	const GS_BALL      ; ab
	const FROZEN_ORB   ; ac articuno-related item
	const STATIC_ORB   ; ad zapdos-related item
	const FIERY_ORB    ; ae moltres-related item
;unused slots
	const POWER_HERB   ; af
	const WHITE_HERB   ; b0
	const LINK_BRACE   ; b1 (skill link hold item)
	const ITEM_X28     ; b2 maybe macho brace
	const ITEM_X29     ; b3 maybe dusk shard
	const ITEM_X30     ; b4
	const ITEM_X31     ; b5
	const ITEM_X32     ; b6
	const ITEM_X33     ; b7
	const ITEM_X34     ; b8

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
	add_tm DYNAMICPUNCH   ; 1    chuck reward, two island store
	add_tm DRAGON_CLAW    ; 2    route 27 (hgss), battle tower BP
	add_tm WATER_PULSE    ; 3    cerulean gym reward, celadon dept store after defeat
	add_tm CALM_MIND      ; 4    saffron gym reward, battle tower BP
	add_tm ROAR           ; 5    route 32 (gsc), celadon dept store
	add_tm TOXIC          ; 6    (cinnibar mansion?), battle tower BP
	add_tm HAIL           ; 7    pryce reward, goldenrod dept store after defeat
	add_tm CURSE          ; 8    (move earlier) ecruteak city, two island store
	add_tm HEADBUTT       ; 9    ilex, goldenrod dept store (after finding)
	add_tm HIDDEN_POWER   ;10    lake of rage, goldenrod dept store (after finding)
	add_tm SUNNY_DAY      ;11    celadon dept store
	add_tm TAUNT          ;12    mt moon (rby), two island store (after finding)
	add_tm ICE_BEAM       ;13    icefall cave (four island), battle tower BP
	add_tm BLIZZARD       ;14    goldenrod game corner
	add_tm HYPER_BEAM     ;15    celadon game corner
	add_tm LIGHT_SCREEN   ;16    route 27 (gsc), celadon game corner
	add_tm PROTECT        ;17    miltank cure reward?, celedon dept store
	add_tm RAIN_DANCE     ;18    celadon dept store
	add_tm GIGA_DRAIN     ;19    celedon gym reward, two island store (after defeating)
	add_tm REFLECT        ;20    (idk, somewhere), celadon game corner
	add_tm SNARL          ;21    team rocket hideout goldenrod, two island store
	add_tm SOLARBEAM      ;22    celadon dept store
	add_tm IRON_TAIL      ;23    jasmine reward, two island store
	add_tm THUNDERBOLT    ;24    burned tower (require strength), battle tower BP
	add_tm THUNDER        ;25    goldenrod game corner
	add_tm EARTHQUAKE     ;26    viridian gym reward, battle tower BP
	add_tm ZAP_CANNON     ;27    power plant, two island store (after receiving)
	add_tm DIG            ;28    national park, celadon dept store
	add_tm PSYCHIC_M      ;29    saffron city psychic house, battle tower BP
	add_tm SHADOW_BALL    ;30    morty reward, battle tower BP
	add_tm WILL_O_WISP    ;31    (lavender town), battle tower BP
	add_tm DOUBLE_TEAM    ;32    route 34 gatehouse(?), celadon dept store
	add_tm ICE_PUNCH      ;33    goldenrod dept store
	add_tm THUNDER_WAVE   ;34    (west of vermillion), battle tower BP
	add_tm FLAMETHROWER   ;35    cinnabar gym reward, battle tower BP
	add_tm SLUDGE_BOMB    ;36    route 43 (gsc), battle tower BP
	add_tm SANDSTORM      ;37    two island base store
	add_tm FIRE_BLAST     ;38    goldenrod game corner
	add_tm ROCK_SLIDE     ;39    pewter gym reward, battle tower BP
	add_tm AERIAL_ACE     ;40    goldenrod dept store
	add_tm THUNDERPUNCH   ;41    goldenrod dept store
	add_tm U_TURN         ;42    bugsy reward, two island store
	add_tm RAZOR_WIND     ;43    (move to two island base store),(add a finable location?)
	add_tm REST           ;44    route 9 (frlg), celadon dept store (after finding)
	add_tm ATTRACT        ;45    whitney reward, goldenrod dept store after defeat
	add_tm THIEF          ;46    mahogany rocket hideout (gsc), two island store?
	add_tm STEEL_WING     ;47    (move earlier, route to johto safari?), golden dept store (af)
	add_tm FIRE_PUNCH     ;48    goldenrod dept store
	add_tm AURA_SPHERE    ;49    (one island?), goldenrod dept store (after finding)
	add_tm SUBSTITUTE     ;50    (add findable location?), battle tower BP
	add_tm ROOST          ;51    falkner reward, two island store
	add_tm X_SCISSOR      ;52    (six island?), battle tower BP
	add_tm ENERGY_BALL    ;53    (three island?), battle tower BP
	add_tm POISON_JAB     ;54    fuschia gym reward, battle tower BP
	add_tm SHADOW_CLAW    ;55    (johto ?), celadon dept store(after fidning)?
	add_tm DARK_PULSE     ;56    five island rocket hideout?, battle tower BP
	add_tm CHARGE_BEAM    ;57    vermillion gym, celadon dept store after defeat	
	add_tm FLASH_CANNON   ;58    route 28 (replaces steel wing), battle tower BP
	add_tm DRAGON_PULSE   ;59    clair reward, battle tower BP
	add_tm TERA_BURST     ;60    special npc, two island store (after receiving)
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

	add_mt MIMIC          ;01  goldenrod coin tutor
	add_mt SWIFT          ;02  g2 set 1, ??
	add_mt SLEEP_TALK     ;03  goldenrod coin tutor
	add_mt OUTRAGE        ;04
	add_mt MEGA_PUNCH     ;05  saffron fighting dojo?
	add_mt MEGA_KICK      ;06  saffron fighting dojo?
	add_mt SWORDS_DANCE   ;07  sevii island seven bridge (like frlg?)
	add_mt SEISMIC_TOSS   ;08  a cianwood dogp fighter?
	add_mt COUNTER        ;09  a cianwood dogp fighter?
	add_mt SELFDESTRUCT   ;10  kindle road / mt ember (frlg)?
	add_mt NIGHT_SHADE    ;11  g2 set 1, ??
	add_mt EARTH_POWER    ;12  mt ember
	add_mt SUBMISSION     ;13
	add_mt TWISTER        ;14  g2 set 1, ??
	add_mt ICY_WIND       ;15  tutor in ice path?
	add_mt HYPER_VOICE    ;16
	add_mt PAIN_SPLIT     ;17
	add_mt HEAL_BELL      ;18
	add_mt SPIKES         ;19  Mahogany or Fuschia?
	add_mt HEAT_WAVE      ;20  g3 set 1, ??
	add_mt BULLDOZE       ;21
	add_mt AQUA_TAIL      ;22  g4+ set 1, ??
	add_mt OMINOUS_WIND   ;23  g3 set 1, ??
	add_mt SIGNAL_BEAM    ;24  g3 set 1, ??
	add_mt SEED_BOMB      ;25
	add_mt SCALD          ;26  cerulean, or kindle road hotsprings ?
	add_mt DOUBLE_EDGE    ;27  victory road? (like frlg)
	add_mt WEATHER_BALL   ;28
	add_mt WAVE_CRASH     ;29
	add_mt FRENZY_PLANT   ;30
	add_mt SACRED_FIRE    ;31  sage in two island Cape Brink house
	add_mt AEROBLAST      ;32  sage in two island Cape Brink house
	add_mt VOLT_TACKLE    ;33  sage in two island Cape Brink house
	add_mt SHADOW_RUSH    ;34 (some team rocket location / npc)
	add_mt METEOR_STORM   ;    late game, Sevii island Sevault canyon house?
	add_mt ACID_RAIN
	add_mt SEARING_SAND
	add_mt KNOCK_OFF      ;    g4+ set 1, ??
	add_mt IRON_HEAD      ;    g4+ set 1, ??
	add_mt MAELSTROM
	add_mt RETURN         ;    Goldenrod Dept store
	add_mt DREAM_EATER    ;    Viridian (current tm location)
	add_mt FURY_CUTTER    ;    a bug catcher in a dead-end or hidden base in Ilex?
	add_mt FOCUS_BLAST
	add_mt FACADE
	add_mt SLAM
	add_mt GALE_WIND
	add_mt DRILL_RUN
	add_mt AVALANCHE
	add_mt SHOCK_WAVE     ;consider low kick, toxic spikes, iron defense, luster bash etc
NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

NUM_TM_HM_TUTOR EQU __tmhm_value__ - 1

USE_SCRIPT_VAR EQU $00
ITEM_FROM_MEM  EQU $ff

; leftovers from red
SAFARI_BALL    EQU $08 ; MOON_STONE
MOON_STONE_RED EQU $0a ; BURN_HEAL
FULL_HEAL_RED  EQU $34 ; X_SPEED

BERRY          EQU $57
GOLD_BERRY     EQU $60
PSNCUREBERRY   EQU $5c
PRZCUREBERRY   EQU $5b
BURNT_BERRY    EQU $5a
ICE_BERRY      EQU $59
BITTER_BERRY   EQU $5e
MINT_BERRY     EQU $58
MIRACLEBERRY   EQU $5f
MYSTERYBERRY   EQU $5d
ANTIDOTE       EQU $08
BURN_HEAL      EQU $08
ICE_HEAL       EQU $08
AWAKENING      EQU $08
PARLYZ_HEAL    EQU $08
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
POLKADOT_BOW   EQU $31
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
TINYMUSHROOM   EQU $8f
BIG_MUSHROOM   EQU $8f
METAL_POWDER   EQU $40
NUGGET         EQU $8a
SILVER_LEAF    EQU $90
BIG_PEARL      EQU $91
STARDUST       EQU $94
DRAGON_FANG    EQU $41
GOLD_SCALE     EQU $92
