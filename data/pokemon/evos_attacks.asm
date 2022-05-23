INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * dbbw EVOLVE_LEVEL, level, species
;    * dbbw EVOLVE_ITEM, used item, species
;    * dbbw EVOLVE_TRADE, held item (or -1 for none), species
;    * dbbw EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * dbbbw EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"
INCLUDE "data/pokemon/evolution_moves.asm"

EvosAttacks::

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 19, RAZOR_LEAF
	db 22, SWEET_SCENT
	db 27, GROWTH
	db 33, TAKE_DOWN
	db 39, SYNTHESIS
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 30, GROWTH
	db 32, TAKE_DOWN
	db 44, SYNTHESIS
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTH_POWER
	db 1, SLUDGE_BOMB
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 30, GROWTH
	db 32, TAKE_DOWN
	db 40, PETAL_DANCE
	db 47, SYNTHESIS
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 19, SCARY_FACE
	db 25, DRAGONBREATH
	db 31, FLAMETHROWER
	db 37, SLASH
	db 40, DRAGON_RAGE
	db 45, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 21, SCARY_FACE
	db 27, DRAGONBREATH
	db 34, FLAMETHROWER
	db 39, SLASH
	db 46, DRAGON_RAGE
	db 50, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, WING_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 21, SCARY_FACE
	db 27, DRAGONBREATH
	db 34, FLAMETHROWER
	db 42, SLASH
	db 50, DRAGON_RAGE
	db 55, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, HARDEN
	db 13, WATER_GUN
	db 16, BITE
	db 19, RAPID_SPIN
	db 23, PROTECT
	db 27, WATER_PULSE
	db 33, SKULL_BASH
	db 39, RAIN_DANCE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, HARDEN
	db 13, WATER_GUN
	db 16, BITE
	db 22, RAPID_SPIN
	db 25, PROTECT
	db 32, WATER_PULSE
	db 38, SKULL_BASH
	db 44, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, HARDEN
	db 13, WATER_GUN
	db 16, BITE
	db 22, RAPID_SPIN
	db 25, PROTECT
	db 32, WATER_PULSE
	db 41, SKULL_BASH
	db 49, RAIN_DANCE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 10, CONFUSION
	db 14, POISONPOWDER
	db 14, STUN_SPORE
	db 14, SLEEP_POWDER
	db 19, SUPERSONIC
	db 22, WHIRLWIND
	db 28, SILVER_WIND
	db 34, PSYBEAM
	db 40, SAFEGUARD
	db 47, MORNING_SUN
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TWINEEDLE
	db 13, FOCUS_ENERGY
	db 16, FURY_ATTACK
	db 19, RAGE
	db 22, PURSUIT
	db 28, PIN_MISSILE
	db 34, AGILITY
	db 40, FURY_CUTTER
	db 47, SLUDGE_BOMB
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 18, TWISTER
	db 24, WHIRLWIND
	db 29, WING_ATTACK
	db 32, AGILITY
	db 37, ROOST
	db 47, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, FEATHERDANCE
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 18, TWISTER
	db 27, WHIRLWIND
	db 33, WING_ATTACK
	db 39, AGILITY
	db 42, TAKE_DOWN
	db 47, ROOST
	db 50, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, FEATHERDANCE
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 18, TWISTER
	db 27, WHIRLWIND
	db 33, WING_ATTACK
	db 42, AGILITY
	db 47, TAKE_DOWN
	db 51, ROOST
	db 55, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 16, SUPER_FANG
	db 20, TAKE_DOWN
	db 27, PURSUIT
	db 34, HYPER_FANG
	db 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 16, SUPER_FANG
	db 20, TAKE_DOWN
	db 29, PURSUIT
	db 38, HYPER_FANG
	db 47, CRUNCH
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 13, FURY_ATTACK
	db 17, PURSUIT
	db 21, FOCUS_ENERGY
	db 29, MIRROR_MOVE
	db 37, AGILITY
	db 43, ROOST
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 13, FURY_ATTACK
	db 17, PURSUIT
	db 24, FOCUS_ENERGY
	db 32, MIRROR_MOVE
	db 39, AGILITY
	db 45, DRILL_PECK
	db 52, ROOST
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_FANG
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 21, POISON_FANG
	db 33, HAZE
	db 37, MUD_SHOT
	db 43, SLUDGE_BOMB
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, DIG
	db 1, WRAP
	db 1, LEER
	db 4, POISON_FANG
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 21, POISON_FANG
	db 35, HAZE
	db 43, MUD_SHOT
	db 47, SLUDGE_BOMB
	db 53, CRUNCH
	db 0 ; no more level-up moves

PichuEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	dbbw EVOLVE_ITEM, SHINY_STONE, RAICHU_ALOLAN ;temp method
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 5, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 20, SPARK
	db 25, DOUBLE_TEAM
	db 31, THUNDERBOLT
	db 37, AGILITY
	db 43, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_PUNCH
	db 1, JUMP_KICK
	db 1, THUNDERSHOCK
	db 5, TAIL_WHIP
	db 12, THUNDER_WAVE
	db 17, QUICK_ATTACK
	db 24, SPARK
	db 29, DOUBLE_TEAM
	db 37, THUNDERBOLT
	db 42, AGILITY
	db 46, SLAM
	db 55, THUNDER
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 7, POISON_STING
	db 11, MUD_SLAP
	db 15, SWIFT
	db 19, ROLLOUT
	db 24, FURY_SWIPES
	db 30, DIG
	db 36, SANDSTORM
	db 45, MAGNITUDE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 7, POISON_STING
	db 11, MUD_SLAP
	db 15, SWIFT
	db 19, ROLLOUT
	db 27, FURY_SWIPES
	db 38, DIG
	db 43, SANDSTORM
	db 51, MAGNITUDE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, SCRATCH
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, BITE
	db 27, CHARM
	db 32, POISON_FANG
	db 38, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, SCRATCH
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 22, BITE
	db 29, CHARM
	db 36, POISON_FANG
	db 41, FURY_SWIPES
	db 46, CRUNCH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, SCRATCH
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 22, COUNTER
	db 29, CHARM
	db 36, SLUDGE_BOMB
	db 42, EARTH_POWER
	db 50, SUBMISSION
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, PECK
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, HORN_ATTACK
	db 27, FOCUS_ENERGY
	db 32, TWINEEDLE
	db 38, FURY_ATTACK
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, PECK
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 22, HORN_ATTACK
	db 29, FOCUS_ENERGY
	db 36, TWINEEDLE
	db 41, FURY_ATTACK
	db 46, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, TACKLE
	db 1, LEER
	db 7, PECK
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 22, COUNTER
	db 29, FOCUS_ENERGY
	db 36, SLUDGE_BOMB
	db 42, EARTH_POWER
	db 50, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 3, ENCORE
	db 5, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 19, MINIMIZE
	db 22, COSMIC_POWER
	db 29, METRONOME
	db 34, MOONLIGHT
	db 40, LIGHT_SCREEN
	db 48, TRI_ATTACK
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 12, DOUBLESLAP
	db 15, DEFENSE_CURL
	db 21, MINIMIZE
	db 28, COSMIC_POWER
	db 34, METRONOME
	db 41, MOONLIGHT
	db 46, LIGHT_SCREEN
	db 54, TRI_ATTACK
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 17, CONFUSE_RAY
	db 21, FAINT_ATTACK
	db 27, WILL_O_WISP
	db 33, SAFEGUARD
	db 37, FLAMETHROWER
	db 44, SPITE
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 17, CONFUSE_RAY
	db 23, FAINT_ATTACK
	db 29, WILL_O_WISP
	db 35, HEX
	db 41, FLAMETHROWER
	db 47, SPITE
	db 52, FIRE_SPIN
	db 59, SHADOW_BALL
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, DEFENSE_CURL
	db 4, POUND
	db 9, SWEET_KISS
	db 13, DISABLE
	db 17, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, SLAM
	db 39, MIMIC
	db 43, HYPER_VOICE
	db 49, TAKE_DOWN
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DEFENSE_CURL
	db 4, POUND
	db 9, SWEET_KISS
	db 13, DISABLE
	db 19, ROLLOUT
	db 26, DOUBLESLAP
	db 31, REST
	db 38, SLAM
	db 42, MIMIC
	db 47, HYPER_VOICE
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SUPERSONIC
	db 12, POISON_FANG
	db 17, CONFUSE_RAY
	db 21, WING_ATTACK
	db 25, MEAN_LOOK
	db 29, SWIFT
	db 36, LEECH_LIFE
	db 42, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SUPERSONIC
	db 12, POISON_FANG
	db 17, CONFUSE_RAY
	db 21, WING_ATTACK
	db 29, MEAN_LOOK
	db 34, SWIFT
	db 37, SCREECH
	db 43, LEECH_LIFE
	db 50, HAZE
	db 0 ; no more level-up moves
	
CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLUDGE_BOMB
	db 1, BITE
	db 1, SUPERSONIC
	db 12, POISON_FANG
	db 17, CONFUSE_RAY
	db 21, WING_ATTACK
	db 29, MEAN_LOOK
	db 34, SWIFT
	db 39, SCREECH
	db 46, LEECH_LIFE
	db 55, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, CHARM
	db 5, SWEET_SCENT
	db 9, SLUDGE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 23, MEGA_DRAIN
	db 29, MOONLIGHT
	db 33, FLAIL
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, CHARM
	db 5, SWEET_SCENT
	db 9, SLUDGE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 25, MEGA_DRAIN
	db 34, MOONLIGHT
	db 37, FLAIL
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, CHARM
	db 5, SWEET_SCENT
	db 9, SLUDGE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 25, MEGA_DRAIN
	db 36, MOONLIGHT
	db 39, FLAIL
	db 45, PETAL_DANCE
	db 52, SLUDGE_BOMB
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, STUN_SPORE
	db 11, POISONPOWDER
	db 17, FURY_CUTTER
	db 22, SPORE
	db 32, GIGA_DRAIN
	db 37, GROWTH
	db 43, LEECH_LIFE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SCRATCH
	db 5, STUN_SPORE
	db 11, POISONPOWDER
	db 17, FURY_CUTTER
	db 22, SPORE
	db 35, GIGA_DRAIN
	db 43, GROWTH
	db 54, LEECH_LIFE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, POISON_FANG
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 35, LEECH_LIFE
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, SILVER_WIND
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, POISON_FANG
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 36, GUST
	db 47, MOONLIGHT
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 5, GROWL
	db 12, MAGNITUDE
	db 18, FAINT_ATTACK
	db 25, MUD_SHOT
	db 29, DIG
	db 34, FURY_SWIPES
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 5, GROWL
	db 12, MAGNITUDE
	db 18, FAINT_ATTACK
	db 25, MUD_SHOT
	db 32, DIG
	db 37, SLASH
	db 49, EARTHQUAKE
	db 56, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 13, FURY_SWIPES
	db 17, SCREECH
	db 24, THIEF
	db 32, PAY_DAY
	db 39, CHARM
	db 45, FAINT_ATTACK
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 1, SLASH
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 13, FURY_SWIPES
	db 17, SCREECH
	db 24, THIEF
	db 35, SWIFT
	db 41, CHARM
	db 48, POWER_GEM
	db 57, FAINT_ATTACK
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 27, FURY_SWIPES
	db 31, WATER_PULSE
	db 35, SCREECH
	db 39, PSYCH_UP
	db 46, AMNESIA
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 27, FURY_SWIPES
	db 31, WATER_PULSE
	db 38, SCREECH
	db 42, PSYCH_UP
	db 49, AMNESIA
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, LOW_KICK
	db 12, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 21, KARATE_CHOP
	db 27, SEISMIC_TOSS
	db 33, SCREECH
	db 39, SWAGGER
	db 45, CROSS_CHOP
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, SCRATCH
	db 1, LEER
	db 5, LOW_KICK
	db 12, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 21, KARATE_CHOP
	db 27, SEISMIC_TOSS
	db 36, SCREECH
	db 44, SWAGGER
	db 51, CROSS_CHOP
	db 57, THRASH
	db 63, SUBMISSION
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 6, HOWL
	db 9, BITE
	db 14, FORESIGHT
	db 19, FLAME_WHEEL
	db 25, REVERSAL
	db 34, TAKE_DOWN
	db 39, FLAMETHROWER
	db 42, AGILITY
	db 45, CRUNCH
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXTREMESPEED
	db 1, EMBER
	db 1, LEER
	db 7, ROAR
	db 13, BITE
	db 21, FLAME_WHEEL
	db 34, REVERSAL
	db 42, TAKE_DOWN
	db 50, FLAMETHROWER
	db 54, AGILITY
	db 61, CRUNCH
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, SLAM
	db 25, BUBBLEBEAM
	db 31, MUD_SHOT
	db 37, BELLY_DRUM
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, SLAM
	db 25, BUBBLEBEAM
	db 35, MUD_SHOT
	db 41, BELLY_DRUM
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, SEISMIC_TOSS
	db 1, BUBBLE
	db 5, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, SLAM
	db 25, BUBBLEBEAM
	db 35, COUNTER
	db 43, BELLY_DRUM
	db 51, SWAGGER
	db 57, SUBMISSION
	db 0 ; no more level-up moves
	
PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, PERISH_SONG
	db 1, BUBBLE
	db 5, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, SLAM
	db 25, BUBBLEBEAM
	db 35, SWAGGER
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 57, HYPER_VOICE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 10, HIDDEN_POWER
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbbw EVOLVE_ITEM, SHINY_STONE, ALAKAZAM
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, TELEPORT
	db 10, HIDDEN_POWER
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, REFLECT
	db 32, RECOVER
	db 38, PSYCHO_CUT
	db 42, CALM_MIND
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, TELEPORT
	db 10, HIDDEN_POWER
	db 18, DISABLE
	db 25, PSYBEAM
	db 31, REFLECT
	db 37, RECOVER
	db 42, PSYCHO_CUT
	db 49, CALM_MIND
	db 56, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 12, KARATE_CHOP
	db 19, FORESIGHT
	db 25, SEISMIC_TOSS
	db 31, SCARY_FACE
	db 37, SUBMISSION
	db 43, ENDURE
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 12, KARATE_CHOP
	db 19, FORESIGHT
	db 25, SEISMIC_TOSS
	db 34, SCARY_FACE
	db 43, SUBMISSION
	db 49, ENDURE
	db 56, CROSS_CHOP
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, DYNAMICPUNCH
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 12, KARATE_CHOP
	db 19, FORESIGHT
	db 25, SEISMIC_TOSS
	db 35, SCARY_FACE
	db 44, SUBMISSION
	db 53, ENDURE
	db 61, CROSS_CHOP
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SWEET_KISS
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, SLUDGE
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SWEET_KISS
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, SLUDGE
	db 33, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 27, SLUDGE
	db 38, SWEET_SCENT
	db 45, RAZOR_LEAF
	db 57, SLAM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP
	db 15, WATER_GUN
	db 24, SLUDGE
	db 29, ACID_ARMOR
	db 33, BUBBLEBEAM
	db 37, SCREECH
	db 43, SLUDGE_WAVE
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEX
	db 1, SLUDGE_BOMB
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP
	db 15, WATER_GUN
	db 24, SLUDGE
	db 29, ACID_ARMOR
	db 35, BUBBLEBEAM
	db 41, SCREECH
	db 47, SLUDGE_WAVE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, MUD_SLAP
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, ROLLOUT
	db 27, SELFDESTRUCT
	db 36, ROCK_SLIDE
	db 41, EARTHQUAKE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, MUD_SLAP
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, ROLLOUT
	db 32, SELFDESTRUCT
	db 39, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, MUD_SLAP
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, ROLLOUT
	db 32, SELFDESTRUCT
	db 39, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 57, DOUBLE_EDGE
	db 62, FISSURE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 9, EMBER
	db 13, STOMP
	db 19, FLAME_WHEEL
	db 25, FIRE_SPIN
	db 34, TAKE_DOWN
	db 37, AGILITY
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 9, EMBER
	db 13, STOMP
	db 19, FLAME_WHEEL
	db 25, FIRE_SPIN
	db 34, TAKE_DOWN
	db 37, AGILITY
	db 50, FIRE_BLAST
	db 57, MEGAHORN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	dbbw EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 27, WATER_PULSE
	db 36, RECOVER
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 52, PSYCH_UP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 27, WATER_PULSE
	db 36, RECOVER
	db 45, AMNESIA
	db 49, RAIN_DANCE
	db 54, PSYCHIC_M
	db 59, PSYCH_UP
	db 0 ; no more level-up moves
	
SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, RECOVER
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 15, CONFUSION
	db 21, DISABLE
	db 28, HEADBUTT
	db 32, WATER_PULSE
	db 37, CALM_MIND
	db 45, SWAGGER
	db 48, PSYCHIC_M
	db 55,PSYCH_UP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, THUNDER_WAVE
	db 22, HIDDEN_POWER
	db 27, SPARK
	db 31, FLASH_CANNON
	db 39, SCREECH
	db 41, LOCK_ON
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, THUNDER_WAVE
	db 22, HIDDEN_POWER
	db 27, SPARK
	db 35, FLASH_CANNON
	db 43, SCREECH
	db 49, LOCK_ON
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, WU_DUK
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 1, LEER
	db 7, FURY_ATTACK
	db 13, FURY_CUTTER
	db 19, PURSUIT
	db 24, SWORDS_DANCE
	db 29, RAZOR_LEAF
	db 34, AGILITY
	db 38, WING_ATTACK
	db 43, SLASH
	db 49, FALSE_SWIPE
	db 0 ; no more level-up moves
	
WuDukEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, REVERSAL
	db 1, PECK
	db 1, SAND_ATTACK
	db 1, LEER
	db 7, FURY_ATTACK
	db 13, FURY_CUTTER
	db 19, PURSUIT
	db 24, SWORDS_DANCE
	db 29, RAZOR_LEAF
	db 35, WING_ATTACK
	db 44, SLASH
	db 51, FALSE_SWIPE
	db 56, CROSS_CHOP
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_ATTACK
	db 19, PURSUIT
	db 25, FLAIL
	db 33, AGILITY
	db 37, DRILL_PECK
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_ATTACK
	db 19, PURSUIT
	db 25, FLAIL
	db 35, AGILITY
	db 41, DRILL_PECK
	db 47, TAKE_DOWN
	db 52, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, POWDER_SNOW
	db 15, ENCORE
	db 21, REST
	db 27, AURORA_BEAM
	db 32, TAKE_DOWN
	db 37, BUBBLEBEAM
	db 43, HAIL
	db 48, SAFEGUARD
	db 54, ICE_BEAM
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, POWDER_SNOW
	db 15, ENCORE
	db 21, REST
	db 27, AURORA_BEAM
	db 32, TAKE_DOWN
	db 41, BUBBLEBEAM
	db 47, HAIL
	db 56, SAFEGUARD
	db 60, ICE_BEAM
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, POUND
	db 4, HARDEN
	db 7, DISABLE
	db 12, SLUDGE
	db 17, MINIMIZE
	db 21, MUD_SHOT
	db 28, BEAT_UP
	db 31, SCREECH
	db 36, SLUDGE_BOMB
	db 42, ACID_ARMOR
	db 50, SLUDGE_WAVE
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, SMOG
	db 1, POUND
	db 4, HARDEN
	db 7, DISABLE
	db 12, SLUDGE
	db 17, MINIMIZE
	db 21, MUD_SHOT
	db 28, BEAT_UP
	db 31, SCREECH
	db 36, SLUDGE_BOMB
	db 45, ACID_ARMOR
	db 52, SLUDGE_WAVE
	db 59, SPITE
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 8, SUPERSONIC
	db 13, ICY_WIND
	db 21, PROTECT
	db 28, CLAMP
	db 35, AURORA_BEAM
	db 39, WHIRLPOOL
	db 45, ICE_BEAM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKE_CANNON
	db 1, TACKLE
	db 1, HARDEN
	db 8, SUPERSONIC
	db 13, ICY_WIND
	db 24, PROTECT
	db 30, CLAMP
	db 36, AURORA_BEAM
	db 40, WHIRLPOOL
	db 47, SPIKES
	db 53, ICICLE_CRASH
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 5, SMOG
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 21, CONFUSE_RAY
	db 28, MEAN_LOOK
	db 33, DREAM_EATER
	db 36, SHADOW_BALL
	db 42, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbbw EVOLVE_ITEM, DUSK_STONE, GENGAR
	db 0 ; no more evolutions
	db 1, SHADOW_PUNCH
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 5, SMOG
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 21, CONFUSE_RAY
	db 27, PURSUIT
	db 32, MEAN_LOOK
	db 39, DREAM_EATER
	db 45, SHADOW_BALL
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, DARK_PULSE
	db 1, SHADOW_PUNCH
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 5, SMOG
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 21, CONFUSE_RAY
	db 29, PURSUIT
	db 35, MEAN_LOOK
	db 42, DREAM_EATER
	db 48, SHADOW_BALL
	db 54, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP
	db 7, ROCK_THROW
	db 13, SCREECH
	db 25, SLAM
	db 33, DRAGONBREATH
	db 38, CURSE
	db 44, ROCK_SLIDE
	db 49, DIG
	db 54, SANDSTORM
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, ROCK_SLIDE
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP
	db 7, ROCK_THROW
	db 15, SCREECH
	db 27, SLAM
	db 35, DRAGONBREATH
	db 42, CURSE
	db 47, IRON_TAIL
	db 53, DIG
	db 55, SANDSTORM
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, SMOG
	db 25, PSYBEAM 
	db 37, SWAGGER
	db 43, PSYCH_UP
	db 49, PSYCHIC_M
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHTMARE
	db 1, POUND
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, SMOG
	db 25, PSYBEAM 
	db 38, SWAGGER
	db 47, PSYCHIC_M
	db 55, PSYCH_UP
	db 61, PSYCHO_CUT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 5, HARDEN
	db 9, METAL_CLAW
	db 12, MUD_SHOT
	db 16, STOMP
	db 23, BUBBLEBEAM
	db 27, PROTECT
	db 31, GUILLOTINE
	db 35, SLAM
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 5, HARDEN
	db 9, METAL_CLAW
	db 12, MUD_SHOT
	db 16, STOMP
	db 23, BUBBLEBEAM
	db 27, PROTECT
	db 35, GUILLOTINE
	db 42, SLAM
	db 49, CRABHAMMER
	db 54, COUNTER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SONICBOOM
	db 1, SPARK
	db 9, ROLLOUT
	db 12, SCREECH
	db 19, THUNDER_WAVE
	db 26, SELFDESTRUCT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 41, THUNDERBOLT
	db 46, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SONICBOOM
	db 1, SPARK
	db 9, ROLLOUT
	db 12, SCREECH
	db 19, THUNDER_WAVE
	db 26, SELFDESTRUCT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, THUNDERBOLT
	db 48, MIRROR_COAT
	db 57, EXPLOSION
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 15, ROLLOUT
	db 19, STUN_SPORE
	db 23, POISONPOWDER
	db 27, SLEEP_POWDER
	db 35, SELFDESTRUCT
	db 43, SOLARBEAM
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAZOR_LEAF
	db 1, CONFUSION
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 21, STUN_SPORE
	db 25, POISONPOWDER
	db 28, SLEEP_POWDER
	db 39, STOMP
	db 45, SOLARBEAM
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	dbbw EVOLVE_ITEM, DUSK_STONE, MAROWAK_ALOLAN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, BONE_CLUB
	db 13, HEADBUTT
	db 17, FOCUS_ENERGY
	db 23, RAGE
	db 27, BONEMERANG
	db 32, FALSE_SWIPE
	db 37, THRASH
	db 41, THIEF
	db 43, BONE_RUSH
	db 47, TAKE_DOWN
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKULL_BASH
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, BONE_CLUB
	db 13, HEADBUTT
	db 17, FOCUS_ENERGY
	db 23, RAGE
	db 27, BONEMERANG
	db 34, FALSE_SWIPE
	db 39, THRASH
	db 46, THIEF
	db 53, BONE_RUSH
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
TyrogueEvosAttacks:
	dbbw EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	dbbw EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	dbbw EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 7, FORESIGHT
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 1, TACKLE
	db 7, FORESIGHT
	db 21, FOCUS_ENERGY
	db 26, LOW_KICK 
	db 31, SWAGGER
	db 36, JUMP_KICK
	db 41, ENDURE
	db 46, MEGA_KICK
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, TACKLE
	db 7, FORESIGHT
	db 21, AGILITY
	db 26, PURSUIT
	db 31, MACH_PUNCH
	db 36, THUNDERPUNCH
	db 36, ICE_PUNCH
	db 36, FIRE_PUNCH
	db 41, MEGA_PUNCH
	db 46, COUNTER
	db 51, SUBMISSION
	db 0 ; no more level-up moves
	
HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, TACKLE
	db 7, FORESIGHT
	db 21, DOUBLE_KICK
	db 26, FOCUS_ENERGY
	db 31, PURSUIT
	db 36, QUICK_ATTACK
	db 41, COUNTER
	db 46, PROTECT
	db 51, AGILITY
	db 56, SUBMISSION 
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 17, THIEF
	db 21, WRAP
	db 25, DISABLE
	db 31, STOMP
	db 33, SCREECH
	db 37, ROLLOUT
	db 45, SLAM
	db 54, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, TACKLE
	db 9, SMOKESCREEN
	db 17, SLUDGE
	db 21, HAZE
	db 25, SELFDESTRUCT
	db 33, TOXIC
	db 38, SLUDGE_BOMB
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, TACKLE
	db 9, SMOKESCREEN
	db 17, SLUDGE
	db 21, HAZE
	db 25, SELFDESTRUCT
	db 33, TOXIC
	db 41, SLUDGE_BOMB
	db 46, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, STOMP
	db 12, ROCK_THROW
	db 19, FURY_ATTACK
	db 23, SCARY_FACE
	db 30, MAGNITUDE
	db 34, TAKE_DOWN
	db 41, ROCK_SLIDE
	db 44, SKULL_BASH
	db 47, EARTHQUAKE
	db 52, MEGAHORN
	db 0 ; no more l evel-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_DRILL
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, STOMP
	db 12, ROCK_THROW
	db 19, FURY_ATTACK
	db 23, SCARY_FACE
	db 30, MAGNITUDE
	db 34, TAKE_DOWN
	db 41, ROCK_SLIDE
	db 47, COUNTER
	db 55, EARTHQUAKE
	db 61, MEGAHORN
	db 0 ; no more level-up moves
	
HappinyEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, CHANSEY
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POUND
	db 1, CHARM
	db 12, SWEET_KISS
	db 0

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, SOFTBOILED
	db 1, DEFENSE_CURL
	db 1, POUND
	db 1, GROWL
	db 1, TAIL_WHIP
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, SEISMIC_TOSS
	db 42, LIGHT_SCREEN
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, SOFTBOILED
	db 1, DEFENSE_CURL
	db 1, POUND
	db 1, GROWL
	db 1, TAIL_WHIP
	db 17, DOUBLESLAP
	db 25, MINIMIZE
	db 28, TAKE_DOWN
	db 34, SING
	db 39, SEISMIC_TOSS
	db 45, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
KangaskidEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, KANGASKHAN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LEER
	db 5, BITE
	db 10, FLAIL
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 5, LEER
	db 10, BITE
	db 13, TAIL_WHIP
	db 19, SLAM
	db 22, RAGE
	db 31, MEGA_PUNCH
	db 38, ENDURE
	db 43, DIZZY_PUNCH
	db 47, CRUNCH
	db 55, REVERSAL
	db 62, OUTRAGE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 8, LEER
	db 11, WATER_GUN
	db 14, FOCUS_ENERGY
	db 20, BUBBLEBEAM
	db 26, TWISTER
	db 32, AGILITY
	db 41, HYDRO_PUMP
	db 49, DRAGON_DANCE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbbw EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 8, LEER
	db 11, WATER_GUN
	db 14, FOCUS_ENERGY
	db 20, BUBBLEBEAM
	db 26, TWISTER
	db 32, AGILITY
	db 37, PIN_MISSILE
	db 45, HYDRO_PUMP
	db 52, DRAGON_DANCE
	db 0 ; no more level-up moves
	
KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 1, POISON_STING
	db 1, POISON_STING
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 8, LEER
	db 11, WATER_GUN
	db 14, FOCUS_ENERGY
	db 20, BUBBLEBEAM
	db 26, TWISTER
	db 32, AGILITY
	db 48, HYDRO_PUMP
	db 57, DRAGON_DANCE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, BUBBLE
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 19, WATER_PULSE
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 36, WATERFALL
	db 43, AGILITY
	db 47, HORN_DRILL
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, TAIL_WHIP
	db 5, BUBBLE
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 19, WATER_PULSE
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 34, WATERFALL
	db 38, AGILITY
	db 47, HORN_DRILL
	db 55, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 15, MINIMIZE
	db 19, SWIFT
	db 24, BUBBLEBEAM
	db 28, RECOVER
	db 33, LIGHT_SCREEN
	db 39, POWER_GEM
	db 44, COSMIC_POWER
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 15, MINIMIZE
	db 19, SWIFT
	db 25, BUBBLEBEAM
	db 32, RECOVER
	db 36, LIGHT_SCREEN
	db 41, POWER_GEM
	db 47, COSMIC_POWER
	db 53, PSYBEAM
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, FURY_CUTTER
	db 31, SLASH
	db 37, DOUBLE_TEAM
	db 42, LEECH_LIFE
	db 51, SWORDS_DANCE
	db 0 ; no more level-up moves
	
ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW
	db 1, HARDEN
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 22, FURY_CUTTER
	db 27, STEEL_WING
	db 34, SLASH
	db 41, DOUBLE_TEAM
	db 47, LEECH_LIFE
	db 58, SWORDS_DANCE
	db 0 ; no more level-up moves
	
ElekidEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERSHOCK
	db 17, THUNDER_WAVE
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERSHOCK
	db 22, LOW_KICK
	db 27, SWIFT
	db 36, LIGHT_SCREEN
	db 42, THUNDERBOLT
	db 47, SCREECH
	db 58, THUNDER
	db 0 ; no more level-up moves
	
MagbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 9, SMOG
	db 17, SMOKESCREEN
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 22, FAINT_ATTACK
	db 27, FIRE_SPIN
	db 36, CONFUSE_RAY
	db 42, FLAMETHROWER
	db 47, SUNNY_DAY
	db 58, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, HARDEN
	db 7, FOCUS_ENERGY
	db 13, CUT
	db 18, SEISMIC_TOSS
	db 22, STOMP
	db 26, FURY_CUTTER
	db 33, THRASH
	db 37, SUBMISSION
	db 44, SWORDS_DANCE
	db 53, GUILLOTINE
	db 0 ; no more level-up moves
	
MoobyEvosAttacks:
	dbbw EVOLVE_STAT, 15, ATK_LT_DEF, MILTANK
	dbbw EVOLVE_STAT, 15, ATK_GT_DEF, TAUROS
	dbbw EVOLVE_STAT, 15, ATK_EQ_DEF, MILTANK ;temporary arrangement
	db 0
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, DEFENSE_CURL
	db 12, STOMP
	db 17, PURSUIT
	db 26, HEADBUTT
	db 35, TAKE_DOWN
	db 0

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, PURSUIT
	db 15, HORN_ATTACK
	db 17, RAGE
	db 21, SCARY_FACE
	db 29, TAKE_DOWN
	db 35, REST
	db 41, SWAGGER
	db 48, THRASH
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, MILK_DRINK
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, STOMP
	db 15, MILK_DRINK
	db 19, ROLLOUT
	db 25, SLAM
	db 31, CHARM
	db 44, HEADBUTT
	db 49, SEISMIC_TOSS
	db 53, HEAL_BELL
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, THRASH
	db 20, LEER
	db 25, DRAGON_RAGE
	db 29, TWISTER
	db 32, WATERFALL
	db 37, RAIN_DANCE
	db 43, CRUNCH
	db 49, HYDRO_PUMP
	db 54, DRAGON_DANCE
	db 62, HYPER_BEAM
	db 0 ; no more level-up moves

NessiEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, LAPRAS
	db 0
	db 1, WATER_GUN
	db 1, GROWL
	db 7, MIST
	db 13, AURORA_BEAM
	db 27, CONFUSE_RAY
	db 35, SAFEGUARD
	db 0

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 1, MIST
	db 1, AURORA_BEAM
	db 18, CONFUSE_RAY
	db 22, SLAM
	db 27, WATER_PULSE
	db 32, PERISH_SONG
	db 37, ICE_BEAM
	db 45, RAIN_DANCE
	db 52, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbbw EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbbw EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbbw EVOLVE_ITEM, SUN_STONE, ESPEON
	dbbw EVOLVE_ITEM, MOON_STONE, UMBREON
	dbbw EVOLVE_ITEM, LEAF_STONE, LEAFEON
	dbbw EVOLVE_ITEM, ICE_STONE, GLACEON
	dbbw EVOLVE_ITEM, SHINY_STONE, SYLVEON
	dbbw EVOLVE_ITEM, TRISTONE, CHIMEREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, SAND_ATTACK
	db 15, BITE
	db 23, GROWTH
	db 30, QUICK_ATTACK
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 50, TRI_ATTACK
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 8, SAND_ATTACK
	db 15, BITE
	db 23, QUICK_ATTACK
	db 27, AURORA_BEAM
	db 32, HAZE
	db 36, BUBBLEBEAM
	db 45, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 60, RECOVER
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, THUNDERSHOCK
	db 8, SAND_ATTACK
	db 15, DOUBLE_KICK
	db 23, QUICK_ATTACK
	db 27, SPARK
	db 30, PIN_MISSILE
	db 34, THUNDER_WAVE
	db 39, HIDDEN_POWER
	db 47, AGILITY
	db 52, THUNDER
	db 60, EXTREMESPEED
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, EMBER
	db 8, SAND_ATTACK
	db 16, BITE
	db 23, QUICK_ATTACK
	db 27, FLAME_WHEEL
	db 32, SMOG
	db 36, FIRE_SPIN
	db 45, SWAGGER
	db 52, FLAMETHROWER
	db 60, SUBMISSION
	db 0 ; no more level-up moves
	
EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, CONFUSION
	db 8, SAND_ATTACK
	db 16, SWIFT
	db 23, QUICK_ATTACK
	db 27, LIGHT_SCREEN
	db 32, PSYBEAM
	db 36, CALM_MIND
	db 45, MORNING_SUN
	db 52, PSYCHIC_M
	db 60, PSYCH_UP
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, PURSUIT
	db 8, SAND_ATTACK
	db 16, BITE
	db 23, QUICK_ATTACK
	db 27, CONFUSE_RAY
	db 32, MEAN_LOOK
	db 36, FAINT_ATTACK
	db 45, SCREECH
	db 52, MOONLIGHT
	db 60, TOXIC
	db 0 ; no more level-up moves
	
LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, MEGA_DRAIN
	db 8, SAND_ATTACK
	db 15, FURY_CUTTER
	db 23, QUICK_ATTACK
	db 27, RAZOR_LEAF
	db 30, GROWTH
	db 34, DOUBLE_KICK
	db 39, SUNNY_DAY
	db 47, SOLARBEAM
	db 52, SWORDS_DANCE
	db 60, SYNTHESIS
	db 0 ; no more level-up moves
	
GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, POWDER_SNOW
	db 8, SAND_ATTACK
	db 16, BITE
	db 23, QUICK_ATTACK
	db 27, ICY_WIND
	db 32, HIDDEN_POWER
	db 36, HAIL
	db 45, MIRROR_COAT
	db 52, BLIZZARD
	db 60, REFLECT
	db 0 ; no more level-up moves
	
SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, SWIFT
	db 8, SAND_ATTACK
	db 15, BITE
	db 23, QUICK_ATTACK
	db 27, RETURN
	db 30, ATTRACT
	db 34, HIDDEN_POWER
	db 39, PSYCH_UP
	db 47, RECOVER
	db 52, HYPER_VOICE
	db 60, HEAL_BELL
	db 0 ; no more level-up moves
	
ChimereonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 8, SAND_ATTACK
	db 16, BITE
	db 23, WATER_GUN
	db 30, SPARK
	db 36, TRI_ATTACK
	db 42, FIRE_SPIN
	db 47, THUNDER_WAVE
	db 52, MIST
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbbw EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, SHARPEN
	db 24, TRI_ATTACK
	db 32, LOCK_ON
	db 36, RECOVER
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves
	
Porygon2EvosAttacks:
	dbbw EVOLVE_ITEM, UP_GRADE, PORYGON_Z
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, DEFENSE_CURL
	db 27, TRI_ATTACK
	db 34, LOCK_ON
	db 42, THUNDER_WAVE
	db 49, RECOVER
	db 52, ZAP_CANNON
	db 0 ; no more level-up moves
	
PorygonZEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 24, DOUBLE_TEAM
	db 27, TRI_ATTACK
	db 35, LOCK_ON
	db 43, THUNDER_WAVE
	db 50, RECOVER
	db 54, ZAP_CANNON
	db 63, HYPER_BEAM
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, HARDEN
	db 1, LEER
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, MUD_SHOT
	db 25, PROTECT
	db 28, ANCIENTPOWER
	db 37, WHIRLPOOL
	db 42, HAZE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKE_CANNON
	db 1, WRAP
	db 1, HARDEN
	db 1, LEER
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, MUD_SHOT
	db 25, PROTECT
	db 28, ANCIENTPOWER
	db 37, WHIRLPOOL
	db 45, HAZE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HARDEN
	db 1, SAND_ATTACK
	db 7, SCRATCH
	db 10, WATER_GUN
	db 16, ENDURE
	db 19, MUD_SHOT
	db 25, PROTECT
	db 28, ANCIENTPOWER
	db 37, LEECH_LIFE
	db 45, ROCK_SLIDE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, ABSORB
	db 1, HARDEN
	db 1, SAND_ATTACK
	db 7, SCRATCH
	db 10, WATER_GUN
	db 16, ENDURE
	db 19, MUD_SHOT
	db 25, PROTECT
	db 28, ANCIENTPOWER
	db 37, LEECH_LIFE
	db 45, METAL_CLAW
	db 52, ROCK_SLIDE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, BITE
	db 1, SCARY_FACE
	db 9, ROAR
	db 17, WING_ATTACK
	db 25, ANCIENTPOWER
	db 33, AGILITY
	db 40, TAKE_DOWN
	db 46, CRUNCH
	db 52, ROCK_SLIDE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, SNORLAX
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 9, LICK
	db 12, HEADBUTT
	db 17, SCREECH
	db 25, ROLLOUT
	db 37, AMNESIA
	db 42, SLAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, REST
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, LICK
	db 1, HEADBUTT
	db 1, ROLLOUT
	db 23, SNORE
	db 27, AMNESIA
	db 34, SLAM
	db 45, BELLY_DRUM
	db 53, CRUNCH
	db 61, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, GUST
	db 1, HAZE
	db 1, POWDER_SNOW
	db 9, MIST
	db 13, AGILITY
	db 21, ANCIENTPOWER
	db 29, ICY_WIND
	db 35, BUBBLEBEAM
	db 42, ROOST
	db 54, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, THUNDERSHOCK
	db 9, THUNDER_WAVE
	db 13, AGILITY
	db 21, ANCIENTPOWER
	db 29, SPARK
	db 35, PROTECT
	db 42, ROOST
	db 54, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, MORNING_SUN
	db 1, EMBER
	db 1, PECK
	db 1, WILL_O_WISP
	db 9, FIRE_SPIN
	db 13, AGILITY
	db 21, ANCIENTPOWER
	db 29, WING_ATTACK
	db 35, ENDURE
	db 42, ROOST
	db 54, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 17, DRAGON_RAGE
	db 25, SLAM
	db 31, AGILITY
	db 35, SURF
	db 41, SAFEGUARD
	db 45, DRAGON_DANCE
	db 52, OUTRAGE
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 17, DRAGON_RAGE
	db 25, SLAM
	db 35, AGILITY
	db 41, SURF
	db 47, SAFEGUARD
	db 52, DRAGON_DANCE
	db 57, OUTRAGE
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXTREMESPEED
	db 1, WING_ATTACK
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 17, DRAGON_RAGE
	db 25, SLAM
	db 35, AGILITY
	db 41, SURF
	db 47, SAFEGUARD
	db 52, DRAGON_DANCE
	db 61, OUTRAGE
	db 66, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 1, SWIFT
	db 11, MIST
	db 22, PSYCH_UP
	db 33, PSYCHO_CUT
	db 44, CALM_MIND
	db 55, AURA_SPHERE
	db 66, AMNESIA
	db 77, PSYCHIC_M
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 5, MIMIC
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYBEAM
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, PSYCHIC_M
	db 80, BATON_PASS
	db 90, AURA_SPHERE
	db 100, RECOVER
	db 100, SKETCH
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, ABSORB
	db 9, SLEEP_POWDER
	db 12, REFLECT
	db 17, RAZOR_LEAF
	db 22, GROWTH
	db 28, LIGHT_SCREEN
	db 34, SYNTHESIS
	db 42, SAFEGUARD
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, TACKLE
	db 1, GROWL
	db 6, ABSORB
	db 9, SLEEP_POWDER
	db 12, REFLECT
	db 19, RAZOR_LEAF
	db 25, GROWTH
	db 31, LIGHT_SCREEN
	db 37, SYNTHESIS
	db 45, SAFEGUARD
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE
	db 1, SLAM
	db 1, TACKLE
	db 1, GROWL
	db 6, ABSORB
	db 9, SLEEP_POWDER
	db 12, REFLECT
	db 19, RAZOR_LEAF
	db 25, GROWTH
	db 31, LIGHT_SCREEN
	db 38, DRAGONBREATH
	db 44, SYNTHESIS
	db 51, SAFEGUARD
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 10, SMOKESCREEN
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 24, ROLLOUT
	db 27, SWIFT
	db 32, WILL_O_WISP
	db 39, FLAMETHROWER
	db 45, TAKE_DOWN
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, TYPHLOSION
	dbbw EVOLVE_ITEM, DUSK_STONE, TYPHLOSION_HISUIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 10, SMOKESCREEN
	db 13, QUICK_ATTACK
	db 21, FLAME_WHEEL
	db 27, DEFENSE_CURL
	db 27, ROLLOUT
	db 31, SWIFT
	db 35, WILL_O_WISP
	db 42, FLAMETHROWER
	db 50, TAKE_DOWN
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 10, SMOKESCREEN
	db 13, QUICK_ATTACK
	db 21, FLAME_WHEEL
	db 27, DEFENSE_CURL
	db 27, ROLLOUT
	db 31, SWIFT
	db 35, WILL_O_WISP
	db 47, FLAMETHROWER
	db 50, DOUBLE_EDGE
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 11, RAGE
	db 15, BITE
	db 22, SCARY_FACE
	db 27, FLAIL
	db 32, CRUNCH
	db 36, SCREECH
	db 41, THRASH
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 11, RAGE
	db 15, BITE
	db 24, SCARY_FACE
	db 29, FLAIL
	db 33, CRUNCH
	db 37, SCREECH
	db 45, THRASH
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 11, RAGE
	db 15, BITE
	db 24, SCARY_FACE
	db 29, FLAIL
	db 35, CRUNCH
	db 42, SCREECH
	db 47, THRASH
	db 52, HYDRO_PUMP
	db 55, SUBMISSION
	db 0 ; no more level-up moves

SentretEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 14, FURY_SWIPES
	db 19, PURSUIT
	db 25, REST
	db 29, SLAM
	db 36, AMNESIA
	db 42, BATON_PASS
	db 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIG
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 14, FURY_SWIPES
	db 21, PURSUIT
	db 27, REST
	db 32, SLAM
	db 39, AMNESIA
	db 46, BATON_PASS
	db 54, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FORESIGHT
	db 7, PECK
	db 11, HYPNOSIS
	db 16, CONFUSION
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, DREAM_EATER
	db 48, HYPER_VOICE
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, MOONLIGHT
	db 1, TACKLE
	db 1, GROWL
	db 4, FORESIGHT
	db 7, PECK
	db 11, HYPNOSIS
	db 16, CONFUSION
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 44, DREAM_EATER
	db 50, HYPER_VOICE
	db 57, PSYCHIC_M
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 5, GROWTH
	db 9, COMET_PUNCH
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 17, GUST
	db 22, SAFEGUARD
	db 25, SILVER_WIND
	db 30, BATON_PASS
	db 33, SWIFT
	db 38, AGILITY
	db 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 1, TACKLE
	db 1, SUPERSONIC
	db 5, GROWTH
	db 9, COMET_PUNCH
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 17, GUST
	db 24, SAFEGUARD
	db 29, SILVER_WIND
	db 36, BATON_PASS
	db 41, SWIFT
	db 48, AGILITY
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, FURY_SWIPES
	db 12, PIN_MISSILE
	db 15, NIGHT_SHADE
	db 19, POISON_FANG
	db 22, SPIDER_WEB
	db 26, LEECH_LIFE
	db 33, AGILITY
	db 36, SLUDGE_BOMB
	db 43, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, FURY_SWIPES
	db 12, PIN_MISSILE
	db 15, NIGHT_SHADE
	db 19, POISON_FANG
	db 22, SPIDER_WEB
	db 28, LEECH_LIFE
	db 36, AGILITY
	db 42, SLUDGE_BOMB
	db 47, MEGAHORN
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 9, FLAIL
	db 12, WATER_GUN
	db 17, SPARK
	db 23, CONFUSE_RAY
	db 28, BUBBLEBEAM
	db 32, THUNDERBOLT
	db 37, TAKE_DOWN
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 9, FLAIL
	db 12, WATER_GUN
	db 17, SPARK
	db 23, CONFUSE_RAY
	db 31, BUBBLEBEAM
	db 37, THUNDERBOLT
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 13, SWEET_KISS
	db 17, ENCORE
	db 21, ANCIENTPOWER
	db 26, SAFEGUARD
	db 33, BATON_PASS
	db 38, TAKE_DOWN
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	dbbw EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions
	db 1, GUST
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 15, SWEET_KISS
	db 20, ENCORE
	db 23, ANCIENTPOWER
	db 29, SAFEGUARD
	db 32, ROOST
	db 38, TRI_ATTACK
	db 41, BATON_PASS
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
TogekissEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURA_SPHERE
	db 1, GUST
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 15, SWEET_KISS
	db 20, ENCORE
	db 23, ANCIENTPOWER
	db 29, SAFEGUARD
	db 32, ROOST
	db 38, TRI_ATTACK
	db 44, BATON_PASS
	db 50, SKY_ATTACK
	db 57, EXTREMESPEED
	db 0 ; no more level-up moves

NatuEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, IATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, CONFUSION
	db 12, TELEPORT
	db 20, NIGHT_SHADE
	db 24, CONFUSE_RAY
	db 33, BATON_PASS
	db 42, PSYCHIC_M
	db 45, CALM_MIND
	db 0 ; no more level-up moves
	
IatuEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, CONFUSION
	db 12, TELEPORT
	db 20, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, AGILITY
	db 42, BATON_PASS
	db 50, PSYCHIC_M
	db 53, CALM_MIND
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, PECK
	db 1, LEER
	db 6, CONFUSION
	db 12, TELEPORT
	db 20, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, AGILITY
	db 46, PSYBEAM
	db 51, BATON_PASS
	db 57, PSYCHIC_M
	db 62, CALM_MIND
	db 0 ; no more level-up moves

MareepEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 17, COTTON_SPORE
	db 23, SPARK
	db 27, HIDDEN_POWER
	db 32, LIGHT_SCREEN
	db 37, POWER_GEM
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, TACKLE
	db 1, GROWL
	db 5, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 19, COTTON_SPORE
	db 25, SPARK
	db 28, HIDDEN_POWER
	db 34, LIGHT_SCREEN
	db 43, POWER_GEM
	db 51, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, CONFUSE_RAY
	db 1, TACKLE
	db 1, GROWL
	db 5, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 19, COTTON_SPORE
	db 25, SPARK
	db 28, HIDDEN_POWER
	db 35, DRAGONBREATH
	db 41, LIGHT_SCREEN
	db 46, POWER_GEM
	db 57, THUNDER
	db 0 ; no more level-up moves

MarillEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 7, WATER_GUN
	db 12, CHARM
	db 16, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, SLAM
	db 36, RAIN_DANCE
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 7, WATER_GUN
	db 12, CHARM
	db 16, ROLLOUT
	db 25, BUBBLEBEAM
	db 32, DOUBLE_EDGE
	db 41, RAIN_DANCE
	db 48, SUBMISSION
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

BonslyEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, SUDOWOODO
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 5, FLAIL
	db 12, SCREECH
	db 19, LOW_KICK
	db 25, FAINT_ATTACK
	db 36, SLAM
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 29, FAINT_ATTACK
	db 35, ROCK_SLIDE
	db 41, SLAM
	db 46, PSYCH_UP
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 10, MEGA_DRAIN
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, LEECH_SEED
	db 25, GUST
	db 28, SYNTHESIS
	db 34, COTTON_SPORE
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 10, MEGA_DRAIN
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 22, LEECH_SEED
	db 27, GUST
	db 32, SYNTHESIS
	db 38, COTTON_SPORE
	db 47, MEGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 10, MEGA_DRAIN
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 22, LEECH_SEED
	db 27, GUST
	db 36, SYNTHESIS
	db 45, COTTON_SPORE
	db 52, GIGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:
	dbbw EVOLVE_ITEM, SHINY_STONE, AMBIPOM
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 11, BATON_PASS
	db 15, FURY_SWIPES
	db 21, SWIFT
	db 25, SCREECH
	db 32, AGILITY
	db 36, DOUBLESLAP
	db 41, THIEF
	db 46, MEGA_PUNCH
	db 0 ; no more level-up moves
	
AmbipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 11, BATON_PASS
	db 15, FURY_SWIPES
	db 22, SWIFT
	db 26, SCREECH
	db 33, AGILITY
	db 38, DOUBLESLAP
	db 45, THIEF
	db 54, MEGA_PUNCH
	db 0 ; no more level-up moves
	
SunkernEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 7, LEECH_SEED
	db 13, MEGA_DRAIN
	db 19, SUNNY_DAY
	db 25, RAZOR_LEAF
	db 34, SYNTHESIS
	db 40, TAKE_DOWN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, ABSORB
	db 1, GROWTH
	db 9, LEECH_SEED
	db 15, MEGA_DRAIN
	db 21, SUNNY_DAY
	db 27, RAZOR_LEAF
	db 35, SYNTHESIS
	db 42, PETAL_DANCE
	db 48, DOUBLE_EDGE
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 5, QUICK_ATTACK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, PROTECT
	db 22, PURSUIT
	db 27, DOUBLE_TEAM
	db 30, ANCIENTPOWER
	db 33, HYPNOSIS
	db 38, WING_ATTACK
	db 43, SCREECH
	db 46, TWISTER
	db 49, SILVER_WIND
	db 0 ; no more level-up moves
	
YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, TACKLE
	db 1, FORESIGHT
	db 5, QUICK_ATTACK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, PROTECT
	db 22, PURSUIT
	db 27, DOUBLE_TEAM
	db 30, ANCIENTPOWER
	db 35, SLASH
	db 39, WING_ATTACK
	db 46, SCREECH
	db 50, TWISTER
	db 54, SILVER_WIND
	db 0 ; no more level-up moves

WooperEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 9, MUD_SHOT
	db 15, SLAM
	db 22, AMNESIA
	db 29, MAGNITUDE
	db 35, RAIN_DANCE
	db 43, MIST
	db 43, HAZE
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, SNORE
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 9, MUD_SHOT
	db 15, SLAM
	db 24, AMNESIA
	db 32, MAGNITUDE
	db 39, RAIN_DANCE
	db 45, MIST
	db 45, HAZE
	db 52, HYDRO_PUMP
	db 57, EARTHQUAKE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	dbbw EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SPITE
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF
	db 31, SWAGGER
	db 35, FAINT_ATTACK
	db 41, MEAN_LOOK
	db 45, MIRROR_MOVE
	db 0 ; no more level-up moves
	
HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, DARK_PULSE
	db 1, PECK
	db 1, SPITE
	db 7, PURSUIT
	db 15, HAZE
	db 18, WING_ATTACK
	db 25, NIGHT_SHADE
	db 31, THIEF
	db 35, SWAGGER
	db 41, FAINT_ATTACK
	db 45, MEAN_LOOK
	db 51, MIRROR_MOVE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	dbbw EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CONFUSION
	db 5, SPITE
	db 12, CONFUSE_RAY
	db 19, HEX
	db 23, MEAN_LOOK
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, SHADOW_BALL
	db 43, PERISH_SONG
	db 52, POWER_GEM
	db 0 ; no more level-up moves
	
MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_SPIN
	db 1, GROWL
	db 1, CONFUSION
	db 5, SPITE
	db 15, CONFUSE_RAY
	db 21, HEX
	db 25, MEAN_LOOK
	db 31, PSYBEAM
	db 36, PAIN_SPLIT
	db 44, SHADOW_BALL
	db 53, PERISH_SONG
	db 59, POWER_GEM
	db 0 ; no more level-up moves

WynautEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 15, COUNTER
	db 15, MIRROR_COAT
	db 15, SAFEGUARD
	db 15, DESTINY_BOND
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 7, FORESIGHT
	db 14, STOMP
	db 23, AGILITY
	db 28, PSYBEAM
	db 32, BATON_PASS
	db 37, TAKE_DOWN
	db 46, CRUNCH
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 8, SELFDESTRUCT
	db 12, GROWTH
	db 17, PIN_MISSILE
	db 23, RAPID_SPIN
	db 29, SPIKES
	db 36, TAKE_DOWN
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, TACKLE
	db 1, PROTECT
	db 8, SELFDESTRUCT
	db 12, GROWTH
	db 17, PIN_MISSILE
	db 23, RAPID_SPIN
	db 29, SPIKES
	db 36, TAKE_DOWN
	db 45, EXPLOSION
	db 52, PROTECT
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	dbbw EVOLVE_ITEM, DRAGON_SCALE, DUSERPENT
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 8, GLARE
	db 12, SPITE
	db 16, PURSUIT
	db 20, SCREECH
	db 24, TAKE_DOWN
	db 28, PAIN_SPLIT
	db 33, ANCIENTPOWER
	db 38, DIG
	db 45, FLAIL
	db 0 ; no more level-up moves
	
DuserpentEvosAttacks:
	db 0 ; no more evolutions
	db 1, TWISTER
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 8, GLARE
	db 14, SPITE
	db 19, PURSUIT
	db 22, WING_ATTACK
	db 26, SCREECH
	db 33, TAKE_DOWN
	db 38, DRAGONBREATH
	db 45, ANCIENTPOWER
	db 51, ROOST
	db 56, DRAGON_DANCE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 5, HARDEN
	db 9, QUICK_ATTACK
	db 12, FURY_CUTTER
	db 16, MUD_SLAP
	db 20, FAINT_ATTACK
	db 23, WING_ATTACK
	db 27, SCREECH
	db 33, MAGNITUDE
	db 38, SLASH
	db 42, SWORDS_DANCE
	db 49, GUILLOTINE
	db 0 ; no more level-up moves
	
GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 5, HARDEN
	db 9, QUICK_ATTACK
	db 12, FURY_CUTTER
	db 16, MUD_SLAP
	db 20, FAINT_ATTACK
	db 23, WING_ATTACK
	db 27, SCREECH
	db 36, MAGNITUDE
	db 43, SLASH
	db 49, SWORDS_DANCE
	db 53, GUILLOTINE
	db 58, EARTHQUAKE
	db 0 ; no more level-up moves

RinrinEvosAttacks:
	dbbw EVOLVE_ITEM_LEVEL, MOON_STONE, BELLUNA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, TAIL_WHIP
	db 8, BITE
	db 13, CHARM
	db 19, FURY_SWIPES
	db 23, SWEET_KISS
	db 32, FAINT_ATTACK
	db 39, ENCORE
	db 45, HEAL_BELL
	db 53, FALSE_SWIPE
	db 0 ; no more level-up moves
	
BellunaEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SCRATCH
	db 1, GROWL
	db 4, TAIL_WHIP
	db 10, BITE
	db 16, CHARM
	db 23, FURY_SWIPES
	db 30, SWEET_KISS
	db 36, FAINT_ATTACK
	db 41, SCREECH
	db 47, MOONLIGHT
	db 55, HEAL_BELL
	db 61, FALSE_SWIPE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, LICK
	db 13, CHARM
	db 19, BITE
	db 25, HEADBUTT
	db 31, ROAR
	db 37, RAGE
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, LICK
	db 13, CHARM
	db 19, BITE
	db 26, HEADBUTT
	db 33, ROAR
	db 40, RAGE
	db 47, SWAGGER
	db 54, TAKE_DOWN
	db 59, CRUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, DETOQWIL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_STING
	db 5, HARDEN
	db 9, WATER_GUN
	db 13, MINIMIZE
	db 21, PIN_MISSILE
	db 28, SPIKES
	db 37, SLUDGE_BOMB
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves
	
DetoqwilEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, TACKLE
	db 1, POISON_STING
	db 5, HARDEN
	db 10, WATER_GUN
	db 15, ACID_ARMOR
	db 23, SPIKE_CANNON
	db 32, SPIKES
	db 38, SLUDGE_BOMB
	db 47, TAKE_DOWN
	db 56, HYDRO_PUMP
	db 63, IRON_TAIL
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, WRAP
	db 5, ROLLOUT
	db 13, ENCORE
	db 19, ROCK_THROW
	db 25, SAFEGUARD
	db 37, PIN_MISSILE
	db 43, REST
	db 55, ROCK_SLIDE
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, QUICK_ATTACK
	db 9, ICY_WIND
	db 14, SCREECH
	db 21, FURY_SWIPES
	db 27, FAINT_ATTACK
	db 33, AGILITY
	db 38, METAL_CLAW
	db 44, BEAT_UP
	db 50, SLASH
	db 54, RAZOR_WIND
	db 0 ; no more level-up moves
	
WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_PUNCH
	db 1, SCRATCH
	db 1, LEER
	db 5, QUICK_ATTACK
	db 9, ICY_WIND
	db 14, SCREECH
	db 21, FURY_SWIPES
	db 27, FAINT_ATTACK
	db 35, AGILITY
	db 41, METAL_CLAW
	db 49, BEAT_UP
	db 55, SLASH
	db 61, RAZOR_WIND
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, LICK
	db 8, CHARM
	db 15, FURY_SWIPES
	db 22, SWEET_SCENT
	db 29, FAINT_ATTACK
	db 34, REST
	db 34, SNORE
	db 43, THIEF
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, HOWL
	db 1, SLASH
	db 1, SCRATCH
	db 1, LEER
	db 4, LICK
	db 8, CHARM
	db 15, FURY_SWIPES
	db 22, SWEET_SCENT
	db 29, FAINT_ATTACK
	db 33, SCARY_FACE
	db 37, REST
	db 37, SNORE
	db 46, THIEF
	db 55, THRASH
	db 63, SUBMISSION
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, EMBER
	db 4, HARDEN
	db 10, ROCK_THROW
	db 14, HYPNOSIS
	db 19, FIRE_SPIN
	db 23, AMNESIA
	db 28, ANCIENTPOWER
	db 36, RECOVER
	db 44, FLAMETHROWER
	db 50, SLAM
	db 56, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, SMOG
	db 1, EMBER
	db 4, HARDEN
	db 10, ROCK_THROW
	db 14, HYPNOSIS
	db 19, FIRE_SPIN
	db 23, AMNESIA
	db 28, ANCIENTPOWER
	db 36, RECOVER
	db 47, FLAMETHROWER
	db 52, SLAM
	db 58, ROCK_SLIDE
	db 63, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, POWDER_SNOW
	db 9, MUD_SLAP
	db 13, ENDURE
	db 19, MUD_SHOT
	db 21, ICY_WIND
	db 26, MIST
	db 32, TAKE_DOWN
	db 37, MAGNITUDE
	db 42, AMNESIA
	db 49, BLIZZARD
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, POWDER_SNOW
	db 9, MUD_SLAP
	db 13, ENDURE
	db 19, MUD_SHOT
	db 21, ICY_WIND
	db 26, MIST
	db 32, TAKE_DOWN
	db 39, EARTHQUAKE
	db 45, AMNESIA
	db 56, ICICLE_CRASH
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 5, BUBBLE
	db 8, ENDURE
	db 13, ROCK_THROW
	db 16, SAFEGUARD
	db 20, SPIKE_CANNON
	db 28, BUBBLEBEAM
	db 36, RECOVER
	db 42, ANCIENTPOWER
	db 47, MIRROR_COAT
	db 53, EARTH_POWER
	db 59, FLAIL
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LOCK_ON
	db 6, AURORA_BEAM
	db 12, PIN_MISSILE
	db 18, BUBBLEBEAM
	db 24, FOCUS_ENERGY
	db 30, PSYBEAM
	db 36, ICE_BEAM
	db 42, HYDRO_PUMP
	db 48, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, OCTAZOOKA
	db 1, WRAP
	db 1, WATER_GUN
	db 1, LOCK_ON
	db 6, AURORA_BEAM
	db 12, PIN_MISSILE
	db 18, BUBBLEBEAM
	db 24, FOCUS_ENERGY
	db 32, PSYBEAM
	db 39, ICE_BEAM
	db 45, HYDRO_PUMP
	db 53, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, PRESENT
	db 7, POWDER_SNOW
	db 13, DOUBLESLAP
	db 19, ENCORE
	db 25, PRESENT
	db 25, PAY_DAY
	db 33, ICY_WIND
	db 38, DRILL_PECK
	db 47, BLIZZARD
	db 0 ; no more level-up moves

MantykeEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, MANTINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 5, SUPERSONIC
	db 11, HEADBUTT
	db 17, AGILITY
	db 23, BUBBLEBEAM
	db 28, WING_ATTACK
	db 31, CONFUSE_RAY
	db 37, SURF
	db 44, TAKE_DOWN
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, TACKLE
	db 1, BUBBLE
	db 5, SUPERSONIC
	db 11, HEADBUTT
	db 17, AGILITY
	db 25, BUBBLEBEAM
	db 32, WING_ATTACK
	db 35, CONFUSE_RAY
	db 40, SURF
	db 47, TAKE_DOWN
	db 55, RECOVER
	db 64, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, HARDEN
	db 4, SAND_ATTACK
	db 9, FURY_ATTACK
	db 12, METAL_CLAW
	db 17, AGILITY
	db 20, WING_ATTACK
	db 28, SLASH
	db 34, SPIKES
	db 39, STEEL_WING
	db 45, WHIRLWIND
	db 52, DRILL_PECK
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, HOWL
	db 8, SMOG
	db 12, BITE
	db 17, ROAR
	db 22, BEAT_UP
	db 27, FIRE_SPIN
	db 32, FAINT_ATTACK
	db 39, FLAMETHROWER
	db 44, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, WILL_O_WISP
	db 1, LEER
	db 1, EMBER
	db 4, HOWL
	db 8, SMOG
	db 12, BITE
	db 17, ROAR
	db 22, BEAT_UP
	db 29, FIRE_SPIN
	db 36, FAINT_ATTACK
	db 45, FLAMETHROWER
	db 52, CRUNCH
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, DEFENSE_CURL
	db 13, FLAIL
	db 17, CHARM
	db 21, MUD_SLAP
	db 28, ENDURE
	db 35, SLAM
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, TACKLE
	db 1, GROWL
	db 7, DEFENSE_CURL
	db 13, FLAIL
	db 17, CHARM
	db 21, MUD_SLAP
	db 27, ROLLOUT
	db 30, FURY_ATTACK
	db 36, MAGNITUDE
	db 42, ENDURE
	db 45, SLAM
	db 51, EARTHQUAKE
	db 56, DOUBLE_EDGE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	dbbw EVOLVE_LEVEL, SHINY_STONE, WYRDEER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, SAND_ATTACK
	db 7, HORN_ATTACK
	db 11, NIGHT_SHADE
	db 15, HYPNOSIS
	db 21, STOMP
	db 27, CONFUSE_RAY
	db 33, TAKE_DOWN
	db 39, CALM_MIND
	db 45, JUMP_KICK
	db 0 ; no more level-up moves
	
WyrdeerEvosAttacks:
	db , CONFUSION
	db 1, TACKLE
	db 1, LEER
	db 1, SAND_ATTACK
	db 7, HORN_ATTACK
	db 12, NIGHT_SHADE
	db 17, HYPNOSIS
	db 23, SWIFT
	db 29, CONFUSE_RAY
	db 36, TAKE_DOWN
	db 41, CALM_MIND
	db 47, MIRROR_COAT
	db 52, JUMP_KICK
	db 59, PSYCHIC_M
	db 64, DOUBLE_EDGE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves
	
HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, HORN_ATTACK
	db 7, ENDURE
	db 13, SEISMIC_TOSS
	db 19, FURY_ATTACK
	db 25, COUNTER
	db 31, TAKE_DOWN
	db 37, REVERSAL
	db 43, MEGAHORN
	db 54, SUBMISSION
	db 0 ; no more level-up moves
	
UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 4, THUNDERSHOCK
	db 9, ROAR
	db 13, QUICK_ATTACK
	db 19, SPARK
	db 26, REFLECT
	db 33, CRUNCH
	db 40, RAIN_DANCE
	db 47, AURA_SPHERE
	db 54, CALM_MIND
	db 65, THUNDER
	db 71, EXTREMESPEED
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 4, EMBER
	db 9, HOWL
	db 13, STOMP
	db 19, FIRE_SPIN
	db 26, SWAGGER
	db 33, CRUNCH
	db 40, SUNNY_DAY
	db 47, FLAMETHROWER
	db 54, CALM_MIND
	db 65, SACRED_FIRE
	db 71, EXTREMESPEED
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 4, WATER_GUN
	db 9, MIST
	db 13, GUST
	db 19, AURORA_BEAM
	db 26, MIRROR_COAT
	db 33, BUBBLEBEAM
	db 40, HAIL
	db 47, RECOVER
	db 54, CALM_MIND
	db 65, HYDRO_PUMP
	db 71, EXTREMESPEED
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 5, ROCK_THROW
	db 10, SANDSTORM
	db 14, MAGNITUDE
	db 19, SCARY_FACE
	db 23, DARK_PULSE
	db 28, ROCK_SLIDE
	db 32, SCREECH
	db 37, THRASH
	db 43, CRUNCH
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, BITE
	db 1, LEER
	db 5, ROCK_THROW
	db 10, SANDSTORM
	db 14, MAGNITUDE
	db 19, SCARY_FACE
	db 23, DARK_PULSE
	db 28, ROCK_SLIDE
	db 35, SCREECH
	db 42, THRASH
	db 49, CRUNCH
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPER_BEAM
	db 1, HARDEN
	db 1, BITE
	db 1, LEER
	db 5, ROCK_THROW
	db 10, SANDSTORM
	db 14, MAGNITUDE
	db 19, SCARY_FACE
	db 23, DARK_PULSE
	db 28, ROCK_SLIDE
	db 35, SCREECH
	db 42, THRASH
	db 49, CRUNCH
	db 62, EARTHQUAKE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, WHIRLWIND
	db 1, TWISTER
	db 7, MIST
	db 14, SAFEGUARD
	db 21, WHIRLPOOL
	db 28, RAIN_DANCE
	db 35, ANCIENTPOWER
	db 42, PSYCHIC_M
	db 49, AEROBLAST
	db 56, FEATHERDANCE
	db 63, RECOVER
	db 70, HYDRO_PUMP
	db 77, CALM_MIND
	db 84, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, WHIRLWIND
	db 1, SWIFT
	db 7, WILL_O_WISP
	db 14, SAFEGUARD
	db 21, HIDDEN_POWER
	db 28, SUNNY_DAY
	db 35, ANCIENTPOWER
	db 42, PSYCHIC_M
	db 49, SACRED_FIRE
	db 56, FEATHERDANCE
	db 63, RECOVER
	db 70, FIRE_BLAST
	db 77, CALM_MIND
	db 84, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, SAFEGUARD
	db 8, MEGA_DRAIN
	db 16, ANCIENTPOWER
	db 24, CALM_MIND
	db 32, BATON_PASS
	db 40, RAZOR_LEAF
	db 48, HEAL_BELL
	db 56, RECOVER
	db 64, PSYCHIC_M
	db 72, GIGA_DRAIN
	db 80, PERISH_SONG
	db 0 ; no more level-up moves
	
Vulpix_AlolanEvosAttacks:
	dbbw EVOLVE_ITEM, ICE_STONE, NINETALES_ALOLAN
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 17, CONFUSE_RAY
	db 21, FAINT_ATTACK
	db 27, DESTINY_BOND
	db 33, SAFEGUARD
	db 37, ICE_BEAM
	db 44, SPITE
	db 49, ICY_WIND
	db 0 ; no more level-up moves

Ninetales_AlolanEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, POWDER_SNOW
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 17, CONFUSE_RAY
	db 23, FAINT_ATTACK
	db 29, DESTINY_BOND
	db 35, HEX
	db 41, ICE_BEAM
	db 47, SPITE
	db 52, ICY_WIND
	db 59, SHADOW_BALL
	db 0 ; no more level-up moves
	
Articuno_GalarianEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, CONFUSION 
	db 7, POWDER_SNOW
	db 13, HYPNOSIS
	db 21, ANCIENTPOWER
	db 29, REFLECT
	db 35, DREAM_EATER
	db 42, AGILITY
	db 49, PSYCHO_CUT
	db 57, ICE_BEAM
	db 61, RECOVER
	db 73, PSYCHIC_M
	db 0 ; no more level-up moves

Zapdos_GalarianEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 7, DOUBLE_KICK
	db 13, SPARK
	db 21, ANCIENTPOWER
	db 29, LIGHT_SCREEN
	db 35, REVERSAL
	db 42, AGILITY
	db 49, DRILL_PECK
	db 57, THUNDERBOLT
	db 61, COUNTER
	db 73, JUMP_KICK
	db 0 ; no more level-up moves

Moltres_GalarianEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 7, PURSUIT
	db 13, FIRE_SPIN
	db 21, ANCIENTPOWER
	db 29, SAFEGUARD
	db 35, WING_ATTACK
	db 42, AGILITY
	db 49, DARK_PULSE
	db 57, FLAMETHROWER
	db 61, WILL_O_WISP
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves
	
Bulbasaur_CloneEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 19, RAZOR_LEAF
	db 22, SWEET_SCENT
	db 27, GROWTH
	db 33, TAKE_DOWN
	db 39, SYNTHESIS
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

Ivysaur_CloneEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 30, GROWTH
	db 32, TAKE_DOWN
	db 44, SYNTHESIS
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

Venusaur_CloneEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTH_POWER
	db 1, SLUDGE_BOMB
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 30, GROWTH
	db 32, TAKE_DOWN
	db 40, PETAL_DANCE
	db 47, SYNTHESIS
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

Charmander_CloneEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON_CLONE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 19, SCARY_FACE
	db 25, DRAGONBREATH
	db 31, FLAMETHROWER
	db 37, SLASH
	db 40, DRAGON_RAGE
	db 45, FIRE_SPIN
	db 0 ; no more level-up moves

Charmeleon_CloneEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD_CLONE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 21, SCARY_FACE
	db 27, DRAGONBREATH
	db 34, FLAMETHROWER
	db 39, SLASH
	db 46, DRAGON_RAGE
	db 50, FIRE_SPIN
	db 0 ; no more level-up moves

Charizard_CloneEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, WING_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 21, SCARY_FACE
	db 27, DRAGONBREATH
	db 34, FLAMETHROWER
	db 42, SLASH
	db 50, DRAGON_RAGE
	db 55, FIRE_SPIN
	db 0 ; no more level-up moves

Squirtle_CloneEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, HARDEN
	db 13, WATER_GUN
	db 16, BITE
	db 19, RAPID_SPIN
	db 23, PROTECT
	db 27, WATER_PULSE
	db 33, SKULL_BASH
	db 39, RAIN_DANCE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

Wartortle_CloneEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, HARDEN
	db 13, WATER_GUN
	db 16, BITE
	db 22, RAPID_SPIN
	db 25, PROTECT
	db 32, WATER_PULSE
	db 38, SKULL_BASH
	db 44, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

Blastoise_CloneEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURA_SPHERE
	db 1, FLASH_CANNON
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, HARDEN
	db 13, WATER_GUN
	db 16, BITE
	db 22, RAPID_SPIN
	db 25, PROTECT
	db 32, WATER_PULSE
	db 41, SKULL_BASH
	db 49, RAIN_DANCE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

Ekans_DarkEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARBOK_DARK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_FANG
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 21, POISON_FANG
	db 33, HAZE
	db 37, MUD_SHOT
	db 43, SLUDGE_BOMB
	db 0 ; no more level-up moves

Arbok_DarkEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, DIG
	db 1, WRAP
	db 1, LEER
	db 4, POISON_FANG
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 21, POISON_FANG
	db 35, HAZE
	db 43, MUD_SHOT
	db 47, SLUDGE_BOMB
	db 53, CRUNCH
	db 0 ; no more level-up moves

Pichu_SpikyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU_CLONE
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

Pikachu_CloneEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU_CLONE
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 5, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 20, SPARK
	db 25, DOUBLE_TEAM
	db 31, THUNDERBOLT
	db 37, AGILITY
	db 43, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

Raichu_CloneEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_PUNCH
	db 1, JUMP_KICK
	db 1, THUNDERSHOCK
	db 5, TAIL_WHIP
	db 12, THUNDER_WAVE
	db 17, QUICK_ATTACK
	db 24, SPARK
	db 29, DOUBLE_TEAM
	db 37, THUNDERBOLT
	db 42, AGILITY
	db 46, SLAM
	db 55, THUNDER
	db 0 ; no more level-up moves
	
Raichu_AlolanEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, CALM_MIND
	db 1, THUNDERSHOCK
	db 5, TAIL_WHIP
	db 12, THUNDER_WAVE
	db 17, QUICK_ATTACK
	db 24, DOUBLE_TEAM
	db 29, REFLECT
	db 32, THUNDERBOLT
	db 37, AGILITY
	db 42, SURF
	db 46, LIGHT_SCREEN
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

Sandshrew_AlolanEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH_ALOLAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 7, POWDER_SNOW
	db 11, POISON_STING
	db 15, SWIFT
	db 19, METAL_CLAW
	db 23, FURY_SWIPES
	db 29, ICE_PUNCH
	db 35, ROCK_CLIMB
	db 43, HAIL
	db 0 ; no more level-up moves

Sandslash_AlolanEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 7, POWDER_SNOW
	db 11, POISON_STING
	db 15, SWIFT
	db 19, METAL_CLAW
	db 25, FURY_SWIPES
	db 31, ICE_PUNCH
	db 38, ROCK_CLIMB
	db 45, HAIL
	db 51, ICICLE_CRASH
	db 0 ; no more level-up moves

Growlithe_HisuianEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, ARCANINE_HISUIAN
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 5, BITE
	db 9, HOWL
	db 14, ANCIENTPOWER
	db 19, FLAME_WHEEL
	db 25, TAKE_DOWN
	db 34, AGILITY
	db 39, ROCK_SLIDE
	db 42, CRUNCH
	db 45, FLAMETHROWER
	db 0 ; no more level-up moves

Arcanine_HisuianEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXTREMESPEED
	db 1, EMBER
	db 1, LEER
	db 7, BITE
	db 12, ROAR
	db 17, ANCIENTPOWER
	db 23, FLAME_WHEEL
	db 34, TAKE_DOWN
	db 42, AGILITY
	db 50, ROCK_SLIDE
	db 54, CRUNCH
	db 61, FLAMETHROWER
	db 67, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
Voltorb_HisuianEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE_HISUIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SONICBOOM
	db 1, SPARK
	db 9, ROLLOUT
	db 12, THUNDER_WAVE
	db 19, SELFDESTRUCT
	db 26, SCREECH
	db 33, RAZOR_LEAF
	db 37, LIGHT_SCREEN
	db 41, THUNDERBOLT
	db 46, MIRROR_COAT
	db 0 ; no more level-up moves

Electrode_HisuianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SONICBOOM
	db 1, SPARK
	db 9, ROLLOUT
	db 12, THUNDER_WAVE
	db 19, SELFDESTRUCT
	db 26, SCREECH
	db 34, RAZOR_LEAF
	db 40, LIGHT_SCREEN
	db 44, THUNDERBOLT
	db 48, MIRROR_COAT
	db 57, EXPLOSION
	db 0 ; no more level-up moves
	
Marowak_AlolanEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, GROWL
	db 1, TAIL_WHIP
	db 7, BONE_CLUB
	db 13, FOCUS_ENERGY
	db 17, HEADBUTT
	db 23, WILL_O_WISP
	db 27, SHADOW_PUNCH
	db 34, BONEMERANG
	db 39, PAIN_SPLIT
	db 46, THRASH
	db 53, BONE_RUSH
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
Typhlosion_HisuianEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEX
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 10, SMOKESCREEN
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 24, SWIFT
	db 30, WILL_O_WISP
	db 36, FLAMETHROWER
	db 47, SHADOW_BALL
	db 50, CALM_MIND
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves
