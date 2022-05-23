INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:
	db AMNESIA
	db CHARM
	db ENDURE
	db SLUDGE
	db SNORE
	db SYNTHESIS
	db SLAM
	db SKULL_BASH
	db SAFEGUARD
	db PETAL_DANCE
	db STUN_SPORE
	db -1 ; end

CharmanderEggMoves:
	db BELLY_DRUM
	db ANCIENTPOWER
	db BITE
	db OUTRAGE
	db BEAT_UP
	db DRAGON_DANCE
	db CRUNCH
	db SNORE
	db ENDURE
	db SEISMIC_TOSS
	db FURY_SWIPES
	db -1 ; end

SquirtleEggMoves:
	db MIRROR_COAT
	db HAZE
	db MIST
	db CONFUSION
	db FORESIGHT
	db FLAIL
	db SNORE
	db ENDURE
	db POWDER_SNOW
	db -1 ; end
	
CaterpieEggMoves:
	db SLUDGE
	db CONFUSION
	db LEECH_LIFE
	db -1
	
WeedleEggMoves:
	db SLUDGE
	db LEECH_LIFE
	db MEGAHORN
	db -1

PidgeyEggMoves:
	db PURSUIT
	db FAINT_ATTACK
	db FORESIGHT
	db SKY_ATTACK
	db TAKE_DOWN
	db DRILL_PECK
	db LEER
	db -1 ; end

RattataEggMoves:
	db SCREECH
	db FLAME_WHEEL
	db FURY_SWIPES
	db REVERSAL
	db THUNDER_WAVE
	db SPARK
	db LEER
	db POISON_FANG
	db -1 ; end

SpearowEggMoves:
	db FAINT_ATTACK
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
	db SKY_ATTACK
	db WHIRLWIND
	db FEATHERDANCE
	db ENDURE
	db TWISTER
	db SONICBOOM
	db SUPERSONIC
	db WING_ATTACK
	db BATON_PASS
	db -1 ; end

EkansEggMoves:
	db PURSUIT
	db SLAM
	db SPITE
	db BEAT_UP
	db CRUNCH
	db SCARY_FACE
	db DISABLE
	db DRAGON_DANCE
	db SLAM
	db SLUDGE
	db -1 ; end
	
PichuEggMoves:
	db REVERSAL
	db PRESENT
	db ENCORE
	db DOUBLESLAP
	db SPARK
	db FLAIL
	db ENDURE
	db SEISMIC_TOSS
	db PETAL_DANCE
	db DIZZY_PUNCH
	db SCARY_FACE
	db SING
	db METRONOME
	db -1 ; end

SandshrewEggMoves:
	db FLAIL
	db SAFEGUARD
	db RAPID_SPIN
	db METAL_CLAW
	db MUD_SHOT
	db ENDURE
	db SUPER_FANG
	db SLAM
	db EARTH_POWER
	db -1 ; end

NidoranFEggMoves:
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db FOCUS_ENERGY
	db BEAT_UP
	db ENDURE
	db SLUDGE_WAVE
	db PURSUIT
	db SUPER_FANG
	db MOONLIGHT
	db SWEET_KISS
	db -1 ; end

NidoranMEggMoves:
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db CONFUSION
	db AMNESIA
	db BEAT_UP
	db POISON_FANG
	db SLUDGE_WAVE
	db PURSUIT
	db SUPER_FANG
	db CHARM
	db -1 ; end
	
ClefairyEggMoves:
	db PRESENT
	db AMNESIA
	db BELLY_DRUM
	db SPLASH
	db RECOVER
	db SAFEGUARD
	db SEISMIC_TOSS
	db SLAM
	db MIRROR_COAT
	db THUNDER_WAVE
	db PETAL_DANCE
	db SWEET_KISS
	db -1 ; end

VulpixEggMoves:
	db PURSUIT
	db HYPNOSIS
	db FLAIL
	db DISABLE
	db HOWL
	db CHARM
	db DESTINY_BOND
	db LICK
	db CONFUSION
	db NIGHT_SHADE
	db -1 ; end
	
JigglypuffEggMoves:
	db PERISH_SONG
	db PRESENT
	db FAINT_ATTACK
	db MOONLIGHT
	db PAIN_SPLIT
	db MEGA_PUNCH
	db SEISMIC_TOSS
	db THUNDER_WAVE
	db PETAL_DANCE
	db SPARK
	db HEAL_BELL
	db CHARM
	db -1 ; end

ZubatEggMoves:
	db QUICK_ATTACK
	db PURSUIT
	db FAINT_ATTACK
	db GUST
	db WHIRLWIND
	db HYPNOSIS
	db SKY_ATTACK
	db TWISTER
	db FLAIL
	db MIRROR_MOVE
	db MEGA_DRAIN
	db -1 ; end

OddishEggMoves:
	db SWORDS_DANCE
	db RAZOR_LEAF
	db SYNTHESIS
	db SPORE
	db LEECH_SEED
	db GROWTH
	db SLUDGE
	db SMOG
	db -1 ; end

ParasEggMoves:
	db FALSE_SWIPE
	db SCREECH
	db PSYBEAM
	db FLAIL
	db PURSUIT
	db METAL_CLAW
	db AGILITY
	db MOONLIGHT
	db COTTON_SPORE
	db CROSS_CHOP
	db SLUDGE
	db -1 ; end

VenonatEggMoves:
	db BATON_PASS
	db SCREECH
	db AGILITY
	db STRING_SHOT
	db HYPNOSIS
	db TELEPORT
	db POISON_STING
	db NIGHT_SHADE
	db -1 ; end

DiglettEggMoves:
	db SCREECH
	db ANCIENTPOWER
	db PURSUIT
	db BEAT_UP
	db REVERSAL
	db ENDURE
	db ROCK_THROW
	db FALSE_SWIPE
	db EARTH_POWER
	db -1 ; end

MeowthEggMoves:
	db SPITE
	db HYPNOSIS
	db AMNESIA
	db FLAIL
	db TAIL_WHIP
	db SNORE
	db SING
	db SLAM
	db PSYCHO_CUT
	db SCARY_FACE
	db PERISH_SONG
	db -1 ; end

PsyduckEggMoves:
	db HYPNOSIS
	db PSYBEAM
	db FORESIGHT
	db CROSS_CHOP
	db MUD_SHOT
	db CONFUSE_RAY
	db ENCORE
	db ENDURE
	db TRI_ATTACK
	db SPITE
	db -1 ; end

MankeyEggMoves:
	db FORESIGHT
	db REVERSAL
	db BEAT_UP
	db MEGA_KICK
	db MEGA_PUNCH
	db ENCORE
	db ENDURE
	db SLAM
	db BELLY_DRUM
	db -1 ; end

GrowlitheEggMoves:
	db SLAM
	db SAFEGUARD
	db THRASH
	db FIRE_SPIN
	db MORNING_SUN
	db DOUBLE_KICK
	db ENDURE
	db SNORE
	db CHARM
	db SAFEGUARD
	db GROWL
	db OUTRAGE
	db -1 ; end

PoliwagEggMoves:
	db MIST
	db SPLASH
	db HAZE
	db ENCORE
	db DEFENSE_CURL
	db CONFUSION
	db GROWTH
	db SWEET_KISS
	db POWDER_SNOW
	db EARTH_POWER
	db -1 ; end

AbraEggMoves:
	db ENCORE
	db MEGA_PUNCH
	db METRONOME
	db THUNDER_WAVE
	db FORESIGHT
	db MIRROR_COAT
	db HYPNOSIS
	db -1 ; end

MachopEggMoves:
	db ENCORE
	db MACH_PUNCH
	db MEGA_PUNCH
	db MEGA_KICK
	db THRASH
	db DOUBLESLAP
	db -1 ; end

BellsproutEggMoves:
	db SWORDS_DANCE
	db ENCORE
	db REFLECT
	db SYNTHESIS
	db LEECH_LIFE
	db LEECH_SEED
	db SWAGGER
	db -1 ; end

TentacoolEggMoves:
	db AURORA_BEAM
	db MIRROR_COAT
	db RAPID_SPIN
	db HAZE
	db SAFEGUARD
	db CONFUSE_RAY
	db BUBBLE
	db HEX
	db POWER_GEM
	db -1 ; end

GeodudeEggMoves:
	db MEGA_PUNCH
	db FLAIL
	db ENDURE
	db SEISMIC_TOSS
	db RAPID_SPIN
	db SUBMISSION
	db CROSS_CHOP
	db HARDEN
	db EARTH_POWER
	db -1 ; end

PonytaEggMoves:
	db THRASH
	db DOUBLE_KICK
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db MORNING_SUN
	db LOW_KICK
	db LICK
	db -1 ; end

SlowpokeEggMoves:
	db SAFEGUARD
	db BELLY_DRUM
	db STOMP
	db MUD_SHOT
	db SNORE
	db ENDURE
	db SLAM
	db THUNDER_WAVE
	db HYPNOSIS
	db -1 ; end

FarfetchDEggMoves:
	db FORESIGHT
	db MIRROR_MOVE
	db GUST
	db QUICK_ATTACK
	db FLAIL
	db FEATHERDANCE
	db ENDURE
	db SKY_ATTACK
	db -1 ; end

DoduoEggMoves:
	db SUPERSONIC
	db HAZE
	db FAINT_ATTACK
	db MIRROR_MOVE
	db SKY_ATTACK
	db ENDURE
	db LOW_KICK
	db SCREECH
	db -1 ; end

SeelEggMoves:
	db LICK
	db PERISH_SONG
	db DISABLE
	db PECK
	db SLAM
	db ENCORE
	db HORN_DRILL
	db SNORE
	db SLAM
	db FLAIL
	db PURSUIT
	db -1 ; end

GrimerEggMoves:
	db HAZE
	db MEAN_LOOK
	db LICK
	db SHADOW_PUNCH
	db SELFDESTRUCT
	db SLAM
	db FAINT_ATTACK
	db PURSUIT
	db -1 ; end

ShellderEggMoves:
	db BUBBLEBEAM
	db TAKE_DOWN
	db RAPID_SPIN
	db SCREECH
	db MUD_SHOT
	db TWINEEDLE
	db ENDURE
	db SELFDESTRUCT
	db SAFEGUARD
	db LEER
	db -1 ; end

GastlyEggMoves:
	db PERISH_SONG
	db HAZE
	db SLUDGE_WAVE
	db DISABLE
	db SCARY_FACE
	db PAIN_SPLIT
	db SELFDESTRUCT
	db CONFUSION
	db BEAT_UP
	db HEX
	db -1 ; end

OnixEggMoves:
	db FLAIL
	db DEFENSE_CURL
	db ENDURE
	db MAGNITUDE
	db DRAGON_DANCE
	db SELFDESTRUCT
	db THRASH
	db MIRROR_COAT
	db RAGE
	db EARTH_POWER
	db -1 ; end

DrowzeeEggMoves:
	db LOW_KICK
	db MEGA_PUNCH
	db SEISMIC_TOSS
	db THUNDER_WAVE
	db AMNESIA
	db SNORE
	db -1 ; end

KrabbyEggMoves:
	db DIG
	db HAZE
	db AMNESIA
	db ANCIENTPOWER
	db AGILITY
	db ENDURE
	db SWORDS_DANCE
	db REVERSAL
	db SUBMISSION
	db CONFUSION
	db -1 ; end

ExeggcuteEggMoves:
	db SYNTHESIS
	db MOONLIGHT
	db REFLECT
	db MEGA_DRAIN
	db ANCIENTPOWER
	db SELFDESTRUCT
	db ENDURE
	db -1 ; end

CuboneEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db SCREECH
	db PERISH_SONG
	db SWORDS_DANCE
	db DOUBLE_KICK
	db ENDURE
	db LOW_KICK
	db SEISMIC_TOSS
	db FURY_ATTACK
	db LEER
	db SKULL_BASH
	db HEX
	db EARTH_POWER
	db -1 ; end
	
TyrogueEggMoves:
	db RAPID_SPIN
	db MACH_PUNCH
	db RAGE
	db JUMP_KICK
	db ENDURE
	db PURSUIT
	db LOW_KICK
	db SEISMIC_TOSS
	db DIZZY_PUNCH
	db -1 ; end

LickitungEggMoves:
	db MAGNITUDE
	db AMNESIA
	db MUD_SHOT
	db SNORE
	db MEGA_PUNCH
	db SEISMIC_TOSS
	db TAKE_DOWN
	db DOUBLESLAP
	db -1 ; end

KoffingEggMoves:
	db SCREECH
	db PSYBEAM
	db PAIN_SPLIT
	db SPITE
	db FIRE_SPIN
	db SUPERSONIC
	db -1 ; end

RhyhornEggMoves:
	db CRUNCH
	db REVERSAL
	db THRASH
	db PURSUIT
	db SUBMISSION
	db DOUBLE_EDGE
	db SNORE
	db ENDURE
	db SLAM
	db SWORDS_DANCE
	db EARTH_POWER
	db -1 ; end

HappinyEggMoves:
	db PRESENT
	db METRONOME
	db HEAL_BELL
	db SEISMIC_TOSS
	db ENDURE
	db HYPER_VOICE
	db SLAM
	db SPARK
	db -1 ; end

KangaskidEggMoves:
	db STOMP
	db FORESIGHT
	db FOCUS_ENERGY
	db SAFEGUARD
	db DISABLE
	db FAINT_ATTACK
	db DOUBLE_KICK
	db PURSUIT
	db -1 ; end

HorseaEggMoves:
	db FLAIL
	db AURORA_BEAM
	db OCTAZOOKA
	db DISABLE
	db SPLASH
	db DRAGON_RAGE
	db FLASH_CANNON
	db MUD_SHOT
	db HAZE
	db CONFUSE_RAY
	db POWDER_SNOW
	db SMOG
	db -1 ; end

GoldeenEggMoves:
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db MUD_SHOT
	db SLAM
	db SKULL_BASH
	db SWORDS_DANCE
	db MAGNITUDE
	db LEER
	db SPLASH
	db -1 ; end
	
StaryuEggMoves:
	db TWISTER
	db AURORA_BEAM
	db SUPERSONIC
	db PSYBEAM
	db SAFEGUARD
	db HAZE
	db MIST
	db ENDURE
	db THUNDER_WAVE
	db -1

ScytherEggMoves:
	db SAFEGUARD
	db BATON_PASS
	db REVERSAL
	db ENDURE
	db SILVER_WIND
	db MORNING_SUN
	db DOUBLE_EDGE
	db SONICBOOM
	db -1 ; end
	
ElekidEggMoves:
	db KARATE_CHOP
	db CROSS_CHOP
	db MACH_PUNCH
	db ENDURE
	db SEISMIC_TOSS
	db MEGA_PUNCH
	db DIZZY_PUNCH
	db PURSUIT
	db -1 ; end

MagbyEggMoves:
	db KARATE_CHOP
	db MEGA_PUNCH
	db SCREECH
	db CROSS_CHOP
	db MACH_PUNCH
	db BELLY_DRUM
	db FOCUS_ENERGY
	db LOW_KICK
	db ENDURE
	db SEISMIC_TOSS
	db MEGA_KICK
	db DIZZY_PUNCH
	db -1 ; end

PinsirEggMoves:
	db FURY_ATTACK
	db FLAIL
	db FAINT_ATTACK
	db QUICK_ATTACK
	db ENDURE
	db SLAM
	db DOUBLE_EDGE
	db ROCK_THROW
	db CROSS_CHOP
	db REVERSAL
	db -1 ; end
	
MoobyEggMoves:
	db ENDURE
	db REVERSAL
	db THUNDER_WAVE
	db QUICK_ATTACK
	db SPARK
	db MAGNITUDE
	db -1 ; end
	
MagikarpEggMoves:
	db HYDRO_PUMP
	db DRAGON_RAGE
	db BUBBLE
	db REVERSAL
	db TWISTER
	db -1

NessiEggMoves:
	db AURORA_BEAM
	db FORESIGHT
	db BITE
	db CONFUSION
	db DRAGON_DANCE
	db HORN_DRILL
	db ANCIENTPOWER
	db HYPER_VOICE
	db SNORE
	db ENDURE
	db RECOVER
	db HYPNOSIS
	db PURSUIT
	db -1 ; end

EeveeEggMoves:
	db FLAIL
	db CHARM
	db ENDURE
	db HEAL_BELL
	db SNORE
	db SLAM
	db REVERSAL
	db MORNING_SUN
	db FOCUS_ENERGY
	db PAY_DAY
	db SAFEGUARD
	db -1 ; end

OmanyteEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db SLAM
	db SUPERSONIC
	db ROCK_THROW
	db SPIKES
	db ENDURE
	db BUBBLE
	db EARTH_POWER
	db -1 ; end

KabutoEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db RAPID_SPIN
	db DIG
	db FLAIL
	db ROCK_THROW
	db CONFUSE_RAY
	db FORESIGHT
	db BUBBLE
	db HAZE
	db LEER
	db SWORDS_DANCE
	db EARTH_POWER
	db -1 ; end

AerodactylEggMoves:
	db WHIRLWIND
	db PURSUIT
	db FORESIGHT
	db ROCK_THROW
	db ROOST
	db SKY_ATTACK
	db SKULL_BASH
	db DOUBLE_EDGE
	db TWISTER
	db TRI_ATTACK
	db LEER
	db EMBER
	db DRAGON_DANCE
	db EARTH_POWER
	db -1 ; end

MunchlaxEggMoves:
	db LICK
	db SPLASH
	db SELFDESTRUCT
	db PRESENT
	db CHARM
	db WHIRLWIND
	db PURSUIT
	db HYPER_VOICE
	db MEGA_PUNCH
	db SEISMIC_TOSS
	db MEGA_KICK
	db -1 ; end

DratiniEggMoves:
	db MIST
	db HAZE
	db SUPERSONIC
	db HYDRO_PUMP
	db EXTREMESPEED
	db BUBBLEBEAM
	db RAGE
	db MOONLIGHT
	db PSYBEAM
	db PURSUIT
	db HEAL_BELL
	db POWER_GEM
	db -1 ; end

ChikoritaEggMoves:
	db VINE_WHIP
	db LEECH_SEED
	db ANCIENTPOWER
	db FLAIL
	db DRAGON_DANCE
	db SING
	db SLAM
	db ENDURE
	db SNORE
	db TAKE_DOWN
	db THRASH
	db MORNING_SUN
	db POISONPOWDER
	db -1 ; end

CyndaquilEggMoves:
	db FURY_SWIPES
	db REVERSAL
	db THRASH
	db FORESIGHT
	db SUBMISSION
	db ANCIENTPOWER
	db DOUBLE_KICK
	db SNORE
	db HOWL
	db -1 ; end

TotodileEggMoves:
	db ANCIENTPOWER
	db SUBMISSION
	db TAKE_DOWN
	db SKULL_BASH
	db METAL_CLAW
	db DRAGON_DANCE
	db LOW_KICK
	db MUD_SHOT
	db SEISMIC_TOSS
	db SLAM
	db ENDURE
	db -1 ; end

SentretEggMoves:
	db DOUBLE_EDGE
	db SLASH
	db FOCUS_ENERGY
	db REVERSAL
	db DIZZY_PUNCH
	db CONFUSION
	db THRASH
	db CHARM
	db SUPER_FANG
	db TACKLE
	db -1 ; end

HoothootEggMoves:
	db MIRROR_MOVE
	db SUPERSONIC
	db FAINT_ATTACK
	db WING_ATTACK
	db WHIRLWIND
	db SKY_ATTACK
	db PSYBEAM
	db NIGHT_SHADE
	db FEATHERDANCE
	db AGILITY
	db TWISTER
	db ROOST
	db -1 ; end

LedybaEggMoves:
	db PSYBEAM
	db FAINT_ATTACK
	db LEECH_LIFE
	db HYPNOSIS
	db SCREECH
	db DIZZY_PUNCH
	db ROOST
	db ENDURE
	db MEGA_PUNCH
	db -1 ; end

SpinarakEggMoves:
	db PSYBEAM
	db DISABLE
	db SONICBOOM
	db BATON_PASS
	db PURSUIT
	db GROWTH
	db SLASH
	db SWORDS_DANCE
	db FLAIL
	db TWINEEDLE
	db SLASH
	db -1 ; end

ChinchouEggMoves:
	db SCREECH
	db RECOVER
	db PSYBEAM
	db HAZE
	db AMNESIA
	db AGILITY
	db MIST
	db HEAL_BELL
	db ENDURE
	db FAINT_ATTACK
	db -1 ; end

TogepiEggMoves:
	db PRESENT
	db MIRROR_MOVE
	db PECK
	db FORESIGHT
	db THUNDER_WAVE
	db HEAL_BELL
	db SPARK
	db SCREECH
	db CONFUSION
	db MORNING_SUN
	db DEFENSE_CURL
	db SOFTBOILED
	db ENDURE
	db -1 ; end

NatuEggMoves:
	db HAZE
	db DRILL_PECK
	db QUICK_ATTACK
	db FAINT_ATTACK
	db THUNDER_WAVE
	db SAFEGUARD
	db SAND_ATTACK
	db GUST
	db FEATHERDANCE
	db ROOST
	db FIRE_SPIN
	db -1 ; end

MareepEggMoves:
	db TAKE_DOWN
	db SLAM
	db SAFEGUARD
	db SCREECH
	db REFLECT
	db SAND_ATTACK
	db AGILITY
	db HEAL_BELL
	db REFLECT
	db DEFENSE_CURL
	db ENDURE
	db HYPNOSIS
	db -1 ; end

MarillEggMoves:
	db PRESENT
	db AMNESIA
	db BELLY_DRUM
	db PERISH_SONG
	db SUPERSONIC
	db FORESIGHT
	db DIZZY_PUNCH
	db AURORA_BEAM
	db SING
	db ENCORE
	db SEISMIC_TOSS
	db -1 ; end

BonslyEggMoves:
	db SELFDESTRUCT
	db RAGE
	db HARDEN
	db ENDURE
	db SEISMIC_TOSS
	db REVERSAL
	db DEFENSE_CURL
	db EARTH_POWER
	db -1 ; end

HoppipEggMoves:
	db CONFUSION
	db GROWL
	db ENCORE
	db DOUBLE_EDGE
	db REFLECT
	db AMNESIA
	db PAY_DAY
	db AGILITY
	db RAZOR_LEAF
	db SPORE
	db ENDURE
	db SILVER_WIND
	db -1 ; end

AipomEggMoves:
	db PURSUIT
	db SPITE
	db SLAM
	db BEAT_UP
	db THUNDER_WAVE
	db SPARK
	db GROWL
	db DIZZY_PUNCH
	db KARATE_CHOP
	db FAINT_ATTACK
	db LOW_KICK
	db SEISMIC_TOSS
	db -1 ; end
	
SunkernEggMoves:
	db ENCORE
	db LEECH_SEED
	db SWEET_SCENT
	db MORNING_SUN
	db MUD_SHOT
	db SING
	db EARTH_POWER
	db -1

YanmaEggMoves:
	db WHIRLWIND
	db REVERSAL
	db LEECH_LIFE
	db SWEET_KISS
	db PSYBEAM
	db CONFUSION
	db HYPER_VOICE
	db GUST
	db FAINT_ATTACK
	db TAKE_DOWN
	db SNORE
	db -1 ; end

WooperEggMoves:
	db ANCIENTPOWER
	db SAFEGUARD
	db BELLY_DRUM
	db THUNDERSHOCK
	db PURSUIT
	db ENCORE
	db DOUBLE_KICK
	db RECOVER
	db SLUDGE
	db SNORE
	db ENDURE
	db EARTH_POWER
	db -1 ; end

MurkrowEggMoves:
	db WHIRLWIND
	db DRILL_PECK
	db QUICK_ATTACK
	db SKY_ATTACK
	db THUNDER_WAVE
	db BEAT_UP
	db FURY_ATTACK
	db CONFUSE_RAY
	db FEATHERDANCE
	db PERISH_SONG
	db SCREECH
	db ROOST
	db TWISTER
	db -1 ; end

MisdreavusEggMoves:
	db SCREECH
	db DESTINY_BOND
	db THUNDER_WAVE
	db HYPNOSIS
	db SMOG
	db SMOKESCREEN
	db HEAL_BELL
	db MEGA_DRAIN
	db HAZE
	db FORESIGHT
	db -1 ; end

GirafarigEggMoves:
	db AMNESIA
	db BEAT_UP
	db THUNDER_WAVE
	db THUNDERSHOCK
	db TRI_ATTACK
	db DOUBLE_KICK
	db MIRROR_COAT
	db MEAN_LOOK
	db PSYCHO_CUT
	db SLAM
	db ENDURE
	db -1 ; end

PinecoEggMoves:
	db REFLECT
	db FLAIL
	db SWIFT
	db CONFUSION
	db ENDURE
	db DOUBLE_EDGE
	db REVERSAL
	db MAGNITUDE
	db PAIN_SPLIT
	db DEFENSE_CURL
	db STRING_SHOT
	db -1 ; end

DunsparceEggMoves:
	db BITE
	db THUNDER_WAVE
	db HORN_DRILL
	db DESTINY_BOND
	db SNORE
	db AGILITY
	db HYPNOSIS
	db MAGNITUDE
	db ROOST
	db SLAM
	db HEX
	db -1 ; end

GligarEggMoves:
	db METAL_CLAW
	db LEECH_LIFE
	db FLAIL
	db MUD_SHOT
	db AGILITY
	db BATON_PASS
	db DOUBLE_EDGE
	db POISON_FANG
	db ROOST
	db ENDURE
	db LICK
	db BITE
	db EARTH_POWER
	db -1 ; end

SnubbullEggMoves:
	db METRONOME
	db FAINT_ATTACK
	db REFLECT
	db PRESENT
	db CRUNCH
	db HEAL_BELL
	db LEER
	db THUNDER_WAVE
	db SAND_ATTACK
	db SPARK
	db SNORE
	db LOW_KICK
	db SUBMISSION
	db ENDURE
	db SUPER_FANG
	db -1 ; end

QwilfishEggMoves:
	db FLAIL
	db HAZE
	db BUBBLEBEAM
	db SUPERSONIC
	db THUNDER_WAVE
	db DOUBLE_EDGE
	db SPARK
	db THRASH
	db PAIN_SPLIT
	db DEFENSE_CURL
	db SWORDS_DANCE
	db -1 ; end

ShuckleEggMoves:
	db SWEET_SCENT
	db REFLECT
	db MIRROR_COAT
	db MIST
	db SLUDGE
	db MUD_SHOT
	db STRING_SHOT
	db ENDURE
	db MAGNITUDE
	db EARTH_POWER
	db -1 ; end

HeracrossEggMoves:
	db HARDEN
	db FLAIL
	db CROSS_CHOP
	db SILVER_WIND
	db FALSE_SWIPE
	db PURSUIT
	db LOW_KICK
	db SLAM
	db DOUBLE_EDGE
	db METAL_CLAW
	db SWORDS_DANCE
	db -1 ; end

SneaselEggMoves:
	db SPITE
	db FORESIGHT
	db REFLECT
	db BITE
	db PURSUIT
	db SHADOW_PUNCH
	db MOONLIGHT
	db POWDER_SNOW
	db LOW_KICK
	db PSYCHO_CUT
	db DOUBLE_KICK
	db ICICLE_CRASH
	db -1 ; end

TeddiursaEggMoves:
	db CRUNCH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db FOCUS_ENERGY
	db METAL_CLAW
	db CROSS_CHOP
	db BELLY_DRUM
	db SUBMISSION
	db SLAM
	db MOONLIGHT
	db ENDURE
	db -1 ; end

SlugmaEggMoves:
	db ACID_ARMOR
	db MIRROR_COAT
	db PSYBEAM
	db SMOKESCREEN
	db MAGNITUDE
	db PAIN_SPLIT
	db SNORE
	db ENCORE
	db SELFDESTRUCT
	db DEFENSE_CURL
	db -1 ; end

SwinubEggMoves:
	db BITE
	db SLAM
	db ANCIENTPOWER
	db WHIRLWIND
	db DOUBLE_EDGE
	db FISSURE
	db SUBMISSION
	db CHARM
	db DEFENSE_CURL
	db HOWL
	db EARTH_POWER
	db -1 ; end

CorsolaEggMoves:
	db SCREECH
	db MIST
	db AMNESIA
	db CONFUSE_RAY
	db DEFENSE_CURL
	db SLAM
	db SELFDESTRUCT
	db PAIN_SPLIT
	db -1 ; end

RemoraidEggMoves:
	db OCTAZOOKA
	db SUPERSONIC
	db HAZE
	db SCREECH
	db THUNDER_WAVE
	db AMNESIA
	db BUBBLE
	db SLUDGE
	db MUD_SHOT
	db STRING_SHOT
	db FLASH_CANNON
	db -1 ; end

DelibirdEggMoves:
	db AURORA_BEAM
	db QUICK_ATTACK
	db SPLASH
	db RAPID_SPIN
	db SPIKES
	db CONFUSION
	db WATER_GUN
	db SKY_ATTACK
	db ENDURE
	db SLAM
	db SEISMIC_TOSS
	db BATON_PASS
	db -1 ; end

MantykeEggMoves:
	db TWISTER
	db HYDRO_PUMP
	db HAZE
	db SLAM
	db GUST
	db CHARM
	db PURSUIT
	db MIRROR_COAT
	db MUD_SHOT
	db SPLASH
	db AMNESIA
	db SLAM
	db -1 ; end

SkarmoryEggMoves:
	db PURSUIT
	db SKY_ATTACK
	db ROOST
	db HAZE
	db FORESIGHT
	db MIRROR_MOVE
	db ENDURE
	db TWISTER
	db LEER
	db SWIFT
	db -1 ; end

HoundourEggMoves:
	db RAGE
	db PURSUIT
	db SPITE
	db REVERSAL
	db FOCUS_ENERGY
	db SUPER_FANG
	db CHARM
	db POISON_FANG
	db FLAME_WHEEL
	db SKULL_BASH
	db -1 ; end

PhanpyEggMoves:
	db FOCUS_ENERGY
	db ANCIENTPOWER
	db WATER_GUN
	db SAND_ATTACK
	db WATER_GUN
	db POWDER_SNOW
	db SNORE
	db MUD_SHOT
	db FISSURE
	db REVERSAL
	db EARTH_POWER
	db -1 ; end

StantlerEggMoves:
	db REFLECT
	db SPITE
	db DISABLE
	db BITE
	db THUNDER_WAVE
	db SAFEGUARD
	db DOUBLE_KICK
	db MEGAHORN
	db RAGE
	db SLAM
	db DOUBLE_EDGE
	db -1 ; end

LarvitarEggMoves:
	db PURSUIT
	db STOMP
	db OUTRAGE
	db FOCUS_ENERGY
	db ANCIENTPOWER
	db RAGE
	db DOUBLE_KICK
	db DRAGON_DANCE
	db SPITE
	db SUBMISSION
	db SLAM
	db ENDURE
	db EARTH_POWER
	db -1 ; end
	
Vulpix_AlolanEggMoves:
	db HYPNOSIS
	db FLAIL
	db SPITE
	db DISABLE
	db HOWL
	db CHARM
	db LICK
	db NIGHT_SHADE
	db -1 ; end
	
Bulbasaur_CloneEggMoves:
	db AMNESIA
	db CHARM
	db ENDURE
	db SLUDGE
	db SNORE
	db SYNTHESIS
	db SLAM
	db SKULL_BASH
	db SAFEGUARD
	db PETAL_DANCE
	db STUN_SPORE
	db -1 ; end

Charmander_CloneEggMoves:
	db BELLY_DRUM
	db ANCIENTPOWER
	db BITE
	db OUTRAGE
	db BEAT_UP
	db DRAGON_DANCE
	db CRUNCH
	db SNORE
	db ENDURE
	db SEISMIC_TOSS
	db FURY_SWIPES
	db -1 ; end

Squirtle_CloneEggMoves:
	db MIRROR_COAT
	db HAZE
	db MIST
	db CONFUSION
	db FORESIGHT
	db FLAIL
	db SNORE
	db ENDURE
	db POWDER_SNOW
	db -1 ; end
	
Ekans_DarkEggMoves:
	db PURSUIT
	db SLAM
	db SPITE
	db BEAT_UP
	db CRUNCH
	db SCARY_FACE
	db DISABLE
	db DRAGON_DANCE
	db SLAM
	db SLUDGE
	db -1 ; end
	
Pichu_SpikyEggMoves:
	db REVERSAL
	db PRESENT
	db ENCORE
	db DOUBLESLAP
	db SPARK
	db FLAIL
	db ENDURE
	db SEISMIC_TOSS
	db PETAL_DANCE
	db DIZZY_PUNCH
	db SCARY_FACE
	db SING
	db METRONOME
	db -1 ; end
	
Growlithe_HisuianEggMoves:
	db SLAM
	db SAFEGUARD
	db THRASH
	db FIRE_SPIN
	db MORNING_SUN
	db DOUBLE_KICK
	db ENDURE
	db SNORE
	db CHARM
	db SAFEGUARD
	db SKULL_BASH
	db -1 ; end
	
Sandshrew_AlolanEggMoves:
	db FLAIL
	db SAFEGUARD
	db RAPID_SPIN
	db ENDURE
	db SUPER_FANG
	db SLAM
	db ICICLE_CRASH
	db -1 ; end
	
RinrinEggMoves:
	db SPITE
	db HYPNOSIS
	db AMNESIA
	db PAY_DAY
	db PERISH_SONG
	db PURSUIT
	db MOONLIGHT
	db SING
	db -1 ; end

NoEggMoves:
	db -1 ; end
