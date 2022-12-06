INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:   ;x
	db AMNESIA
	db CHARM
	db ENDURE
	db SLUDGE
	db SNORE
	db SLAM
	db SAFEGUARD
	db PETAL_DANCE
	db STUN_SPORE
	db -1 ; end

CharmanderEggMoves:   ;x
	db BELLY_DRUM
	db ANCIENTPOWER
	db BITE
	db BEAT_UP
	db DRAGON_DANCE
	db CRUNCH
	db SNORE
	db ENDURE
	db FURY_SWIPES
	db POWERUPPUNCH
	db -1 ; end

SquirtleEggMoves:   ;x
	db MIRROR_COAT
	db HAZE
	db MIST
	db CONFUSION
	db FORESIGHT
	db FLAIL
	db SNORE
	db ENDURE
	db POWDER_SNOW
	db POWERUPPUNCH
	db RAZOR_SHELL
	db ROLLOUT
	db -1 ; end
	
CaterpieEggMoves:   ;x
	db SLUDGE
	db CONFUSION
	db LEECH_LIFE
	db -1
	
WeedleEggMoves:   ;x
	db SLUDGE
	db LEECH_LIFE
	db MEGAHORN
	db -1

PidgeyEggMoves:   ;x
	db PURSUIT
	db FAINT_ATTACK
	db FORESIGHT
	db TAKE_DOWN
	db DRILL_PECK
	db LEER
	db -1 ; end

RattataEggMoves:   ;x
	db SCREECH
	db FLAME_WHEEL
	db FURY_SWIPES
	db REVERSAL
	db SPARK
	db LEER
	db POISON_FANG
	db -1 ; end

SpearowEggMoves:   ;x
	db FAINT_ATTACK
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
	db WHIRLWIND
	db FEATHERDANCE
	db ENDURE
	db SONICBOOM
	db SUPERSONIC
	db BATON_PASS
	db ASTONISH
	db -1 ; end

EkansEggMoves:   ;x
	db PURSUIT
	db SLAM
	db SPITE
	db BEAT_UP
	db CRUNCH
	db DISABLE
	db DRAGON_DANCE
	db ICE_FANG
	db -1 ; end
	
PichuEggMoves:   ;x
	db REVERSAL
	db PRESENT
	db ENCORE
	db FLAIL
	db ENDURE
	db PETAL_DANCE
	db POWERUPPUNCH
	db SCARY_FACE
	db SING
	db METRONOME
	db VOLT_TACKLE
	db -1 ; end

SandshrewEggMoves:   ;x
	db FLAIL
	db SAFEGUARD
	db RAPID_SPIN
	db METAL_CLAW
	db MUD_SHOT
	db ENDURE
	db SUPER_FANG
	db SLAM
	db POISON_JAB
	db X_SCISSOR
	db -1 ; end

NidoranFEggMoves:   ;x
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db FOCUS_ENERGY
	db BEAT_UP
	db ENDURE
	db PURSUIT
	db SUPER_FANG
	db MOONLIGHT
	db SWEET_KISS
	db -1 ; end

NidoranMEggMoves:   ;x
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db CONFUSION
	db AMNESIA
	db BEAT_UP
	db POISON_FANG
	db PURSUIT
	db SUPER_FANG
	db CHARM
	db TWINEEDLE
	db -1 ; end
	
ClefairyEggMoves:   ;x
	db PRESENT
	db AMNESIA
	db BELLY_DRUM
	db SPLASH
	db RECOVER
	db MIRROR_COAT
	db PETAL_DANCE
	db POWERUPPUNCH
	db PSYCH_UP
	db -1 ; end

VulpixEggMoves:   ;x
	db PURSUIT
	db HYPNOSIS
	db FLAIL
	db DISABLE
	db HOWL
	db CHARM
	db DESTINY_BOND
	db LICK
	db CONFUSION
	db FIRE_FANG
	db -1 ; end
	
JigglypuffEggMoves:   ;x
	db PERISH_SONG
	db PRESENT
	db FAINT_ATTACK
	db MOONLIGHT
	db PETAL_DANCE
	db SPARK
	db POWERUPPUNCH
	db PSYCH_UP
	db -1 ; end

ZubatEggMoves:   ;x
	db QUICK_ATTACK
	db PURSUIT
	db FAINT_ATTACK
	db GUST
	db WHIRLWIND
	db HYPNOSIS
	db SKY_ATTACK
	db FLAIL
	db MIRROR_MOVE
	db ABSORB
	db -1 ; end

OddishEggMoves:   ;x
	db RAZOR_LEAF
	db SPORE
	db LEECH_SEED
	db GROWTH
	db SMOG
	db -1 ; end

ParasEggMoves:   ;x
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
	db X_SCISSOR
	db SWEET_SCENT
	db -1 ; end

VenonatEggMoves:   ;x
	db BATON_PASS
	db SCREECH
	db AGILITY
	db STRING_SHOT
	db HYPNOSIS
	db TELEPORT
	db POISON_STING
	db SLUDGE
	db SWEET_SCENT
	db -1 ; end

DiglettEggMoves:   ;x
	db SCREECH
	db ANCIENTPOWER
	db BEAT_UP
	db REVERSAL
	db ENDURE
	db ROCK_THROW
	db FALSE_SWIPE
	db ASTONISH
	db -1 ; end

MeowthEggMoves:   ;x
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
	db PSYCH_UP
	db -1 ; end

PsyduckEggMoves:   ;x
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
	db POWERUPPUNCH
	db -1 ; end

MankeyEggMoves:   ;x
	db FORESIGHT
	db REVERSAL
	db BEAT_UP
	db ENCORE
	db ENDURE
	db SLAM
	db BELLY_DRUM
	db POISON_JAB
	db PSYCH_UP
	db -1 ; end

GrowlitheEggMoves:   ;x
	db SLAM
	db SAFEGUARD
	db THRASH
	db FIRE_SPIN
	db MORNING_SUN
	db DOUBLE_KICK
	db ENDURE
	db SNORE
	db CHARM
	db GROWL
	db -1 ; end

PoliwagEggMoves:   ;x
	db MIST
	db SPLASH
	db HAZE
	db ENCORE
	db DEFENSE_CURL
	db CONFUSION
	db GROWTH
	db SWEET_KISS
	db POWDER_SNOW
	db -1 ; end

AbraEggMoves:   ;x
	db ENCORE
	db METRONOME
	db FORESIGHT
	db MIRROR_COAT
	db HYPNOSIS
	db -1 ; end

MachopEggMoves:   ;x
	db ENCORE
	db MACH_PUNCH
	db THRASH
	db POUND
	db -1 ; end

BellsproutEggMoves:   ;x
	db ENCORE
	db MORNING_SUN
	db LEECH_LIFE
	db LEECH_SEED
	db -1 ; end

TentacoolEggMoves:   ;x
	db AURORA_BEAM
	db MIRROR_COAT
	db RAPID_SPIN
	db HAZE
	db SAFEGUARD
	db CONFUSE_RAY
	db HEX
	db POWER_GEM
	db -1 ; end

GeodudeEggMoves:   ;x
	db FLAIL
	db ENDURE
	db RAPID_SPIN
	db CROSS_CHOP
	db HARDEN
	db IRON_DEFENSE
	db POWERUPPUNCH
	db -1 ; end

PonytaEggMoves:   ;x
	db THRASH
	db DOUBLE_KICK
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db MORNING_SUN
	db LOW_KICK
	db LICK
	db -1 ; end

SlowpokeEggMoves:   ;x
	db SAFEGUARD
	db BELLY_DRUM
	db STOMP
	db MUD_SHOT
	db SNORE
	db ENDURE
	db SLAM
	db HYPNOSIS
	db -1 ; end

FarfetchDEggMoves:   ;x
	db FORESIGHT
	db MIRROR_MOVE
	db GUST
	db QUICK_ATTACK
	db FLAIL
	db FEATHERDANCE
	db ENDURE
	db SKY_ATTACK
	db POISON_JAB
	db PSYCH_UP
	db -1 ; end

DoduoEggMoves:   ;x
	db SUPERSONIC
	db HAZE
	db FAINT_ATTACK
	db MIRROR_MOVE
	db SKY_ATTACK
	db ENDURE
	db LOW_KICK
	db SCREECH
	db -1 ; end

SeelEggMoves:   ;x
	db LICK
	db PERISH_SONG
	db DISABLE
	db PECK
	db SLAM
	db HORN_DRILL
	db SNORE
	db FLAIL
	db PURSUIT
	db -1 ; end

GrimerEggMoves:   ;x
	db HAZE
	db MEAN_LOOK
	db LICK
	db SHADOW_PUNCH
	db SLAM
	db FAINT_ATTACK
	db PURSUIT
	db POWERUPPUNCH
	db -1 ; end

ShellderEggMoves:   ;x
	db BUBBLEBEAM
	db TAKE_DOWN
	db RAPID_SPIN
	db SCREECH
	db MUD_SHOT
	db TWINEEDLE
	db ENDURE
	db SAFEGUARD
	db LEER
	db -1 ; end

GastlyEggMoves:   ;x
	db PERISH_SONG
	db HAZE
	db DISABLE
	db SCARY_FACE
	db CONFUSION
	db BEAT_UP
	db HEX
	db ASTONISH
	db PSYCH_UP
	db -1 ; end

OnixEggMoves:   ;x
	db FLAIL
	db DEFENSE_CURL
	db ENDURE
	db MAGNITUDE
	db DRAGON_DANCE
	db THRASH
	db MIRROR_COAT
	db IRON_DEFENSE
	db ROLLOUT
	db -1 ; end

DrowzeeEggMoves:   ;x
	db LOW_KICK
	db AMNESIA
	db SNORE
	db POWERUPPUNCH
	db -1 ; end

KrabbyEggMoves:   ;x
	db HAZE
	db AMNESIA
	db ANCIENTPOWER
	db AGILITY
	db ENDURE
	db REVERSAL
	db CONFUSION
	db IRON_DEFENSE
	db RAZOR_SHELL
	db -1 ; end

ExeggcuteEggMoves:   ;x
	db MOONLIGHT
	db MEGA_DRAIN
	db ANCIENTPOWER
	db ENDURE
	db PSYCH_UP
	db -1 ; end

CuboneEggMoves:   ;x
	db ANCIENTPOWER
	db BELLY_DRUM
	db SCREECH
	db PERISH_SONG
	db DOUBLE_KICK
	db ENDURE
	db LOW_KICK
	db FURY_ATTACK
	db LEER
	db HEX
	db POWERUPPUNCH
	db -1 ; end
	
TyrogueEggMoves:   ;x
	db RAPID_SPIN
	db MACH_PUNCH
	db RAGE
	db JUMP_KICK
	db PURSUIT
	db LOW_KICK
	db POWERUPPUNCH
	db -1 ; end

LickitungEggMoves:   ;x
	db MAGNITUDE
	db AMNESIA
	db MUD_SHOT
	db SNORE
	db TAKE_DOWN
	db POUND
	db POWERUPPUNCH
	db -1 ; end

KoffingEggMoves:   ;x
	db SCREECH
	db PSYBEAM
	db SPITE
	db FIRE_SPIN
	db SUPERSONIC
	db -1 ; end

RhyhornEggMoves:   ;x
	db CRUNCH
	db REVERSAL
	db THRASH
	db PURSUIT
	db SNORE
	db ENDURE
	db SLAM
	db ICE_FANG
	db ROLLOUT
	db FIRE_FANG
	db -1 ; end

HappinyEggMoves:   ;x
	db PRESENT
	db METRONOME
	db ENDURE
	db SLAM
	db SPARK
	db PSYCH_UP
	db -1 ; end

KangaskidEggMoves:   ;x
	db STOMP
	db FORESIGHT
	db FOCUS_ENERGY
	db SAFEGUARD
	db DISABLE
	db FAINT_ATTACK
	db DOUBLE_KICK
	db PURSUIT
	db -1 ; end

HorseaEggMoves:   ;x
	db FLAIL
	db AURORA_BEAM
	db OCTAZOOKA
	db DISABLE
	db SPLASH
	db DRAGON_RAGE
	db MUD_SHOT
	db HAZE
	db CONFUSE_RAY
	db POWDER_SNOW
	db SMOG
	db -1 ; end

GoldeenEggMoves:   ;x
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db MUD_SHOT
	db SLAM
	db MAGNITUDE
	db LEER
	db SPLASH
	db POISON_JAB
	db -1 ; end
	
StaryuEggMoves:   ;x
	db AURORA_BEAM
	db SUPERSONIC
	db PSYBEAM
	db SAFEGUARD
	db HAZE
	db MIST
	db ENDURE
	db ICE_SHARD
	db PSYCH_UP
	db -1

ScytherEggMoves:   ;x
	db SAFEGUARD
	db BATON_PASS
	db REVERSAL
	db ENDURE
	db SILVER_WIND
	db MORNING_SUN
	db TAKE_DOWN
	db SONICBOOM
	db METAL_CLAW
	db BUG_BUZZ
	db -1 ; end
	
ElekidEggMoves:   ;x
	db CROSS_CHOP
	db MACH_PUNCH
	db ENDURE
	db POWERUPPUNCH
	db PURSUIT
	db FOCUS_ENERGY
	db -1 ; end

MagbyEggMoves:   ;x
	db SCREECH
	db CROSS_CHOP
	db MACH_PUNCH
	db BELLY_DRUM
	db FOCUS_ENERGY
	db LOW_KICK
	db ENDURE
	db POWERUPPUNCH
	db -1 ; end

PinsirEggMoves:   ;x
	db FLAIL
	db FAINT_ATTACK
	db QUICK_ATTACK
	db ENDURE
	db SLAM
	db TAKE_DOWN
	db ROCK_THROW
	db CROSS_CHOP
	db REVERSAL
	db IRON_DEFENSE
	db -1 ; end
	
MoobyEggMoves:   ;x
	db ENDURE
	db REVERSAL
	db QUICK_ATTACK
	db SPARK
	db MAGNITUDE
	db -1 ; end
	
MagikarpEggMoves:   ;x
	db HYDRO_PUMP
	db DRAGON_RAGE
	db BUBBLE
	db REVERSAL
	db TWISTER
	db -1

NessiEggMoves:   ;x
	db FORESIGHT
	db BITE
	db CONFUSION
	db DRAGON_DANCE
	db HORN_DRILL
	db ANCIENTPOWER
	db SNORE
	db ENDURE
	db RECOVER
	db HYPNOSIS
	db PURSUIT
	db ICE_SHARD
	db -1 ; end

EeveeEggMoves:   ;x
	db ENDURE
	db SNORE
	db SLAM
	db REVERSAL
	db MORNING_SUN
	db FOCUS_ENERGY
	db PAY_DAY
	db SAFEGUARD
	db SING
	db -1 ; end

OmanyteEggMoves:   ;x
	db BUBBLEBEAM
	db AURORA_BEAM
	db SLAM
	db SUPERSONIC
	db ROCK_THROW
	db ENDURE
	db BUBBLE
	db IRON_DEFENSE
	db RAZOR_SHELL
	db -1 ; end

KabutoEggMoves:   ;x
	db BUBBLEBEAM
	db AURORA_BEAM
	db RAPID_SPIN
	db FLAIL
	db ROCK_THROW
	db CONFUSE_RAY
	db FORESIGHT
	db BUBBLE
	db HAZE
	db LEER
	db IRON_DEFENSE
	db MEGA_DRAIN
	db ROLLOUT
	db -1 ; end

AerodactylEggMoves:   ;x
	db WHIRLWIND
	db PURSUIT
	db FORESIGHT
	db ROCK_THROW
	db SKY_ATTACK
	db TRI_ATTACK
	db LEER
	db EMBER
	db DRAGON_DANCE
	db -1 ; end

MunchlaxEggMoves:   ;x
	db SPLASH
	db PRESENT
	db CHARM
	db WHIRLWIND
	db PURSUIT
	db POWERUPPUNCH
	db -1 ; end

DratiniEggMoves:   ;x
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
	db POWER_GEM
	db -1 ; end

ChikoritaEggMoves:   ;x
	db VINE_WHIP
	db LEECH_SEED
	db ANCIENTPOWER
	db FLAIL
	db DRAGON_DANCE
	db SING
	db ENDURE
	db SNORE
	db TAKE_DOWN
	db THRASH
	db POISONPOWDER
	db SWEET_SCENT
	db -1 ; end

CyndaquilEggMoves:   ;x
	db FURY_SWIPES
	db REVERSAL
	db THRASH
	db FORESIGHT
	db ANCIENTPOWER
	db DOUBLE_KICK
	db SNORE
	db HOWL
	db -1 ; end

TotodileEggMoves:   ;x
	db ANCIENTPOWER
	db TAKE_DOWN
	db METAL_CLAW
	db DRAGON_DANCE
	db LOW_KICK
	db MUD_SHOT
	db SLAM
	db ENDURE
	db POWERUPPUNCH
	db -1 ; end

SentretEggMoves:   ;x
	db SLASH
	db FOCUS_ENERGY
	db REVERSAL
	db POWERUPPUNCH
	db CONFUSION
	db THRASH
	db CHARM
	db SUPER_FANG
	db TACKLE
	db -1 ; end

HoothootEggMoves:   ;x
	db MIRROR_MOVE
	db SUPERSONIC
	db FAINT_ATTACK
	db WHIRLWIND
	db SKY_ATTACK
	db PSYBEAM
	db FEATHERDANCE
	db AGILITY
	db RECOVER
	db -1 ; end

LedybaEggMoves:   ;x
	db PSYBEAM
	db FAINT_ATTACK
	db LEECH_LIFE
	db HYPNOSIS
	db SCREECH
	db ENDURE
	db BUG_BUZZ
	db SWEET_SCENT
	db ROLLOUT
	db -1 ; end

SpinarakEggMoves:   ;x
	db PSYBEAM
	db DISABLE
	db SONICBOOM
	db BATON_PASS
	db PURSUIT
	db GROWTH
	db SLASH
	db FLAIL
	db TWINEEDLE
	db X_SCISSOR
	db -1 ; end

ChinchouEggMoves:   ;x
	db SCREECH
	db RECOVER
	db PSYBEAM
	db HAZE
	db AMNESIA
	db AGILITY
	db ENDURE
	db FAINT_ATTACK
	db -1 ; end

TogepiEggMoves:   ;x
	db PRESENT
	db MIRROR_MOVE
	db FORESIGHT
	db SPARK
	db SCREECH
	db CONFUSION
	db MORNING_SUN
	db DEFENSE_CURL
	db SOFTBOILED
	db ENDURE
	db PSYCH_UP
	db ROLLOUT
	db -1 ; end

NatuEggMoves:   ;x
	db HAZE
	db DRILL_PECK
	db QUICK_ATTACK
	db FAINT_ATTACK
	db SAND_ATTACK
	db GUST
	db FEATHERDANCE
	db FIRE_SPIN
	db -1 ; end

MareepEggMoves:   ;x
	db SLAM
	db SAFEGUARD
	db SCREECH
	db SAND_ATTACK
	db AGILITY
	db DEFENSE_CURL
	db ENDURE
	db HYPNOSIS
	db -1 ; end

MarillEggMoves:   ;x
	db PRESENT
	db AMNESIA
	db BELLY_DRUM
	db PERISH_SONG
	db SUPERSONIC
	db FORESIGHT
	db POWERUPPUNCH
	db AURORA_BEAM
	db SING
	db ENCORE
	db -1 ; end

BonslyEggMoves:   ;x
	db RAGE
	db HARDEN
	db ENDURE
	db REVERSAL
	db DEFENSE_CURL
	db ROLLOUT
	db -1 ; end

HoppipEggMoves:   ;x
	db CONFUSION
	db GROWL
	db ENCORE
	db AMNESIA
	db PAY_DAY
	db AGILITY
	db RAZOR_LEAF
	db SPORE
	db ENDURE
	db SILVER_WIND
	db SWEET_SCENT
	db -1 ; end

AipomEggMoves:   ;x
	db PURSUIT
	db SPITE
	db SLAM
	db BEAT_UP
	db SPARK
	db GROWL
	db FAINT_ATTACK
	db LOW_KICK
	db -1 ; end
	
SunkernEggMoves:
	db ENCORE
	db LEECH_SEED
	db SWEET_SCENT
	db MORNING_SUN
	db MUD_SHOT
	db SING
	db EARTH_POWER
	db SWEET_SCENT
	db -1

YanmaEggMoves:   ;x
	db WHIRLWIND
	db REVERSAL
	db LEECH_LIFE
	db SWEET_KISS
	db PSYBEAM
	db CONFUSION
	db GUST
	db FAINT_ATTACK
	db TAKE_DOWN
	db SNORE
	db SILVER_WIND
	db -1 ; end

WooperEggMoves:   ;x
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
	db -1 ; end

MurkrowEggMoves:   ;x
	db WHIRLWIND
	db DRILL_PECK
	db QUICK_ATTACK
	db SKY_ATTACK
	db BEAT_UP
	db FURY_ATTACK
	db CONFUSE_RAY
	db FEATHERDANCE
	db PERISH_SONG
	db SCREECH
	db ASTONISH
	db PSYCH_UP
	db -1 ; end

MisdreavusEggMoves:   ;x
	db SCREECH
	db DESTINY_BOND
	db HYPNOSIS
	db SMOG
	db SMOKESCREEN
	db MEGA_DRAIN
	db HAZE
	db FORESIGHT
	db PSYCH_UP
	db -1 ; end

GirafarigEggMoves:   ;x
	db AMNESIA
	db BEAT_UP
	db THUNDERSHOCK
	db TRI_ATTACK
	db DOUBLE_KICK
	db MIRROR_COAT
	db MEAN_LOOK
	db PSYCHO_CUT
	db SLAM
	db ENDURE
	db -1 ; end

PinecoEggMoves:   ;x
	db FLAIL
	db CONFUSION
	db REVERSAL
	db MAGNITUDE
	db DEFENSE_CURL
	db STRING_SHOT
	db SWEET_SCENT
	db ROLLOUT
	db -1 ; end

DunsparceEggMoves:   ;x
	db BITE
	db HORN_DRILL
	db DESTINY_BOND
	db SNORE
	db AGILITY
	db HYPNOSIS
	db MAGNITUDE
	db SLAM
	db HEX
	db ASTONISH
	db -1 ; end

GligarEggMoves:   ;x
	db METAL_CLAW
	db LEECH_LIFE
	db FLAIL
	db MUD_SHOT
	db AGILITY
	db BATON_PASS
	db TAKE_DOWN
	db POISON_FANG
	db ENDURE
	db LICK
	db BITE
	db -1 ; end

SnubbullEggMoves:   ;x
	db METRONOME
	db FAINT_ATTACK
	db PRESENT
	db CRUNCH
	db LEER
	db SAND_ATTACK
	db SPARK
	db SNORE
	db LOW_KICK
	db ENDURE
	db SUPER_FANG
	db POWERUPPUNCH
	db POISON_FANG
	db FIRE_FANG
	db -1 ; end

QwilfishEggMoves:   ;x
	db FLAIL
	db HAZE
	db BUBBLEBEAM
	db SUPERSONIC
	db SPARK
	db THRASH
	db DEFENSE_CURL
	db ASTONISH
	db ROLLOUT
	db -1 ; end

ShuckleEggMoves:   ;x
	db SWEET_SCENT
	db MIRROR_COAT
	db MIST
	db SLUDGE
	db MUD_SHOT
	db STRING_SHOT
	db ENDURE
	db MAGNITUDE
	db -1 ; end

HeracrossEggMoves:   ;x
	db HARDEN
	db FLAIL
	db CROSS_CHOP
	db SILVER_WIND
	db FALSE_SWIPE
	db PURSUIT
	db LOW_KICK
	db SLAM
	db METAL_CLAW
	db -1 ; end

SneaselEggMoves:   ;x
	db SPITE
	db FORESIGHT
	db BITE
	db SHADOW_PUNCH
	db MOONLIGHT
	db POWDER_SNOW
	db LOW_KICK
	db PSYCHO_CUT
	db DOUBLE_KICK
	db ICICLE_CRASH
	db POWERUPPUNCH
	db X_SCISSOR
	db POISON_JAB
	db PSYCH_UP
	db -1 ; end

TeddiursaEggMoves:   ;x
	db CRUNCH
	db TAKE_DOWN
	db FOCUS_ENERGY
	db METAL_CLAW
	db CROSS_CHOP
	db BELLY_DRUM
	db SLAM
	db MOONLIGHT
	db ENDURE
	db POWERUPPUNCH
	db -1 ; end

SlugmaEggMoves:   ;x
	db ACID_ARMOR
	db MIRROR_COAT
	db PSYBEAM
	db SMOKESCREEN
	db MAGNITUDE
	db SNORE
	db ENCORE
	db DEFENSE_CURL
	db IRON_DEFENSE
	db ROLLOUT
	db -1 ; end

SwinubEggMoves:   ;x
	db BITE
	db SLAM
	db ANCIENTPOWER
	db WHIRLWIND
	db CHARM
	db DEFENSE_CURL
	db HOWL
	db -1 ; end

CorsolaEggMoves:   ;x
	db SCREECH
	db MIST
	db AMNESIA
	db CONFUSE_RAY
	db DEFENSE_CURL
	db SLAM
	db ROLLOUT
	db -1 ; end

RemoraidEggMoves:   ;x
	db OCTAZOOKA
	db SUPERSONIC
	db HAZE
	db SCREECH
	db AMNESIA
	db BUBBLE
	db SLUDGE
	db MUD_SHOT
	db STRING_SHOT
	db -1 ; end

DelibirdEggMoves:   ;x
	db AURORA_BEAM
	db QUICK_ATTACK
	db SPLASH
	db RAPID_SPIN
	db CONFUSION
	db WATER_GUN
	db SKY_ATTACK
	db ENDURE
	db SLAM
	db BATON_PASS
	db ICE_SHARD
	db -1 ; end

MantykeEggMoves:   ;x
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
	db -1 ; end

SkarmoryEggMoves:   ;x
	db PURSUIT
	db SKY_ATTACK
	db HAZE
	db FORESIGHT
	db MIRROR_MOVE
	db ENDURE
	db HARDEN
	db -1 ; end

HoundourEggMoves:   ;x
	db RAGE
	db PURSUIT
	db SPITE
	db REVERSAL
	db FOCUS_ENERGY
	db SUPER_FANG
	db CHARM
	db POISON_FANG
	db FLAME_WHEEL
	db HEX
	db -1 ; end

PhanpyEggMoves:   ;x
	db FOCUS_ENERGY
	db ANCIENTPOWER
	db WATER_GUN
	db SAND_ATTACK
	db POWDER_SNOW
	db SNORE
	db MUD_SHOT
	db REVERSAL
	db ICE_SHARD
	db -1 ; end

StantlerEggMoves:   ;x
	db SPITE
	db DISABLE
	db BITE
	db SAFEGUARD
	db DOUBLE_KICK
	db MEGAHORN
	db RAGE
	db SLAM
	db PSYCHO_CUT
	db PSYCH_UP
	db -1 ; end

LarvitarEggMoves:   ;x
	db PURSUIT
	db STOMP
	db FOCUS_ENERGY
	db ANCIENTPOWER
	db RAGE
	db DOUBLE_KICK
	db DRAGON_DANCE
	db SPITE
	db SLAM
	db ENDURE
	db IRON_DEFENSE
	db ICE_FANG
	db -1 ; end
	
Vulpix_AlolanEggMoves:   ;x
	db HYPNOSIS
	db FLAIL
	db SPITE
	db DISABLE
	db HOWL
	db CHARM
	db LICK
	db ICE_FANG
	db -1 ; end
	
Bulbasaur_CloneEggMoves:
	db AMNESIA
	db CHARM
	db ENDURE
	db SLUDGE
	db SNORE
	db SLAM
	db SAFEGUARD
	db PETAL_DANCE
	db STUN_SPORE
	db -1 ; end

Charmander_CloneEggMoves:
	db BELLY_DRUM
	db ANCIENTPOWER
	db BITE
	db BEAT_UP
	db DRAGON_DANCE
	db CRUNCH
	db SNORE
	db ENDURE
	db FURY_SWIPES
	db POWERUPPUNCH
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
	db POWERUPPUNCH
	db RAZOR_SHELL
	db ROLLOUT
	db -1 ; end
	
Ekans_DarkEggMoves:
	db PURSUIT
	db SLAM
	db SPITE
	db BEAT_UP
	db CRUNCH
	db DISABLE
	db DRAGON_DANCE
	db ICE_FANG
	db -1 ; end
	
Pichu_SpikyEggMoves:
	db REVERSAL
	db PRESENT
	db ENCORE
	db FLAIL
	db ENDURE
	db PETAL_DANCE
	db POWERUPPUNCH
	db SCARY_FACE
	db SING
	db METRONOME
	db VOLT_TACKLE
	db -1 ; end
	
Growlithe_HisuianEggMoves:   ;x
	db SLAM
	db SAFEGUARD
	db THRASH
	db FIRE_SPIN
	db MORNING_SUN
	db DOUBLE_KICK
	db ENDURE
	db SNORE
	db CHARM
	db GROWL
	db -1 ; end
	
Sandshrew_AlolanEggMoves:   ;x
	db FLAIL
	db SAFEGUARD
	db RAPID_SPIN
	db ENDURE
	db SUPER_FANG
	db SLAM
	db POISON_JAB
	db X_SCISSOR
	db -1 ; end
	
RinrinEggMoves:   ;x
	db SPITE
	db HYPNOSIS
	db AMNESIA
	db PAY_DAY
	db PERISH_SONG
	db PURSUIT
	db MOONLIGHT
	db SING
	db PSYCH_UP
	db -1 ; end

NoEggMoves:
	db -1 ; end
