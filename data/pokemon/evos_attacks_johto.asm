SECTION "Evolutions and Attacks 2", ROMX

EvosAttacksPointers2::
	dw ChikoritaEvosAttacks
	dw BayleefEvosAttacks
	dw MeganiumEvosAttacks
	dw CyndaquilEvosAttacks
	dw QuilavaEvosAttacks
	dw TyphlosionEvosAttacks
	dw TotodileEvosAttacks
	dw CroconawEvosAttacks
	dw FeraligatrEvosAttacks
	dw SentretEvosAttacks
	dw FurretEvosAttacks
	dw HoothootEvosAttacks
	dw NoctowlEvosAttacks
	dw LedybaEvosAttacks
	dw LedianEvosAttacks
	dw SpinarakEvosAttacks
	dw AriadosEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw TogepiEvosAttacks
	dw TogeticEvosAttacks
	dw TogekissEvosAttacks
	dw NatuEvosAttacks
	dw IatuEvosAttacks
	dw XatuEvosAttacks
	dw MareepEvosAttacks
	dw FlaaffyEvosAttacks
	dw AmpharosEvosAttacks
	dw MarillEvosAttacks
	dw AzumarillEvosAttacks
	dw BonslyEvosAttacks
	dw SudowoodoEvosAttacks
	dw HoppipEvosAttacks
	dw SkiploomEvosAttacks
	dw JumpluffEvosAttacks
	dw AipomEvosAttacks
	dw AmbipomEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw YanmaEvosAttacks
	dw YanmegaEvosAttacks
	dw WooperEvosAttacks
	dw QuagsireEvosAttacks
	dw MurkrowEvosAttacks
	dw HonchkrowEvosAttacks
	dw MisdreavusEvosAttacks
	dw MismagiusEvosAttacks
	dw WynautEvosAttacks
	dw WobbuffetEvosAttacks
	dw OkapakoEvosAttacks
	dw GirafarigEvosAttacks
	dw PinecoEvosAttacks
	dw ForretressEvosAttacks
	dw DunsparceEvosAttacks
	dw DuserpentEvosAttacks
	dw GligarEvosAttacks
	dw GliscorEvosAttacks
	dw RinrinEvosAttacks
	dw BellunaEvosAttacks
	dw SnubbullEvosAttacks
	dw GranbullEvosAttacks
	dw QwilfishEvosAttacks
	dw DetoqwilEvosAttacks
	dw ShuckleEvosAttacks
	dw SneaselEvosAttacks
	dw WeavileEvosAttacks
	dw TeddiursaEvosAttacks
	dw UrsaringEvosAttacks
	dw SlugmaEvosAttacks
	dw MagcargoEvosAttacks
	dw SwinubEvosAttacks
	dw PiloswineEvosAttacks
	dw CorsolaEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw DelibirdEvosAttacks
	dw HaulibirdEvosAttacks
	dw MantykeEvosAttacks
	dw MantineEvosAttacks
	dw SkarchicEvosAttacks
	dw SkarmoryEvosAttacks
	dw HoundourEvosAttacks
	dw HoundoomEvosAttacks
	dw PhanpyEvosAttacks
	dw DonphanEvosAttacks
	dw StantlerEvosAttacks
	dw WyrdeerEvosAttacks
	dw SmeargleEvosAttacks
	dw HeracrossEvosAttacks
	dw UnownEvosAttacks
	dw RaikouEvosAttacks
	dw EnteiEvosAttacks
	dw SuicuneEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
	dw LugiaEvosAttacks
	dw HoOhEvosAttacks
	dw CelebiEvosAttacks
	dw ChimereonEvosAttacks
	dw Bulbasaur_CloneEvosAttacks
	dw Ivysaur_CloneEvosAttacks
	dw Venusaur_CloneEvosAttacks
	dw Charmander_CloneEvosAttacks
	dw Charmeleon_CloneEvosAttacks
	dw Charizard_CloneEvosAttacks
	dw Squirtle_CloneEvosAttacks
	dw Wartortle_CloneEvosAttacks
	dw Blastoise_CloneEvosAttacks
	dw Ekans_DarkEvosAttacks
	dw Arbok_DarkEvosAttacks
	dw Pichu_SpikyEvosAttacks
	dw Pikachu_CloneEvosAttacks
	dw Raichu_CloneEvosAttacks
	dw Raichu_AlolanEvosAttacks
	dw Sandshrew_AlolanEvosAttacks
	dw Sandslash_AlolanEvosAttacks
	dw Vulpix_AlolanEvosAttacks
	dw Ninetales_AlolanEvosAttacks
	dw Growlithe_HisuianEvosAttacks
	dw Arcanine_HisuianEvosAttacks
	dw Voltorb_HisuianEvosAttacks
	dw Electrode_HisuianEvosAttacks
	dw Marowak_AlolanEvosAttacks
	dw Typhlosion_HisuianEvosAttacks
	dw Articuno_GalarianEvosAttacks
	dw Zapdos_GalarianEvosAttacks
	dw Moltres_GalarianEvosAttacks
	dw Arbok_KantoEvosAttacks
	dw Arbok_SeviiEvosAttacks
	dw Wooper_PaldeanEvosAttacks
	dw ClodsireEvosAttacks
	dw StarlyEvosAttacks
	dw StaraviaEvosAttacks
	dw StaraptorEvosAttacks
	dw SuicudraxEvosAttacks
	dw RaiensuiEvosAttacks
	dw Omastar_FossilEvosAttacks
	dw Kabutops_FossilEvosAttacks
	dw Aerodactyl_FossilEvosAttacks
	dw MissingnoEvosAttacks
	dw Charizard_MEvosAttacks
	
ChikoritaEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, MEGA_DRAIN
	dbw 8, SLEEP_POWDER
	dbw 12, REFLECT
	dbw 14, GROWTH
	dbw 19, RAZOR_LEAF
	dbw 24, SLAM
	dbw 27, SAFEGUARD
	dbw 33, GIGA_DRAIN
	dbw 38, SYNTHESIS
	dbw 42, LIGHT_SCREEN
	dbw 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, MEGA_DRAIN
	dbw 8, SLEEP_POWDER
	dbw 12, REFLECT
	dbw 15, GROWTH
	dbw 22, RAZOR_LEAF
	dbw 25, SLAM
	dbw 33, SAFEGUARD
	dbw 38, GIGA_DRAIN
	dbw 42, SYNTHESIS
	dbw 45, LIGHT_SCREEN
	dbw 49, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, GIGA_DRAIN
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, MEGA_DRAIN
	dbw 8, SLEEP_POWDER
	dbw 12, REFLECT
	dbw 15, GROWTH
	dbw 22, RAZOR_LEAF
	dbw 25, SLAM
	dbw 31, PETAL_DANCE   ;evolution move
	dbw 33, SAFEGUARD
	dbw 38, DRAGONBREATH
	dbw 45, SYNTHESIS
	dbw 49, LIGHT_SCREEN
	dbw 55, SOLARBEAM
	dbw LEARN_EVO_MOVE, PETAL_DANCE
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, QUICK_ATTACK
	dbw 14, DEFENSE_CURL
	dbw 19, FLAME_WHEEL
	dbw 24, WILL_O_WISP
	dbw 27, SWIFT
	dbw 33, FLAMETHROWER
	dbw 38, ROLLOUT
	dbw 42, TAKE_DOWN
	dbw 45, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 36, TYPHLOSION
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 36, TYPHLOSION_HISUIAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, QUICK_ATTACK
	dbw 14, DEFENSE_CURL
	dbw 22, FLAME_WHEEL
	dbw 25, WILL_O_WISP
	dbw 33, SWIFT
	dbw 38, FLAMETHROWER
	dbw 42, ROLLOUT
	dbw 45, TAKE_DOWN
	dbw 49, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:               ;final
	db 0 ; no more evolutions
	dbw 1, POWERUPPUNCH
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, QUICK_ATTACK
	dbw 14, DEFENSE_CURL
	dbw 22, FLAME_WHEEL
	dbw 25, WILL_O_WISP
	dbw 33, SWIFT
	dbw 35, FIRE_PUNCH    ;evolution move
	dbw 42, FLAMETHROWER
	dbw 45, ROLLOUT
	dbw 49, TAKE_DOWN
	dbw 55, FIRE_BLAST
	dbw LEARN_EVO_MOVE, FIRE_PUNCH
	db 0 ; no more level-up moves

TotodileEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, WATER_GUN
	dbw 8, MUD_SLAP
	dbw 12, BITE
;	dbw 16, SHARPEN
	dbw 22, ICE_FANG
	dbw 25, SCARY_FACE
	dbw 32, SLASH
	dbw 34, LOW_KICK
	dbw 37, SCREECH
	dbw 41, CRUNCH
	dbw 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 36, FERALIGATR
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, WATER_GUN
	dbw 8, MUD_SLAP
	dbw 12, BITE
;	dbw 16, SHARPEN
	dbw 24, ICE_FANG
	dbw 32, SCARY_FACE
	dbw 36, SLASH
	dbw 38, LOW_KICK
	dbw 42, SCREECH
	dbw 45, CRUNCH
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:               ;final
	db 0 ; no more evolutions
	dbw 1, SUBMISSION
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, WATER_GUN
	dbw 8, MUD_SLAP
	dbw 12, BITE
;	dbw 16, SHARPEN     (replace with metal claw? idk)
	dbw 24, ICE_FANG
	dbw 32, SCARY_FACE
	dbw 35, SLASH
	dbw 35, WAVE_CRASH    ;evolution move
	dbw 39, LOW_KICK
	dbw 45, SCREECH
	dbw 49, CRUNCH
	dbw 55, HYDRO_PUMP
	dbw LEARN_EVO_MOVE, WAVE_CRASH
	db 0 ; no more level-up moves

SentretEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 4, QUICK_ATTACK
	dbw 7, MUD_SLAP
	dbw 14, FURY_SWIPES
	dbw 19, SLAM
	dbw 25, REST
	dbw 29, NIGHT_SLASH
	dbw 36, AMNESIA
	dbw 39, BATON_PASS
	dbw 42, TAKE_DOWN
	dbw 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:                   ;final
	db 0 ; no more evolutions
	dbw 1, COIL
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 4, QUICK_ATTACK
	dbw 7, MUD_SLAP
	dbw 14, FURY_SWIPES
	dbw 14, AGILITY       ;evolution move
	dbw 23, SLAM
	dbw 27, REST
	dbw 34, NIGHT_SLASH
	dbw 39, AMNESIA
	dbw 42, BATON_PASS
	dbw 47, TAKE_DOWN
	dbw 53, HYPER_VOICE
	dbw LEARN_EVO_MOVE, AGILITY
	db 0 ; no more level-up moves

HoothootEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, HYPNOSIS
	dbw 7, ECHOED_VOICE
	dbw 13, CONFUSION
	dbw 17, REFLECT
	dbw 21, TAKE_DOWN
	dbw 25, AIR_CUTTER
	dbw 29, PSYCHIC_M
	dbw 33, ROOST
	dbw 37, HYPER_VOICE
	dbw 45, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, CALM_MIND
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, HYPNOSIS
	dbw 7, ECHOED_VOICE
	dbw 13, CONFUSION
	dbw 17, REFLECT
	dbw 19, WING_ATTACK   ;evolution move
	dbw 25, TAKE_DOWN
	dbw 29, AIR_CUTTER
	dbw 33, PSYCHIC_M
	dbw 37, ROOST
	dbw 45, HYPER_VOICE
	dbw 53, DREAM_EATER
	dbw LEARN_EVO_MOVE, WING_ATTACK
	db 0 ; no more level-up moves

LedybaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SUPERSONIC
	dbw 4, GROWTH
	dbw 7, POWERUPPUNCH
	dbw 10, SAFEGUARD
	dbw 14, SWIFT
	dbw 17, SILVER_WIND
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 25, BATON_PASS
	dbw 33, TAKE_DOWN
	dbw 38, AGILITY
	dbw 45, BUG_BUZZ
	db 0 ; no more level-up moves

LedianEvosAttacks:                   ;final
	db 0 ; no more evolutions
	dbw 1, ROOST
	dbw 1, TACKLE
	dbw 1, SUPERSONIC
	dbw 4, GROWTH
	dbw 7, POWERUPPUNCH
	dbw 10, SAFEGUARD
	dbw 14, SWIFT
	dbw 17, MACH_PUNCH  ;evolution move
	dbw 22, SILVER_WIND
	dbw 25, LIGHT_SCREEN
	dbw 25, REFLECT
	dbw 33, BATON_PASS
	dbw 38, SKY_UPPERCUT
	dbw 43, TAKE_DOWN
	dbw 48, AGILITY
	dbw 53, BUG_BUZZ
	dbw LEARN_EVO_MOVE, MACH_PUNCH ;was BULLET_PUNCH
	db 0 ; no more level-up moves

SpinarakEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 5, LEECH_LIFE
	dbw 8, SCARY_FACE
	dbw 12, NIGHT_SHADE
	dbw 15, FURY_SWIPES
	dbw 19, POISON_FANG
	dbw 24, BUG_BITE
	dbw 28, AGILITY
	dbw 32, PSYCHIC_M
	dbw 37, POISON_JAB
	dbw 42, SPIDER_WEB
	db 0 ; no more level-up moves

AriadosEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, SWORDS_DANCE
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 5, LEECH_LIFE
	dbw 8, SCARY_FACE
	dbw 12, NIGHT_SHADE
	dbw 15, FURY_SWIPES
	dbw 19, POISON_FANG
	dbw 21, NIGHT_SLASH   ;evolution move
	dbw 28, BUG_BITE
	dbw 32, AGILITY
	dbw 37, PSYCHIC_M
	dbw 42, POISON_JAB
	dbw 48, SPIDER_WEB
	dbw 53, MEGAHORN
	dbw LEARN_EVO_MOVE, NIGHT_SLASH
	db 0 ; no more level-up moves

ChinchouEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	dbw 1, SUPERSONIC
	dbw 1, WATER_GUN
	dbw 4, THUNDER_WAVE
	dbw 9, FLAIL
	dbw 12, CONFUSE_RAY
	dbw 17, SPARK
	dbw 20, BUBBLEBEAM
	dbw 23, TAKE_DOWN
	dbw 28, CHARGE_BEAM
	dbw 34, AMNESIA
	dbw 39, THUNDERBOLT
	dbw 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, REFRESH
	dbw 1, SUPERSONIC
	dbw 1, WATER_GUN
	dbw 4, THUNDER_WAVE
	dbw 9, FLAIL
	dbw 12, CONFUSE_RAY
	dbw 17, SPARK
	dbw 20, BUBBLEBEAM
	dbw 23, TAKE_DOWN
	dbw 26, SAFEGUARD     ;evolution move
	dbw 34, CHARGE_BEAM
	dbw 39, AMNESIA
	dbw 45, THUNDERBOLT
	dbw 53, HYDRO_PUMP
	dbw LEARN_EVO_MOVE, SAFEGUARD
	db 0 ; no more level-up moves

TogepiEvosAttacks:                   ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, METRONOME
	dbw 9, ENCORE
	dbw 15, CHARM
	dbw 22, ANCIENTPOWER
	dbw 29, SAFEGUARD
	dbw 34, TAKE_DOWN
	dbw 41, BATON_PASS
	db 0 ; no more level-up moves

TogeticEvosAttacks:                  ;final
	dbbw EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, METRONOME
	dbw 9, ENCORE
	dbw 15, CHARM
	dbw 22, AIR_CUTTER    ;evolution move
	dbw 25, ROOST
	dbw 29, ANCIENTPOWER
	dbw 34, SAFEGUARD
	dbw 39, TAKE_DOWN
	dbw 45, BATON_PASS
	dbw LEARN_EVO_MOVE, AIR_CUTTER
	db 0 ; no more level-up moves
	
TogekissEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, TRI_ATTACK
	dbw 1, AURA_SPHERE    ;evolution move
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, METRONOME
	dbw 9, ENCORE
	dbw 15, CHARM
	dbw 25, AIR_CUTTER
	dbw 29, ROOST
	dbw 34, ANCIENTPOWER
	dbw 39, SAFEGUARD
	dbw 45, TAKE_DOWN
	dbw 49, BATON_PASS
	dbw 54, EXTREMESPEED
	dbw 59, SKY_ATTACK
	dbw LEARN_EVO_MOVE, AURA_SPHERE
	db 0 ; no more level-up moves

NatuEvosAttacks:                     ;final
	dbbw EVOLVE_LEVEL, 20, IATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 4, TELEPORT
	dbw 9, CONFUSION
	dbw 16, NIGHT_SHADE
	dbw 23, CONFUSE_RAY
	dbw 28, RECOVER
	dbw 33, COSMIC_POWER
	dbw 39, OMINOUS_WIND
	dbw 44, BATON_PASS
	dbw 47, PSYCHIC_M
	db 0 ; no more level-up moves
	
IatuEvosAttacks:                     ;final
	dbbw EVOLVE_LEVEL, 35, XATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 4, TELEPORT
	dbw 9, CONFUSION
	dbw 16, NIGHT_SHADE
	dbw 23, CONFUSE_RAY
	dbw 28, AIR_CUTTER
	dbw 33, RECOVER
	dbw 39, COSMIC_POWER
	dbw 44, OMINOUS_WIND
	dbw 47, BATON_PASS
	dbw 52, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:                     ;final
	db 0 ; no more evolutions
	dbw 1, MYSTICALFIRE
	dbw 1, PECK
	dbw 1, LEER
	dbw 4, TELEPORT
	dbw 9, CONFUSION
	dbw 16, NIGHT_SHADE
	dbw 23, CONFUSE_RAY
	dbw 28, AIR_CUTTER
	dbw 33, RECOVER
	dbw 44, COSMIC_POWER
	dbw 47, OMINOUS_WIND
	dbw 52, BATON_PASS
	dbw 58, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, THUNDERSHOCK
	dbw 8, THUNDER_WAVE
	dbw 14, SWIFT
	dbw 18, HYPNOSIS
	dbw 23, CHARGE_BEAM
	dbw 29, CONFUSE_RAY
	dbw 32, HIDDEN_POWER
	dbw 36, POWER_GEM
	dbw 39, LIGHT_SCREEN
	dbw 43, TAKE_DOWN
	dbw 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, THUNDERSHOCK
	dbw 8, THUNDER_WAVE
	dbw 14, SWIFT
	dbw 23, HYPNOSIS
	dbw 29, CHARGE_BEAM
	dbw 32, CONFUSE_RAY
	dbw 36, HIDDEN_POWER
	dbw 39, POWER_GEM
	dbw 43, LIGHT_SCREEN
	dbw 46, TAKE_DOWN
	dbw 51, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, DRAGON_DANCE
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, THUNDERSHOCK
	dbw 8, THUNDER_WAVE
	dbw 14, SWIFT
	dbw 23, HYPNOSIS
	dbw 29, CHARGE_BEAM
	dbw 29, THUNDERPUNCH  ;evolution move
	dbw 36, CONFUSE_RAY
	dbw 39, DRAGONBREATH
	dbw 43, POWER_GEM
	dbw 46, LIGHT_SCREEN
	dbw 51, TAKE_DOWN
	dbw 57, THUNDER
	dbw LEARN_EVO_MOVE, THUNDERPUNCH
	db 0 ; no more level-up moves

MarillEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, TAIL_WHIP
	dbw 7, WATER_GUN
	dbw 9, ROLLOUT
	dbw 15, CHARM
	dbw 21, BUBBLEBEAM
	dbw 25, TAKE_DOWN
	dbw 30, BELLY_DRUM
	dbw 35, WAVE_CRASH
	dbw 40, RAIN_DANCE
	dbw 45, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, AQUA_JET
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, TAIL_WHIP
	dbw 7, WATER_GUN
	dbw 9, ROLLOUT
	dbw 15, CHARM
	dbw 17, POWERUPPUNCH  ;evolution move
	dbw 25, BUBBLEBEAM
	dbw 30, TAKE_DOWN
	dbw 35, BELLY_DRUM
	dbw 40, WAVE_CRASH
	dbw 45, RAIN_DANCE
	dbw 50, HYDRO_PUMP
	dbw 55, SUBMISSION
	dbw LEARN_EVO_MOVE, POWERUPPUNCH
	db 0 ; no more level-up moves

BonslyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 15, SUDOWOODO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, ROCK_THROW
	dbw 8, ENDURE
	dbw 12, LOW_KICK
	dbw 15, MIMIC
	dbw 22, SLAM
	dbw 29, SCREECH
	dbw 33, PURSUIT
	dbw 40, PSYCH_UP
	dbw 45, FLAIL
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, POWERUPPUNCH
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, ROCK_THROW
	dbw 8, ENDURE
	dbw 12, LOW_KICK
	dbw 15, MIMIC
	dbw 25, SLAM
	dbw 29, SCREECH
	dbw 33, ROCK_SLIDE
	dbw 36, PURSUIT
	dbw 40, TAKE_DOWN
	dbw 45, PSYCH_UP
	dbw 52, SKY_UPPERCUT
	db 0 ; no more level-up moves

HoppipEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, MEGA_DRAIN
	dbw 7, GROWTH
	dbw 12, LEECH_SEED
	dbw 16, GUST
	dbw 19, EFFECT_SPORE
	dbw 25, SLEEP_POWDER
	dbw 28, SYNTHESIS
	dbw 34, SILVER_WIND
	dbw 37, SUNNY_DAY
	dbw 43, GIGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, MEGA_DRAIN
	dbw 7, GROWTH
	dbw 12, LEECH_SEED
	dbw 16, GUST
	dbw 19, EFFECT_SPORE
	dbw 25, SLEEP_POWDER
	dbw 31, SYNTHESIS
	dbw 34, SLAM
	dbw 37, SILVER_WIND
	dbw 43, SUNNY_DAY
	dbw 49, GIGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, PETAL_DANCE
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, MEGA_DRAIN
	dbw 7, GROWTH
	dbw 12, LEECH_SEED
	dbw 16, GUST
	dbw 25, EFFECT_SPORE
	dbw 31, SLEEP_POWDER
	dbw 34, SLAM
	dbw 37, SYNTHESIS
	dbw 43, SILVER_WIND
	dbw 49, SUNNY_DAY
	dbw 54, GIGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:                    ;final
	dbbbw EVOLVE_ITEM_LEVEL, SHINY_STONE, 28, AMBIPOM
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 5, SAND_ATTACK
	dbw 9, FURY_SWIPES
	dbw 15, LASER_FOCUS
	dbw 21, SWIFT
	dbw 25, POWERUPPUNCH
	dbw 28, SCREECH
	dbw 32, MEGA_PUNCH
	dbw 36, AGILITY
	dbw 41, SKY_UPPERCUT
	dbw 46, BATON_PASS
	db 0 ; no more level-up moves
	
AmbipomEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, ENCORE	
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 5, SAND_ATTACK
	dbw 9, FURY_SWIPES
	dbw 15, LASER_FOCUS
	dbw 21, SWIFT
	dbw 25, POWERUPPUNCH
	dbw 28, SCREECH
	dbw 32, MEGA_PUNCH
	dbw 39, AGILITY
	dbw 45, SKY_UPPERCUT
	dbw 52, BATON_PASS
	dbw 57, DYNAMICPUNCH
	db 0 ; no more level-up moves
	
SunkernEvosAttacks:                  ;final
	dbbbw EVOLVE_ITEM_LEVEL, SUN_STONE, 15, SUNFLORA
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWTH
	dbw 4, MEGA_DRAIN
	dbw 9, LEECH_SEED
	dbw 13, SUNNY_DAY
	dbw 19, SYNTHESIS
	dbw 25, ENCORE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, QUIVER_DANCE
	dbw 1, POUND
	dbw 1, GROWTH
	dbw 4, MEGA_DRAIN
	dbw 9, LEECH_SEED
	dbw 13, SUNNY_DAY
	dbw 14, RAZOR_LEAF    ;evolution move
	dbw 21, MIMIC
	dbw 29, SYNTHESIS
	dbw 33, PETAL_DANCE
	dbw 39, ENCORE
	dbw 45, TAKE_DOWN
	dbw 52, SOLARBEAM
	dbw LEARN_EVO_MOVE, RAZOR_LEAF
	db 0 ; no more level-up moves

YanmaEvosAttacks:                    ;final
	dbbw EVOLVE_MOVE, EVO_ANCIENT, YANMEGA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LASER_FOCUS
	dbw 4, QUICK_ATTACK
	dbw 11, SONICBOOM
	dbw 14, BUG_BITE
	dbw 17, SUPERSONIC
	dbw 22, TWISTER
	dbw 27, HYPNOSIS
	dbw 33, ANCIENTPOWER
	dbw 38, WING_ATTACK
	dbw 43, SCREECH
	dbw 46, RAZOR_WIND
	dbw 49, BUG_BUZZ
	db 0 ; no more level-up moves
	
YanmegaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, TACKLE
	dbw 1, LASER_FOCUS
	dbw 4, QUICK_ATTACK
	dbw 11, SONICBOOM
	dbw 14, BUG_BITE
	dbw 17, SUPERSONIC
	dbw 22, TWISTER
	dbw 27, HYPNOSIS
	dbw 33, ANCIENTPOWER
	dbw 40, SLASH
	dbw 46, SCREECH
	dbw 49, RAZOR_WIND
	dbw 54, BUG_BUZZ
	db 0 ; no more level-up moves

WooperEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 4, MUD_SLAP
	dbw 9, REFRESH
	dbw 15, MUD_SHOT
	dbw 19, WATER_PULSE
	dbw 23, SLAM
	dbw 29, REST
	dbw 33, WAVE_CRASH
	dbw 37, EARTHQUAKE
	dbw 45, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, BULLDOZE
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 4, MUD_SLAP
	dbw 9, REFRESH
	dbw 15, MUD_SHOT
	dbw 19, WATER_PULSE
	dbw 19, AMNESIA       ;evolution move
	dbw 25, SLAM
	dbw 33, REST
	dbw 37, WAVE_CRASH
	dbw 43, TAKE_DOWN
	dbw 47, EARTHQUAKE
	dbw 51, HAZE
	dbw LEARN_EVO_MOVE, AMNESIA
	db 0 ; no more level-up moves

MurkrowEvosAttacks:                  ;final
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 28, HONCHKROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, SPITE
	dbw 4, PURSUIT
	dbw 11, HAZE
	dbw 15, WING_ATTACK
	dbw 21, NIGHT_SHADE
	dbw 25, SCREECH
	dbw 31, THIEF
	dbw 35, CONFUSE_RAY
	dbw 41, SHADOWSTRIKE
	dbw 45, MEAN_LOOK
	dbw 51, MIRROR_MOVE
	db 0 ; no more level-up moves
	
HonchkrowEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, DARK_PULSE
	dbw 1, PECK
	dbw 1, SPITE
	dbw 4, PURSUIT
	dbw 11, HAZE
	dbw 15, WING_ATTACK
	dbw 21, NIGHT_SHADE
	dbw 25, SCREECH
	dbw 27, NASTY_PLOT    ;evolution move
	dbw 35, NIGHT_SLASH
	dbw 41, SWAGGER
	dbw 45, SHADOWSTRIKE
	dbw 51, MEAN_LOOK
	dbw 55, MIRROR_MOVE
	dbw LEARN_EVO_MOVE, NASTY_PLOT
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:               ;final
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 28, MISMAGIUS
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 4, SPITE
	dbw 10, CONFUSE_RAY
	dbw 14, HEX
	dbw 19, MEAN_LOOK
	dbw 25, PSYBEAM
	dbw 32, PAIN_SPLIT
	dbw 37, SCREECH
	dbw 41, SHADOW_BALL
	dbw 46, PERISH_SONG
	dbw 50, POWER_GEM
	db 0 ; no more level-up moves
	
MismagiusEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 4, SPITE
	dbw 10, HEX
	dbw 14, CONFUSE_RAY
	dbw 19, MEAN_LOOK
	dbw 25, PSYBEAM
	dbw 27, MYSTICALFIRE  ;evolution move
	dbw 35, PAIN_SPLIT
	dbw 41, SCREECH
	dbw 46, SHADOW_BALL
	dbw 50, PERISH_SONG
	dbw 55, POWER_GEM
	dbw LEARN_EVO_MOVE, MYSTICALFIRE
	db 0 ; no more level-up moves

WynautEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, CHARM
	dbw 1, ENCORE
	dbw 15, COUNTER
	dbw 15, MIRROR_COAT
	dbw 15, SAFEGUARD
	dbw 15, DESTINY_BOND
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, MEAN_LOOK
	dbw 1, COUNTER
	dbw 1, MIRROR_COAT
	dbw 1, SAFEGUARD
	dbw 1, DESTINY_BOND
	db 0 ; no more level-up moves

OkapakoEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 22, GIRAFARIG
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, CONFUSION
	dbw 10, PURSUIT
	dbw 14, STOMP
	dbw 19, CONFUSE_RAY
	dbw 23, PSYBEAM
	dbw 28, AGILITY
	dbw 32, TAKE_DOWN
	dbw 37, BATON_PASS
	dbw 41, NASTY_PLOT
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

GirafarigEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, DARK_PULSE
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, CONFUSION
	dbw 10, PURSUIT
	dbw 14, STOMP
	dbw 19, CONFUSE_RAY
	dbw 26, PSYBEAM
	dbw 32, AGILITY
	dbw 37, TAKE_DOWN
	dbw 41, BATON_PASS
	dbw 46, CRUNCH
	dbw 52, NASTY_PLOT
	dbw 57, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 4, BUG_BITE
	dbw 9, ENDURE
	dbw 14, RAPID_SPIN
	dbw 20, SPIKES
	dbw 27, SELFDESTRUCT
	dbw 32, IRON_DEFENSE
	dbw 35, PIN_MISSILE
	dbw 43, TAKE_DOWN
	dbw 47, DRILL_RUN
	db 0 ; no more level-up moves

ForretressEvosAttacks:               ;final
	db 0 ; no more evolutions
	dbw 1, TRI_ATTACK
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 4, BUG_BITE
	dbw 9, ENDURE
	dbw 14, RAPID_SPIN
	dbw 20, SPIKES
	dbw 27, SELFDESTRUCT      
	dbw 30, MIRROR_SHOT   ;evolution move
	dbw 35, IRON_DEFENSE
	dbw 39, SPIKE_CANNON
	dbw 43, TAKE_DOWN
	dbw 47, FLASH_CANNON
	dbw 54, ZAP_CANNON
	dbw LEARN_EVO_MOVE, MIRROR_SHOT
	db 0 ; no more level-up moves

DunsparceEvosAttacks:                ;final
	dbbbw EVOLVE_HOLD_LEVEL, DRAGON_SCALE, 32, DUSERPENT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, MUD_SLAP
	dbw 8, SPITE
	dbw 12, GLARE
	dbw 16, ANCIENTPOWER
	dbw 24, SLAM
	dbw 28, SCREECH
	dbw 33, PAIN_SPLIT
	dbw 36, FLAIL
	dbw 40, DRILL_RUN 
	dbw 44, COIL
	dbw 48, TAKE_DOWN
	db 0 ; no more level-up moves

DuserpentEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, DRAGONBREATH
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, MUD_SLAP
	dbw 8, SPITE
	dbw 12, GLARE
	dbw 16, ANCIENTPOWER
	dbw 24, SLAM
	dbw 28, SCREECH
	dbw 31, WING_ATTACK   ;evolution move
	dbw 36, PAIN_SPLIT
	dbw 40, TWISTER
	dbw 44, DRILL_RUN 
	dbw 48, DRAGON_DANCE
	dbw 54, TAKE_DOWN
	dbw LEARN_EVO_MOVE, WING_ATTACK
	db 0 ; no more level-up moves

GligarEvosAttacks:                   ;final
	dbbbw EVOLVE_HOLD_LEVEL, RAZOR_FANG, 30, GLISCOR
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, HARDEN
	dbw 4, MUD_SLAP
	dbw 9, QUICK_ATTACK
	dbw 12, PURSUIT
	dbw 16, FURY_CUTTER
	dbw 23, WING_ATTACK
	dbw 27, SCREECH
	dbw 34, SLASH
	dbw 38, SWORDS_DANCE
	dbw 42, X_SCISSOR
	dbw 45, SKY_UPPERCUT
	dbw 49, EARTHQUAKE
	db 0 ; no more level-up moves

GliscorEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, ICE_FANG
	dbw 1, POISON_STING
	dbw 1, HARDEN
	dbw 4, MUD_SLAP
	dbw 9, QUICK_ATTACK
	dbw 12, PURSUIT
	dbw 16, FURY_CUTTER
	dbw 23, WING_ATTACK
	dbw 27, SCREECH
	dbw 29, POISON_FANG   ;evolution move
	dbw 36, NIGHT_SLASH
	dbw 42, SWORDS_DANCE
	dbw 45, X_SCISSOR
	dbw 49, SKY_UPPERCUT
	dbw 56, EARTHQUAKE
	dbw LEARN_EVO_MOVE, POISON_FANG
	db 0 ; no more level-up moves

RinrinEvosAttacks:                   ;final
	dbbbw EVOLVE_ITEM_LEVEL, MOON_STONE, 24, BELLUNA
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, TAIL_WHIP
	dbw 9, FURY_SWIPES
	dbw 14, BITE
	dbw 17, CHARM
	dbw 24, SING
	dbw 28, ENCORE
	dbw 32, SLASH
	dbw 38, SCREECH
	dbw 42, IRON_TAIL
	dbw 49, HEAL_BELL
	db 0 ; no more level-up moves
	
BellunaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, DIRE_CLAW
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, TAIL_WHIP
	dbw 9, FURY_SWIPES
	dbw 14, BITE
	dbw 17, CHARM
	dbw 23, MOONLIGHT     ;evolution move
	dbw 28, SHADOWSTRIKE
	dbw 32, ENCORE
	dbw 38, NIGHT_SLASH
	dbw 42, SCREECH
	dbw 49, IRON_TAIL
	dbw 54, HEAL_BELL
	dbw LEARN_EVO_MOVE, MOONLIGHT
	db 0 ; no more level-up moves

SnubbullEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LICK
	dbw 4, CHARM
	dbw 7, BITE
	dbw 13, HOWL
	dbw 19, HEADBUTT
	dbw 24, SLAM
	dbw 27, BULLDOZE
	dbw 31, ROAR
	dbw 37, TAKE_DOWN
	dbw 45, SWAGGER
	dbw 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, TACKLE
	dbw 1, LICK
	dbw 4, CHARM
	dbw 7, BITE
	dbw 13, HOWL
	dbw 19, HEADBUTT  
	dbw 22, SCARY_FACE    ;evolution move
	dbw 27, SLAM
	dbw 31, BULLDOZE
	dbw 37, ROAR
	dbw 45, TAKE_DOWN
	dbw 49, SWAGGER
	dbw 54, CRUNCH
	dbw LEARN_EVO_MOVE, SCARY_FACE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:                 ;final
	dbbbw EVOLVE_HOLD_LEVEL, METAL_COAT, 30, DETOQWIL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, POISON_STING
	dbw 9, WATER_GUN
	dbw 13, ROLLOUT
	dbw 19, SPIKES
	dbw 22, POISON_JAB
	dbw 27, DOUBLE_TEAM
	dbw 32, PIN_MISSILE
	dbw 35, TAKE_DOWN
	dbw 41, DESTINY_BOND
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves
	
DetoqwilEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, HYDRO_PUMP
	dbw 1, TACKLE
	dbw 1, IRON_DEFENSE
	dbw 4, POISON_STING
	dbw 9, WATER_GUN
	dbw 13, ROLLOUT
	dbw 19, SPIKES
	dbw 22, POISON_JAB
	dbw 27, DOUBLE_TEAM
	dbw 29, SELFDESTRUCT  ;evolution move
	dbw 35, SPIKE_CANNON
	dbw 41, TAKE_DOWN
	dbw 47, DESTINY_BOND
	dbw 53, IRON_TAIL
	dbw LEARN_EVO_MOVE, SELFDESTRUCT
	db 0 ; no more level-up moves

ShuckleEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, HARDEN
	dbw 4, ROLLOUT
	dbw 9, ENCORE
	dbw 16, BUG_BITE
	dbw 23, SAFEGUARD
	dbw 27, REST
	dbw 34, ANCIENTPOWER
	dbw 38, ACID_SPRAY
	dbw 45, AMNESIA
	dbw 53, ROCK_SLIDE
	db 0 ; no more level-up moves

SneaselEvosAttacks:                  ;final
	dbbbw EVOLVE_HOLD_LEVEL, RAZOR_CLAW, 30, WEAVILE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, PURSUIT
	dbw 8, QUICK_ATTACK
;	dbw 12, SHARPEN          (add Hone Claws to moveset)
	dbw 16, FURY_SWIPES
	dbw 21, AGILITY
	dbw 28, ICE_SHARD
	dbw 35, METAL_CLAW
	dbw 38, SLASH
	dbw 42, SCREECH
	dbw 47, NIGHT_SLASH
	dbw 51, RAZOR_WIND
	db 0 ; no more level-up moves
	
WeavileEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, DIRE_CLAW
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, PURSUIT
	dbw 8, QUICK_ATTACK
;	dbw 12, SHARPEN
	dbw 16, FURY_SWIPES
	dbw 21, AGILITY
	dbw 28, ICE_SHARD
	dbw 29, ICE_PUNCH     ;evolution move  
	dbw 38, METAL_CLAW
	dbw 42, SLASH
	dbw 47, SCREECH
	dbw 51, NIGHT_SLASH
	dbw 56, RAZOR_WIND
	dbw LEARN_EVO_MOVE, ICE_PUNCH
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, LICK
	dbw 8, FURY_SWIPES
	dbw 15, PURSUIT
	dbw 22, SWEET_SCENT
	dbw 27, SLASH
	dbw 33, CHARM
	dbw 36, REST
	dbw 43, TAKE_DOWN
	dbw 47, NIGHT_SLASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, HOWL
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, LICK
	dbw 8, FURY_SWIPES
	dbw 15, PURSUIT
	dbw 22, SWEET_SCENT
	dbw 27, SLASH
;	dbw 29, SHARPEN       ;evolution move
	dbw 36, SCARY_FACE
	dbw 43, REST
	dbw 47, TAKE_DOWN
	dbw 53, NIGHT_SLASH
	dbw 58, SUBMISSION
;	dbw LEARN_EVO_MOVE, SHARPEN
	db 0 ; no more level-up moves

SlugmaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 4, HARDEN
	dbw 10, ROCK_THROW
	dbw 14, HYPNOSIS
	dbw 19, SMOG
	dbw 23, ANCIENTPOWER
	dbw 28, FLAMETHROWER
	dbw 32, AMNESIA
	dbw 37, SLAM
	dbw 41, RECOVER
	dbw 46, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, FLAME_WHEEL
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 4, DEFENSE_CURL
	dbw 10, ROLLOUT
	dbw 14, HYPNOSIS
	dbw 19, SMOG
	dbw 23, ANCIENTPOWER
	dbw 28, FLAMETHROWER
	dbw 32, AMNESIA
	dbw 37, SLAM
	dbw 45, RECOVER
	dbw 49, ROCK_SLIDE
	dbw 53, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, POWDER_SNOW
	dbw 8, MUD_SLAP
	dbw 13, ENDURE
	dbw 16, MUD_SHOT
	dbw 20, ICY_WIND
	dbw 25, ANCIENTPOWER
	dbw 28, TAKE_DOWN
	dbw 32, ICE_SHARD
	dbw 37, FLAIL
	dbw 42, BLIZZARD
	dbw 49, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, PECK
	dbw 1, HOWL
	dbw 4, POWDER_SNOW
	dbw 8, MUD_SLAP
	dbw 13, ENDURE
	dbw 16, BULLDOZE
	dbw 20, ICY_WIND
	dbw 25, ANCIENTPOWER
	dbw 28, TAKE_DOWN
	dbw 32, ICE_SHARD
	dbw 32, HORN_ATTACK   ;evolution move
	dbw 40, EARTHQUAKE
	dbw 48, ICICLE_CRASH
	dbw 56, AMNESIA
	dbw LEARN_EVO_MOVE, HORN_ATTACK
	db 0 ; no more level-up moves

CorsolaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, WATER_GUN
	dbw 8, ROCK_THROW
	dbw 14, REFRESH
	dbw 18, SPIKES
	dbw 24, BUBBLEBEAM
	dbw 28, SAFEGUARD
	dbw 32, ANCIENTPOWER
	dbw 37, RECOVER
	dbw 40, SPIKE_CANNON
	dbw 44, POWER_GEM
	dbw 48, MIRROR_COAT
	dbw 53, EARTH_POWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, PIN_MISSILE
	dbw 4, LASER_FOCUS
	dbw 10, PSYBEAM
	dbw 14, AURORA_BEAM
	dbw 18, BUBBLEBEAM
	dbw 22, CHARGE_BEAM
	dbw 28, WATER_PULSE
	dbw 34, ICE_BEAM
	dbw 40, HYDRO_PUMP
	dbw 46, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, SPIKE_CANNON
	dbw 1, WATER_GUN
	dbw 1, WRAP
	dbw 4, LASER_FOCUS
	dbw 10, PSYBEAM
	dbw 14, AURORA_BEAM
	dbw 18, BUBBLEBEAM
	dbw 22, CHARGE_BEAM
	dbw 24, OCTAZOOKA     ;evolution move
	dbw 32, WATER_PULSE
	dbw 38, ICE_BEAM
	dbw 46, HYDRO_PUMP
	dbw 52, HYPER_BEAM
	dbw LEARN_EVO_MOVE, OCTAZOOKA
	db 0 ; no more level-up moves

DelibirdEvosAttacks:                 ;final
	dbbbw EVOLVE_ITEM_LEVEL, ICE_STONE, 25, HAULIBIRD
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, POWDER_SNOW
	dbw 7, ENCORE
	dbw 12, PAY_DAY
	dbw 17, AGILITY
	dbw 22, PRESENT
	dbw 27, ICY_WIND
	dbw 32, REST
	dbw 37, DRILL_PECK
	dbw 42, HAIL
	dbw 47, BLIZZARD
	dbw 52, HAZE
	db 0 ; no more level-up moves
	
HaulibirdEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, POWDER_SNOW
	dbw 7, ENCORE
	dbw 12, PAY_DAY
	dbw 17, AGILITY
	dbw 22, PRESENT
	dbw 29, ICY_WIND
	dbw 35, REST
	dbw 41, DRILL_PECK
	dbw 45, HAIL
	dbw 52, BLIZZARD
	dbw 58, HAZE
	db 0 ; no more level-up moves

MantykeEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 20, MANTINE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SUPERSONIC
	dbw 4, WATER_GUN
	dbw 7,  REFRESH
	dbw 11, BUBBLEBEAM
	dbw 16, CONFUSE_RAY
	dbw 25, WATER_PULSE
	dbw 32, AIR_CUTTER
	dbw 36, AGILITY
	dbw 44, TAKE_DOWN
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

MantineEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, PSYBEAM
	dbw 1, TACKLE
	dbw 1, SUPERSONIC
	dbw 4, WATER_GUN
	dbw 7,  REFRESH
	dbw 11, BUBBLEBEAM
	dbw 16, CONFUSE_RAY
	dbw 19, WING_ATTACK   ;evolution move
	dbw 25, ROOST
	dbw 32, WATER_PULSE
	dbw 36, AIR_CUTTER
	dbw 44, AGILITY
	dbw 49, TAKE_DOWN
	dbw 53, HYDRO_PUMP
	dbw LEARN_EVO_MOVE, WING_ATTACK
	db 0 ; no more level-up moves

SkarchicEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 20, SKARMORY
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 4, SAND_ATTACK
	dbw 9, SWIFT
	dbw 14, AGILITY
	dbw 17, AIR_CUTTER
	dbw 25, SCREECH
	dbw 29, SLASH
	dbw 34, WHIRLWIND
	dbw 39, DRILL_PECK
	dbw 45, NIGHT_SLASH
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, IRON_DEFENSE
	dbw 1, PECK
	dbw 1, LEER
	dbw 4, HARDEN
	dbw 9, METAL_CLAW
	dbw 14, AGILITY
	dbw 17, AIR_CUTTER
	dbw 19, STEEL_WING    ;evolution move
	dbw 25, SPIKES
	dbw 29, SCREECH
	dbw 34, SLASH
	dbw 39, WHIRLWIND
	dbw 45, DRILL_PECK
	dbw 54, NIGHT_SLASH
	dbw LEARN_EVO_MOVE, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 4, HOWL
	dbw 8, BITE
	dbw 13, SMOG
	dbw 16, ROAR
	dbw 20, FIRE_FANG
	dbw 25, SNARL
	dbw 28, SHADOWSTRIKE
	dbw 32, SCARY_FACE
	dbw 37, FLAMETHROWER
	dbw 43, CRUNCH
	dbw 49, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, BONEMERANG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 4, HOWL
	dbw 8, BITE
	dbw 13, SMOG
	dbw 16, ROAR
	dbw 20, FIRE_FANG
	dbw 28, SNARL
	dbw 32, SHADOWSTRIKE
	dbw 37, SCARY_FACE
	dbw 43, FLAMETHROWER
	dbw 49, CRUNCH
	dbw 52, NASTY_PLOT
	db 0 ; no more level-up moves

PhanpyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, DEFENSE_CURL
	dbw 7, MUD_SLAP
	dbw 15, ENDURE
	dbw 19, ROLLOUT
	dbw 25, MUD_SHOT
	dbw 33, SLAM
	dbw 37, CHARM
	dbw 42, TAKE_DOWN
	dbw 46, FLAIL
	db 0 ; no more level-up moves

DonphanEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, HORN_ATTACK
	dbw 1, GROWL
	dbw 4, DEFENSE_CURL
	dbw 7, MUD_SLAP
	dbw 15, ENDURE
	dbw 19, ROLLOUT
	dbw 24, RAPID_SPIN    ;evolution move
;	dbw 28, SHARPEN
	dbw 33, BULLDOZE
	dbw 37, SLAM
	dbw 42, SCARY_FACE
	dbw 46, TAKE_DOWN
	dbw 54, EARTHQUAKE
	dbw LEARN_EVO_MOVE, RAPID_SPIN
	db 0 ; no more level-up moves

StantlerEvosAttacks:                 ;final
	dbbw EVOLVE_ITEM, SHINY_STONE, WYRDEER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, SAND_ATTACK
	dbw 10, STOMP
	dbw 16, HYPNOSIS
	dbw 21, HORN_ATTACK
	dbw 27, CONFUSE_RAY
	dbw 33, HEADBUTT
	dbw 38, JUMP_KICK
	dbw 43, CALM_MIND
	dbw 48, TAKE_DOWN
	db 0 ; no more level-up moves
	
WyrdeerEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, REFLECT
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, DISABLE
	dbw 10, STOMP
	dbw 16, HYPNOSIS
	dbw 21, HORN_ATTACK
	dbw 27, CONFUSE_RAY
	dbw 35, HEADBUTT
	dbw 43, JUMP_KICK
	dbw 48, CALM_MIND
	dbw 53, TAKE_DOWN
	dbw 57, PSYSTRIKE
	dbw LEARN_EVO_MOVE, CONFUSION
	db 0 ; no more level-up moves

SmeargleEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	db 0 ; no more level-up moves
	
HeracrossEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, VACUUM_WAVE
	dbw 10, ENDURE
	dbw 15, PIN_MISSILE
	dbw 20, HORN_ATTACK
	dbw 25, BULK_UP
	dbw 30, ROCK_SMASH
	dbw 35, NIGHT_SLASH
	dbw 40, COUNTER
	dbw 45, TAKE_DOWN
	dbw 50, MEGAHORN
	dbw 55, SUBMISSION
	dbw 58, REVERSAL
	db 0 ; no more level-up moves
	
UnownEvosAttacks:                    ;final
	db 0 ; no more evolutions
	dbw 1, HIDDEN_POWER
	db 0 ; no more level-up moves

RaikouEvosAttacks:                   ;final
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, BITE
	dbw 1, LEER
	dbw 4, THUNDERSHOCK
	dbw 10, QUICK_ATTACK
	dbw 15, HOWL
	dbw 20, SPARK         ;|
	dbw 25, REFLECT       ;-  roam
	dbw 32, CRUNCH        ;- levels
	dbw 36, AURA_SPHERE   ;/
	dbw 41, RAIN_DANCE
	dbw 45, THUNDER
	dbw 49, CALM_MIND
	dbw 55, VOLT_TACKLE
	dbw 59, EXTREMESPEED
	db 0 ; no more level-up moves

EnteiEvosAttacks:                    ;final
	db 0 ; no more evolutions
	dbw 1, BULLDOZE
	dbw 1, BITE
	dbw 1, LEER
	dbw 4, EMBER
	dbw 10, STOMP
	dbw 15, HOWL
	dbw 20, FIRE_FANG     ;|
	dbw 25, SWAGGER       ;-  roam
	dbw 32, CRUNCH        ;- levels
	dbw 36, METAL_CLAW    ;/
	dbw 41, SUNNY_DAY
	dbw 45, FIRE_BLAST
	dbw 49, CALM_MIND
	dbw 55, SACRED_FIRE
	dbw 59, EXTREMESPEED
	db 0 ; no more level-up moves

SuicuneEvosAttacks:                  ;final
	db 0 ; no more evolutions
	dbw 1, PSYBEAM
	dbw 1, BITE
	dbw 1, LEER
	dbw 4, WATER_GUN
	dbw 10, GUST
	dbw 15, RAIN_DANCE
	dbw 20, BUBBLEBEAM    ;|
	dbw 25, AURORA_BEAM   ;-  roam
	dbw 32, REFRESH       ;- levels
	dbw 36, MIRROR_COAT   ;/
	dbw 41, RECOVER
	dbw 45, HYDRO_PUMP
	dbw 49, CALM_MIND
	dbw 55, AEROBLAST
	dbw 59, EXTREMESPEED
	db 0 ; no more level-up moves

LarvitarEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, ROCK_THROW
	dbw 7, HARDEN
	dbw 11, BITE
	dbw 15, BULLDOZE
	dbw 21, SCARY_FACE
	dbw 25, DARK_PULSE
	dbw 31, ROCK_SLIDE
	dbw 35, SCREECH
	dbw 39, TAKE_DOWN
	dbw 45, EARTHQUAKE
	db 0 ; no more level-up moves

PupitarEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, ROCK_THROW
	dbw 7, HARDEN
	dbw 11, BITE
	dbw 15, BULLDOZE
	dbw 21, SCARY_FACE
	dbw 25, DARK_PULSE
	dbw 34, ROCK_SLIDE
	dbw 39, SCREECH
	dbw 45, TAKE_DOWN
	dbw 50, EARTHQUAKE
	dbw LEARN_EVO_MOVE, HARDEN
	db 0 ; no more level-up moves

TyranitarEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, SANDSTORM      ;evolution move
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, ROCK_THROW
;	dbw 7, SHARPEN
	dbw 11, BITE
	dbw 15, BULLDOZE
	dbw 21, SCARY_FACE
	dbw 25, DARK_PULSE
	dbw 34, ROCK_SLIDE
	dbw 39, SCREECH
	dbw 45, TAKE_DOWN
	dbw 50, EARTHQUAKE
	dbw 59, CRUNCH
	dbw 65, HYPER_BEAM
	dbw LEARN_EVO_MOVE, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:                    ;final
	db 0 ; no more evolutions
	dbw 1, TWISTER
	dbw 1, REFRESH
	dbw 4, CONFUSION
	dbw 7, WHIRLWIND
	dbw 12, RAIN_DANCE
	dbw 18, WHIRLPOOL
	dbw 26, CALM_MIND
	dbw 32, ANCIENTPOWER
	dbw 38, HYDRO_PUMP
	dbw 46, SAFEGUARD     ;|
	dbw 52, RECOVER       ;-  boss
	dbw 58, AEROBLAST     ;- levels
	dbw 66, PSYCHIC_M     ;/
	dbw 72, MAELSTROM
	db 0 ; no more level-up moves

HoOhEvosAttacks:                     ;final
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, REFRESH
	dbw 4, CONFUSION
	dbw 7, WHIRLWIND
	dbw 12, SUNNY_DAY
	dbw 18, MYSTICALFIRE
	dbw 26, CALM_MIND
	dbw 32, ANCIENTPOWER
	dbw 38, FIRE_BLAST
	dbw 46, SAFEGUARD     ;|
	dbw 52, RECOVER       ;-  boss
	dbw 58, SACRED_FIRE   ;- levels
	dbw 66, PSYCHIC_M     ;/
	dbw 72, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:                   ;final
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, SWEET_SCENT
	dbw 4, LEECH_SEED
	dbw 10, SAFEGUARD
	dbw 17, SILVER_WIND
	dbw 24, RECOVER
	dbw 28, ANCIENTPOWER
	dbw 37, GIGA_DRAIN
	dbw 46, NASTY_PLOT
	dbw 55, PSYCHIC_M
	dbw 64, BATON_PASS
	dbw 70, PERISH_SONG
	db 0 ; no more level-up moves
	
ChimereonEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, SHADOW_RUSH  ;move relearner
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, EMBER      
	dbw 7, SAND_ATTACK
	dbw 10, QUICK_ATTACK
	dbw 15, BITE   
	dbw 20, WATER_PULSE
	dbw 25, THUNDER_WAVE
	dbw 30, HOWL   
	dbw 35, FIRE_FANG      
	dbw 40, SPARK      
	dbw 45, NASTY_PLOT    
	dbw 50, HAZE   
	dbw 55, HYDRO_PUMP
	dbw LEARN_EVO_MOVE, TRI_ATTACK
	db 0 ; no more level-up moves
	
Vulpix_AlolanEvosAttacks:            ;final
	dbbbw EVOLVE_ITEM_LEVEL, ICE_STONE, 25, NINETALES_ALOLAN
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, TAIL_WHIP
	dbw 4, SPITE
	dbw 7, QUICK_ATTACK
	dbw 12, CONFUSE_RAY
	dbw 15, ICY_WIND
	dbw 20, SHADOWSTRIKE
	dbw 24, DISABLE
	dbw 28, OMINOUS_WIND
	dbw 34, ICE_BEAM
	dbw 39, SAFEGUARD
	dbw 45, BLIZZARD
	db 0 ; no more level-up moves

Ninetales_AlolanEvosAttacks:         ;final
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT
	dbw 1, POWDER_SNOW
	dbw 1, TAIL_WHIP
	dbw 4, SPITE
	dbw 7, QUICK_ATTACK
	dbw 12, CONFUSE_RAY
	dbw 15, ICY_WIND
	dbw 20, SHADOWSTRIKE
	dbw 24, DISABLE
	dbw 24, CURSE         ;evolution move
	dbw 34, OMINOUS_WIND
	dbw 39, ICE_BEAM
	dbw 45, SAFEGUARD
	dbw 53, BLIZZARD
	dbw LEARN_EVO_MOVE, CURSE
	db 0 ; no more level-up moves

Articuno_GalarianEvosAttacks:        ;final
	db 0 ; no more evolutions
	dbw 1, HEAL_BELL
	dbw 1, GUST
	dbw 1, REFRESH
	dbw 4, CONFUSION
	dbw 10, REFLECT
	dbw 15, AIR_CUTTER
	dbw 20, AGILITY
	dbw 25, ANCIENTPOWER
	dbw 30, FEATHERDANCE
	dbw 35, PSYBEAM
	dbw 40, RECOVER
	dbw 45, ICE_BEAM
	dbw 50, HYPNOSIS
	dbw 55, PSYCHIC_M
	dbw 59, PSYCH_UP
	db 0 ; no more level-up moves

Zapdos_GalarianEvosAttacks:          ;final
	db 0 ; no more evolutions
	dbw 1, BLAZE_KICK
	dbw 1, PECK
	dbw 1, LASER_FOCUS
	dbw 4, LOW_KICK
	dbw 10, LIGHT_SCREEN
	dbw 15, DOUBLE_KICK
	dbw 20, AGILITY
	dbw 25, ANCIENTPOWER
	dbw 30, SCREECH
	dbw 35, DRILL_PECK
	dbw 40, PROTECT
	dbw 45, THUNDERBOLT
	dbw 50, BULK_UP
	dbw 55, JUMP_KICK
	dbw 59, REVERSAL 
	db 0 ; no more level-up moves

Moltres_GalarianEvosAttacks:         ;final
	db 0 ; no more evolutions
	dbw 1, OMINOUS_WIND
	dbw 1, PECK
	dbw 1, LEER
	dbw 4, PURSUIT
	dbw 10, SAFEGUARD
	dbw 15, WING_ATTACK
	dbw 20, AGILITY
	dbw 25, ANCIENTPOWER
	dbw 30, WILL_O_WISP
	dbw 35, HEX
	dbw 40, ENDURE
	dbw 45, FLAMETHROWER
	dbw 50, NASTY_PLOT
	dbw 55, DARK_PULSE
	dbw 59, SKY_ATTACK
	db 0 ; no more level-up moves
	
Bulbasaur_CloneEvosAttacks:          ;final
	dbbw EVOLVE_LEVEL, 16, IVYSAUR_CLONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, VINE_WHIP
	dbw 8, LEECH_SEED
	dbw 13, EFFECT_SPORE
	dbw 16, GROWTH
	dbw 24, RAZOR_LEAF
	dbw 27, SWEET_SCENT
	dbw 30, TOXIC
	dbw 33, TAKE_DOWN
	dbw 36, MOONLIGHT
	dbw 44, SOLARBEAM
	db 0 ; no more level-up moves

Ivysaur_CloneEvosAttacks:            ;final
	dbbw EVOLVE_LEVEL, 32, VENUSAUR_CLONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, VINE_WHIP
	dbw 8, LEECH_SEED
	dbw 13, EFFECT_SPORE
	dbw 15, GROWTH
	dbw 27, RAZOR_LEAF
	dbw 32, SWEET_SCENT
	dbw 35, TOXIC
	dbw 42, TAKE_DOWN
	dbw 45, MOONLIGHT
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

Venusaur_CloneEvosAttacks:           ;final
	db 0 ; no more evolutions
	dbw 1, DARK_PULSE
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, VINE_WHIP
	dbw 8, LEECH_SEED
	dbw 13, EFFECT_SPORE
	dbw 15, GROWTH
	dbw 27, RAZOR_LEAF
	dbw 31, SWEET_SCENT
	dbw 31, PETAL_DANCE   ;evolution move
	dbw 38, TOXIC
	dbw 44, TAKE_DOWN
	dbw 47, MOONLIGHT
	dbw 55, SOLARBEAM
	dbw LEARN_EVO_MOVE, PETAL_DANCE
	db 0 ; no more level-up moves

Charmander_CloneEvosAttacks:         ;final
	dbbw EVOLVE_LEVEL, 16, CHARMELEON_CLONE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 16, DRAGON_RAGE
	dbw 20, SCARY_FACE
	dbw 24, FIRE_FANG
	dbw 28, DRAGONBREATH
	dbw 34, FLAMETHROWER
	dbw 37, NIGHT_SLASH
	dbw 43, FIRE_BLAST
	db 0 ; no more level-up moves

Charmeleon_CloneEvosAttacks:         ;final
	dbbw EVOLVE_LEVEL, 36, CHARIZARD_CLONE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 15, DRAGON_RAGE
	dbw 24, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 34, DRAGONBREATH
	dbw 37, FLAMETHROWER
	dbw 43, NIGHT_SLASH
	dbw 50, FIRE_BLAST
	db 0 ; no more level-up moves

Charizard_CloneEvosAttacks:          ;final
	db 0 ; no more evolutions
	dbw 1, DRAGON_CLAW
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 15, DRAGON_RAGE
	dbw 24, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 34, DRAGONBREATH
	dbw 35, WING_ATTACK   ;evolution move
	dbw 41, FLAMETHROWER
	dbw 47, NIGHT_SLASH
	dbw 55, FIRE_BLAST
	dbw LEARN_EVO_MOVE, WING_ATTACK
	db 0 ; no more level-up moves

Squirtle_CloneEvosAttacks:           ;final
	dbbw EVOLVE_LEVEL, 16, WARTORTLE_CLONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, WATER_GUN
	dbw 10, HARDEN
	dbw 16, BITE
	dbw 19, RAPID_SPIN
	dbw 24, BUBBLEBEAM
	dbw 27, PROTECT
	dbw 31, RAIN_DANCE
	dbw 35, RAZOR_SHELL
	dbw 38, IRON_DEFENSE
	dbw 45, HYDRO_PUMP
	db 0 ; no more level-up moves

Wartortle_CloneEvosAttacks:          ;final
	dbbw EVOLVE_LEVEL, 36, BLASTOISE_CLONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, WATER_GUN
	dbw 10, HARDEN
	dbw 15, BITE
	dbw 23, RAPID_SPIN
	dbw 27, BUBBLEBEAM
	dbw 31, PROTECT
	dbw 35, RAIN_DANCE
	dbw 38, RAZOR_SHELL
	dbw 44, IRON_DEFENSE
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

Blastoise_CloneEvosAttacks:          ;final
	db 0 ; no more evolutions
	dbw 1, FLASH_CANNON
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, WATER_GUN
	dbw 10, HARDEN
	dbw 15, BITE
	dbw 23, RAPID_SPIN
	dbw 27, BUBBLEBEAM
	dbw 31, PROTECT
	dbw 35, RAIN_DANCE
	dbw 35, DARK_PULSE    ;evolution move
	dbw 42, RAZOR_SHELL
	dbw 49, IRON_DEFENSE
	dbw 55, HYDRO_PUMP
	dbw LEARN_EVO_MOVE, DARK_PULSE
	db 0 ; no more level-up moves

Ekans_DarkEvosAttacks:               ;final
	dbbw EVOLVE_LEVEL, 24, ARBOK_DARK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, BITE
	dbw 9, REFRESH
	dbw 12, GLARE   
	dbw 17, SCREECH
	dbw 20, POISON_FANG
	dbw 22, SLAM
	dbw 27, ACID_SPRAY
	dbw 32, MUD_SHOT
	dbw 36, COIL
	dbw 44, POISON_JAB
	dbw 48, HAZE
	db 0 ; no more level-up moves

Arbok_DarkEvosAttacks:               ;final
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, ICE_FANG
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, BITE
	dbw 9, REFRESH
	dbw 12, GLARE   
	dbw 17, SCREECH
	dbw 20, POISON_FANG
	dbw 22, SLAM
	dbw 23, SCARY_FACE    ;evolution move
	dbw 32, ACID_SPRAY
	dbw 36, MUD_SHOT
	dbw 40, COIL
	dbw 45, POISON_JAB
	dbw 49, CRUNCH
	dbw 55, HAZE
	dbw LEARN_EVO_MOVE, SCARY_FACE
	db 0 ; no more level-up moves

Pichu_SpikyEvosAttacks:              ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU_CLONE
	db 0 ; no more evolutions
	dbw 1, CHARM
	dbw 1, THUNDERSHOCK
	dbw 4, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 12, QUICK_ATTACK
	dbw 15, NASTY_PLOT
	db 0 ; no more level-up moves

Pikachu_CloneEvosAttacks:            ;final
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU_CLONE
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT
	dbw 1, VOLT_TACKLE
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 4, TAIL_WHIP
	dbw 10, THUNDER_WAVE
	dbw 13, QUICK_ATTACK
	dbw 18, DOUBLE_TEAM
	dbw 21, SPARK
	dbw 26, AGILITY
	dbw 34, SLAM
	dbw 37, THUNDERBOLT
	dbw 42, LIGHT_SCREEN
	dbw 45, THUNDER
	db 0 ; no more level-up moves

Raichu_CloneEvosAttacks:             ;final
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT
	dbw 1, JUMP_KICK
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 4, TAIL_WHIP
	dbw 10, THUNDER_WAVE
	dbw 13, QUICK_ATTACK
	dbw 18, DOUBLE_TEAM
	dbw 22, SPARK
	dbw 30, AGILITY
	dbw 35, SLAM
	dbw 42, THUNDERBOLT
	dbw 45, LIGHT_SCREEN
	dbw 54, VOLT_TACKLE
	db 0 ; no more level-up moves
	
Raichu_AlolanEvosAttacks:            ;final
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 4, TAIL_WHIP
	dbw 10, THUNDER_WAVE
	dbw 13, QUICK_ATTACK
	dbw 18, DOUBLE_TEAM
	dbw 22, SPARK
	dbw 30, AGILITY
	dbw 35, SURF
	dbw 42, THUNDERBOLT
	dbw 45, LIGHT_SCREEN
	dbw 54, PSYCHIC_M
	dbw LEARN_EVO_MOVE, CONFUSION
	db 0 ; no more level-up moves

Sandshrew_AlolanEvosAttacks:         ;final
	dbbw EVOLVE_LEVEL, 22, SANDSLASH_ALOLAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 4, POWDER_SNOW
	dbw 9, POISON_STING
	dbw 11, ROLLOUT
	dbw 14, METAL_CLAW
	dbw 17, ICE_PUNCH
	dbw 20, RAPID_SPIN
	dbw 24, SWIFT
	dbw 29, IRON_DEFENSE
	dbw 35, HAIL
	dbw 42, ICICLE_CRASH
	db 0 ; no more level-up moves

Sandslash_AlolanEvosAttacks:         ;final
	db 0 ; no more evolutions
	dbw 1, DRILL_RUN
	dbw 1, SCRATCH
;	dbw 1, SHARPEN
	dbw 4, POWDER_SNOW
	dbw 9, POISON_STING
	dbw 11, ROLLOUT
	dbw 14, METAL_CLAW
	dbw 17, ICE_PUNCH
	dbw 20, RAPID_SPIN
	dbw 21, SLASH         ;evolution move
	dbw 24, SPIKE_CANNON
	dbw 29, SWORDS_DANCE
	dbw 35, HAIL
	dbw 53, ICICLE_CRASH
	dbw LEARN_EVO_MOVE, SLASH
	db 0 ; no more level-up moves

Growlithe_HisuianEvosAttacks:        ;final
	dbbbw EVOLVE_ITEM_LEVEL, FIRE_STONE, 25, ARCANINE_HISUIAN
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 4, BITE
	dbw 8, HOWL
	dbw 14, FLAME_WHEEL     
	dbw 19, REVERSAL
	dbw 23, FIRE_FANG
	dbw 28, AGILITY
	dbw 34, ROCK_SLIDE
	dbw 39, CRUNCH
	dbw 45, TAKE_DOWN
	db 0 ; no more level-up moves

Arcanine_HisuianEvosAttacks:         ;final
	db 0 ; no more evolutions
	dbw 1, ACCELEROCK
	dbw 1, EMBER
	dbw 1, LEER
	dbw 4, BITE
	dbw 8, ROAR
	dbw 14, FLAME_WHEEL     
	dbw 19, REVERSAL
	dbw 23, FIRE_FANG
	dbw 24, EXTREMESPEED  ;evolution move
	dbw 34, AGILITY
	dbw 39, ROCK_SLIDE
	dbw 45, CRUNCH
	dbw 48, TAKE_DOWN
	dbw 54, SACRED_FIRE
	dbw LEARN_EVO_MOVE, EXTREMESPEED
	db 0 ; no more level-up moves
	
Voltorb_HisuianEvosAttacks:          ;final
	dbbw EVOLVE_LEVEL, 30, ELECTRODE_HISUIAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, EFFECT_SPORE
	dbw 4, THUNDERSHOCK
	dbw 8, SONICBOOM
	dbw 12, SPARK
	dbw 15, ROLLOUT
	dbw 19, SCREECH
	dbw 26, CHARGE_BEAM
	dbw 29, SELFDESTRUCT
	dbw 33, ENERGY_BALL
	dbw 36, LIGHT_SCREEN
	dbw 43, THUNDERBOLT
	dbw 47, MIRROR_COAT
	db 0 ; no more level-up moves

Electrode_HisuianEvosAttacks:        ;final
	db 0 ; no more evolutions
	dbw 1, LEECH_SEED
	dbw 1, TACKLE
	dbw 1, EFFECT_SPORE
	dbw 4, THUNDERSHOCK
	dbw 8, SONICBOOM
	dbw 12, SPARK
	dbw 15, ROLLOUT
	dbw 19, SCREECH
	dbw 26, CHARGE_BEAM
	dbw 29, SELFDESTRUCT
	dbw 36, ENERGY_BALL
	dbw 43, LIGHT_SCREEN
	dbw 47, THUNDERBOLT
	dbw 56, MIRROR_COAT
	db 0 ; no more level-up moves
	
Marowak_AlolanEvosAttacks:           ;final
	db 0 ; no more evolutions
	dbw 1, PERISH_SONG
	dbw 1, POUND
	dbw 1, GROWL
	dbw 4, LEER
	dbw 7, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, LASER_FOCUS
	dbw 23, ECHOED_VOICE
	dbw 27, SHADOWSTRIKE  ;evolution move
	dbw 33, FLAME_WHEEL
	dbw 37, WILL_O_WISP
	dbw 43, TAKE_DOWN
	dbw 47, BONEMERANG
	dbw 53, FALSE_SWIPE
	dbw LEARN_EVO_MOVE, SHADOWSTRIKE
	db 0 ; no more level-up moves
	
Typhlosion_HisuianEvosAttacks:       ;final
	db 0 ; no more evolutions
	dbw 1, CALM_MIND
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, QUICK_ATTACK
	dbw 14, DEFENSE_CURL
	dbw 22, FLAME_WHEEL
	dbw 25, WILL_O_WISP
	dbw 33, SWIFT
	dbw 35, HEX           ;evolution move
	dbw 42, FLAMETHROWER
	dbw 45, ROLLOUT
	dbw 49, TAKE_DOWN
	dbw 55, FIRE_BLAST
	dbw LEARN_EVO_MOVE, HEX
	db 0 ; no more level-up moves
	
Arbok_KantoEvosAttacks:              ;final
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, ICE_FANG
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, BITE
	dbw 9, REFRESH
	dbw 12, GLARE   
	dbw 17, SCREECH
	dbw 20, POISON_FANG
	dbw 22, SLAM
	dbw 23, SCARY_FACE    ;evolution move
	dbw 32, ACID_SPRAY
	dbw 36, MUD_SHOT
	dbw 40, COIL
	dbw 45, POISON_JAB
	dbw 49, CRUNCH
	dbw 55, HAZE
	dbw LEARN_EVO_MOVE, SCARY_FACE
	db 0 ; no more level-up moves
	
Arbok_SeviiEvosAttacks:              ;final
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, ICE_FANG
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, BITE
	dbw 9, REFRESH
	dbw 12, GLARE   
	dbw 17, SCREECH
	dbw 20, POISON_FANG
	dbw 22, SLAM
	dbw 23, SCARY_FACE    ;evolution move
	dbw 32, DRAGONBREATH
	dbw 36, MUD_SHOT
	dbw 40, COIL
	dbw 45, POISON_JAB
	dbw 49, CRUNCH
	dbw 55, HAZE
	dbw LEARN_EVO_MOVE, SCARY_FACE
	dbw LEARN_EVO_MOVE, DRAGONBREATH ;can I do this? -yes, you can
	db 0 ; no more level-up moves
	
Wooper_PaldeanEvosAttacks:           ;final
	dbbw EVOLVE_LEVEL, 20, CLODSIRE
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, TAIL_WHIP
	dbw 4, MUD_SLAP
	dbw 9, SPIKES
	dbw 15, MUD_SHOT
	dbw 19, ACID_SPRAY
	dbw 23, SLAM
	dbw 29, REST
	dbw 33, POISON_JAB
	dbw 37, EARTHQUAKE
	dbw 45, TOXIC
	db 0 ; no more level-up moves

ClodsireEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, BULLDOZE
	dbw 1, POISON_STING
	dbw 1, TAIL_WHIP
	dbw 4, MUD_SLAP
	dbw 9, SPIKES
	dbw 15, MUD_SHOT
	dbw 19, ACID_SPRAY
	dbw 19, AMNESIA       ;evolution move
	dbw 25, SLAM
	dbw 33, REST
	dbw 37, POISON_JAB
	dbw 43, MEGAHORN
	dbw 47, EARTHQUAKE
	dbw 51, TOXIC
	dbw LEARN_EVO_MOVE, AMNESIA
	db 0 ; no more level-up moves
	
StarlyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 14, STARAVIA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, QUICK_ATTACK
	dbw 9, ENDURE
	dbw 13, WING_ATTACK
	dbw 17, DOUBLE_TEAM
	dbw 21, WHIRLWIND
	dbw 25, FEATHERDANCE
	dbw 29, TAKE_DOWN
	dbw 33, AGILITY
	dbw 37, SKY_ATTACK
	dbw 41, REVERSAL
	db 0 ; no more level-up moves

StaraviaEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 34, STARAPTOR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, QUICK_ATTACK
	dbw 9, ENDURE
	dbw 13, WING_ATTACK
	dbw 19, DOUBLE_TEAM
	dbw 25, WHIRLWIND
	dbw 28, SWAGGER
	dbw 31, TAKE_DOWN
	dbw 37, AGILITY
	dbw 43, SKY_ATTACK
	dbw 48, REVERSAL
	db 0 ; no more level-up moves

StaraptorEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, BULK_UP
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, QUICK_ATTACK
	dbw 9, ENDURE
	dbw 13, WING_ATTACK
	dbw 19, DOUBLE_TEAM
	dbw 25, WHIRLWIND
	dbw 28, SWAGGER 
	dbw 31, TAKE_DOWN
	dbw 33, SUBMISSION    ;evolution move
	dbw 41, AGILITY
	dbw 48, SKY_ATTACK
	dbw 55, REVERSAL
	dbw LEARN_EVO_MOVE, SUBMISSION
	db 0 ; no more level-up moves
	
SuicudraxEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, BITE
	dbw 1, LEER
	dbw 4, EMBER
	dbw 9, TWISTER
	dbw 15, ROAR
	dbw 20, WATER_PULSE
	dbw 25, DRAGONBREATH
	dbw 32, SCARY_FACE
	dbw 36, FLAMETHROWER
	dbw 41, DRAGON_CLAW
	dbw 45, HYDRO_PUMP
	dbw 49, DRAGON_DANCE
	dbw 55, OUTRAGE
	dbw 59, EXTREMESPEED
	db 0 ; no more level-up moves
	
RaiensuiEvosAttacks:                 ;final
	db 0 ; no more evolutions
	dbw 1, AEROBLAST
	dbw 1, SACRED_FIRE
	dbw 1, BITE
	dbw 1, HOWL
	dbw 4, EMBER
	dbw 9, SWAGGER
	dbw 13, SPARK
	dbw 19, REFLECT
	dbw 25, RECOVER
	dbw 32, WATER_PULSE   ;adjust next 4 for boss level
	dbw 36, TRI_ATTACK
	dbw 41, FLAMETHROWER
	dbw 47, VOLT_TACKLE
	dbw 54, NASTY_PLOT
	dbw 65, SHADOW_RUSH
	dbw 71, EXTREMESPEED
	db 0 ; no more level-up moves
	
Omastar_FossilEvosAttacks:           ;changed to ketsuban/ghost missingno
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, SPITE
	dbw 11, ICY_WIND
	dbw 17, CURSE
	dbw 24, NIGHT_SHADE
	dbw 27, SUBSTITUTE
	dbw 34, MEGA_PUNCH
	dbw 40, MEAN_LOOK
	dbw 45, TRI_ATTACK
	dbw 51, SHADOWSTRIKE
	dbw 54, DESTINY_BOND
	dbw 60, SKY_ATTACK
	db 0 ; no more level-up moves
	
Kabutops_FossilEvosAttacks:          ;final
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LEECH_LIFE
	dbw 7, CURSE
	dbw 10, AQUA_JET
	dbw 13, ENDURE
	dbw 16, MUD_SHOT
	dbw 21, BUG_BITE
	dbw 26, SCREECH
	dbw 31, NIGHT_SHADE
	dbw 35, SLASH
	dbw 39, SWORDS_DANCE
	dbw 45, RAZOR_SHELL
	dbw 52, SHADOWSTRIKE
	db 0 ; no more level-up moves
	
Aerodactyl_FossilEvosAttacks:        ;final
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 4, SUPERSONIC
	dbw 9, CURSE
	dbw 17, SCARY_FACE
	dbw 25, NIGHT_SHADE
	dbw 29, WING_ATTACK
	dbw 33, AGILITY
	dbw 38, DRAGONBREATH
	dbw 45, SHADOWSTRIKE
	dbw 49, TAKE_DOWN
	dbw 53, ROCK_SLIDE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves
	
MissingnoEvosAttacks:                ;final
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, WATER_GUN
	dbw 5, SKY_ATTACK
	dbw 50, TRI_ATTACK
	db 0 ; no more level-up moves
	
Charizard_MEvosAttacks:              ;final
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 15, SLAM
	dbw 24, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 32, AURORA_BEAM
	dbw 36, WING_ATTACK
	dbw 41, FLAMETHROWER
	dbw 47, SLASH
	dbw 55, FIRE_BLAST
	dbw 59, HORN_DRILL
	db 0 ; no more level-up moves
