; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	next_list_item ; FALKNER (1)
	db "FALKNER@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 5
	dw HOOTHOOT 
	db 0 ;female
	dw PECK, GROWL, HYPNOSIS, NO_MOVE
	dw SHINY_F_DVS
	db 7
	dw SPEAROW 
	db 1 ;male
	dw PECK, LEER, MUD_SLAP, ROOST
	dw MALE_DVS
	db 10
	dw PIDGEY
	db 0 ;female
	dw GUST, SAND_ATTACK, QUICK_ATTACK, ROOST
	dw FEMALE_DVS
	db -1 
	
	next_list_item ; FALKNER (2)
	db "FALKNER@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw FEAROW
	db 1 ;male
	db SHARP_BEAK
	dw LASER_FOCUS, DRILL_PECK, DRILL_RUN, ROOST
	dw MALE_DVS
	dw 20K, 50K, 35K, 35K, 10K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw NOCTOWL
	db 0 ;female
	db LUM_BERRY
	dw REFLECT, HYPER_VOICE, ROOST, PSYCHIC_M
	dw SHINY_F_DVS
	dw 45K,   0, 35K, 25K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw DODRIO
	db 0 ;female
	db RAWST_BERRY
	dw DRILL_PECK, SWORDS_DANCE, PURSUIT, EXTREMESPEED
	dw FEMALE_DVS
	dw 25K, 40K, 20K, 45K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw HONCHKROW
	db 1 ;male
	db BLACKGLASSES
	dw NIGHT_SLASH, SWAGGER, SKY_ATTACK, ICY_WIND
	dw MALE_DVS
	dw 40K, 25K, 25K, 20K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw XATU
	db 1 ;male
	db LEFTOVERS
	dw COSMIC_POWER, OMINOUS_WIND, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 30K,   0, 25K, 40K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw PIDGEOT
	db 0 ;female
	db SWIFT_BOOTS
	dw FEATHERDANCE, RAZOR_WIND, TAKE_DOWN, ROOST
	dw FEMALE_DVS
	dw 20K, 30K, 15K, 50K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db -1 
	
	end_list_items

WhitneyGroup:
	next_list_item ; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 15
	dw SNUBBULL
	db 0 ;female
	dw LICK, CHARM, ATTRACT, BITE
	dw FEMALE_DVS
	db 17
	dw CLEFAIRY
	db 0 ;female
	dw SWIFT, ENCORE, MIMIC, SING
	dw FEMALE_DVS
	db 18
	dw TEDDIURSA ;hold item everstone
	db 0 ;female
	dw LICK, FURY_SWIPES, PURSUIT, ATTRACT
	dw FEMALE_DVS
	db 20
	dw MILTANK
	db 0 ;female
	dw STOMP, DEFENSE_CURL, ROLLOUT, ATTRACT
	dw FEMALE_DVS
	db -1 
	
	next_list_item ; WHITNEY (2)
	db "WHITNEY@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw WIGGLYTUFF
	db 0 ;female
	db WIDE_LENS
	dw SING, SLAM, BLIZZARD, ATTRACT
	dw FEMALE_DVS
	dw 45K, 35K, 20K, 25K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw GRANBULL
	db 0 ;female
	db QUICK_CLAW
	dw CRUNCH, SWAGGER, TAKE_DOWN, DYNAMICPUNCH
	dw FEMALE_DVS
	dw 30K, 50K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw CLEFABLE
	db 0 ;female
	db PECHA_SCARF
	dw COSMIC_POWER, METRONOME, MOONLIGHT, CHARGE_BEAM
	dw FEMALE_DVS
	dw 40K, 10K, 40K, 15K, 45K  ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw FURRET
	db 0 ;female
	db FOCUS_BAND
	dw POWERUPPUNCH, SLAM, BATON_PASS, NIGHT_SLASH
	dw SHINY_F_DVS
	dw 25K, 35K, 25K, 45K, 20K  ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw SYLVEON
	db 1 ;male
	db POLKADOT_BOW
	dw HYPER_VOICE, CALM_MIND, RECOVER, SILVER_WIND
	dw MALE_DVS
	dw 40K,   0, 25K, 40K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MILTANK
	db 0 ;female
	db LUM_BERRY
	dw BULLDOZE, ATTRACT, MILK_DRINK, SLAM
	dw FEMALE_DVS
	dw 50K, 40K, 30K, 15K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db -1 

	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 13
	dw LEDYBA
	db 0 ;female
	dw TACKLE, SUPERSONIC, POWERUPPUNCH, SAFEGUARD
	dw FEMALE_DVS
	db 15
	dw BUTTERFREE
	db 1 ;male
	dw CONFUSION, STRING_SHOT, EFFECT_SPORE, GUST
	dw MALE_DVS
	db 16
	dw SCYTHER
	db 1 ;male
	dw QUICK_ATTACK, LASER_FOCUS, FURY_CUTTER, PURSUIT
	dw MALE_DVS
	db -1 

	next_list_item ; BUGSY (2)
	db "BUGSY@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw LEDIAN 
	db 0 ;female
	db LIGHT_ARMOR
	dw POWERUPPUNCH, LIGHT_SCREEN, ICE_PUNCH, BATON_PASS
	dw FEMALE_DVS
	dw 45K, 40K, 25K, 25K, 25K ; 160k
	;   hp, atk, def, spd, spc
	db 55
	dw BUTTERFREE
	db 1 ;male
	db WIDE_LENS
	dw SLEEP_POWDER, PSYBEAM, SILVER_WIND, QUIVER_DANCE
	dw MALE_DVS
	dw 35K,   0, 20K, 40K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw SCYTHER
	db 1 ;male
	db FOCUS_BAND
	dw SWORDS_DANCE, FURY_CUTTER, WING_ATTACK, REVERSAL
	dw MALE_DVS
	dw 15K, 50K, 20K, 50K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw YANMEGA
	db 1 ;male
	db WISE_GLASSES
	dw BUG_BUZZ, ANCIENTPOWER, RAZOR_WIND, HYPNOSIS
	dw MALE_DVS
	dw 35K,   0, 20K, 55K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw GLISCOR
	db 1 ;male
	db MUSCLE_BAND
	dw FURY_CUTTER, SCREECH, EARTHQUAKE, SKY_UPPERCUT
	dw MALE_DVS
	dw 25K, 40K, 30K, 35K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw SCIZOR
	db 0 ;female
	db LEFTOVERS
	dw CURSE, X_SCISSOR, BULLET_PUNCH, ROOST
	dw FEMALE_DVS
	dw 35K, 40K, 30K, 15K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db -1 

	end_list_items

MortyGroup:
	next_list_item ; MORTY (1)
	db "MORTY@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 21
	dw MISDREAVUS
	db 0 ;female
	dw CONFUSION, MEAN_LOOK, HYPNOSIS, HEX
	dw FEMALE_DVS
	db 23
	dw CUBONE
	db 1 ;male
	dw ENDURE, BONE_CLUB, PERISH_SONG, HEADBUTT
	dw MALE_DVS
	db 23
	dw HAUNTER
	db 1 ;male
	dw CONFUSE_RAY, SHADOW_BALL, MEAN_LOOK, SMOG
	dw MALE_DVS
	db 25
	dw NINETALES
	db 1 ;male
	dw CURSE, MYSTICALFIRE, SPITE, SHADOW_BALL
	dw SHINY_M_DVS
	db -1 
	
	next_list_item ; MORTY (2)
	db "MORTY@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw HAUNTER
	db 1 ;male
	db WIDE_LENS
	dw HYPNOSIS, MEAN_LOOK, DREAM_EATER, HEX
	dw MALE_DVS
	dw 30K,   0, 20K, 55K, 55K ; 160k
	;   hp, atk, def, spd, spc
	db 55
	dw NINETALES_ALOLAN
	db 0 ;female
	db PSY_SHIELD
	dw CONFUSE_RAY, ICY_WIND, SHADOW_BALL, DESTINY_BOND
	dw FEMALE_DVS
	dw 25K,   0, 20K, 55K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MAROWAK_ALOLAN
	db 1 ;male
	db THICK_CLUB
	dw SHADOWSTRIKE, FLAME_WHEEL, BONEMERANG, PAIN_SPLIT
	dw MALE_DVS
	dw 20K, 55K, 35K, 20K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MISMAGIUS
	db 0 ;female
	db LIGHT_ARMOR
	dw POWER_GEM, NASTY_PLOT, MYSTICALFIRE, SHADOW_BALL
	dw FEMALE_DVS
	dw 15K,   0, 25K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw TYPHLOSION_HISUIAN
	db 1 ;male
	db CHARCOAL
	dw HEX, WILL_O_WISP, FLAMETHROWER, CALM_MIND
	dw MALE_DVS
	dw 25K,   0, 20K, 55K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw GENGAR
	db 0 ;female
	db SPELL_TAG
	dw THUNDERBOLT, SHADOW_BALL, DESTINY_BOND, SLUDGE_BOMB
	dw FEMALE_DVS
	dw 20K,   0, 20K, 50K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db -1 
	
	next_list_item ; MORTY (3)
	db "MORTY@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw HAUNTER
	db 1 ;male
	db WIDE_LENS
	dw HYPNOSIS, MEAN_LOOK, DREAM_EATER, HEX
	dw MALE_DVS
	dw 30K,   0, 20K, 55K, 55K ; 160k
	;   hp, atk, def, spd, spc
	db 55
	dw NINETALES_ALOLAN
	db 0 ;female
	db NEVERMELTICE
	dw LIGHT_SCREEN, ICY_WIND, SHADOW_BALL, DESTINY_BOND
	dw FEMALE_DVS
	dw 25K,   0, 20K, 55K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MAROWAK_ALOLAN
	db 1 ;male
	db THICK_CLUB
	dw SHADOWSTRIKE, FLAME_WHEEL, BONEMERANG, PAIN_SPLIT
	dw MALE_DVS
	dw 20K, 55K, 35K, 20K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MISMAGIUS
	db 0 ;female
	db LIGHT_ARMOR
	dw POWER_GEM, NASTY_PLOT, MYSTICALFIRE, SHADOW_BALL
	dw FEMALE_DVS
	dw 15K,   0, 25K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw NINETALES
	db 1 ;male
	db CHARCOAL
	dw CONFUSE_RAY, MYSTICALFIRE, SHADOW_BALL, CURSE
	dw SHINY_M_DVS
	dw 25K,   0, 25K, 55K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw GENGAR
	db 0 ;female
	db SPELL_TAG
	dw THUNDERBOLT, SHADOW_BALL, DESTINY_BOND, SLUDGE_BOMB
	dw FEMALE_DVS
	dw 20K,   0, 20K, 50K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db -1 
	
	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 25
	dw DELIBIRD
	db 1 ;male
	dw SPIKES, PRESENT, ICY_WIND, ENCORE
	dw MALE_DVS
	db 27
	dw SEEL
	db 1 ;male
	dw HEADBUTT, AURORA_BEAM, WATER_PULSE, HAIL
	dw MALE_DVS
	db 33
	dw PILOSWINE
	db 1 ;male
	dw HOWL, ICE_SHARD, BULLDOZE, TAKE_DOWN
	dw MALE_DVS
	db 34
	dw DEWGONG
	db 0 ;female
	dw WATER_PULSE, SLEEP_TALK, BLIZZARD, REST
	dw FEMALE_DVS
	db -1 

	next_list_item ; PRYCE (2)
	db "PRYCE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw GLACEON
	db 0 ;female
	db NEVERMELTICE
	dw BLIZZARD, AMNESIA, MIRROR_COAT, HAIL  ;may chnage to automatic gym weather
	dw FEMALE_DVS
	dw 40K,   0, 20K, 35K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw DEWGONG
	db 0 ;female
	db CHESTO_BERRY
	dw DIVE, SLEEP_TALK, BLIZZARD, REST
	dw FEMALE_DVS
	dw 50K,   0, 35K, 30K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw CLOYSTER
	db 1 ;male
	db MUSCLE_BAND
	dw SPIKES, ICICLE_CRASH, IRON_DEFENSE, RAZOR_SHELL
	dw MALE_DVS
	dw 25K, 40K, 45K, 25K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw SANDSLASH_ALOLAN
	db 1 ;male
	db SWIFT_BOOTS
	dw SWORDS_DANCE, ICE_PUNCH, METAL_CLAW, ROCK_SLIDE
	dw MALE_DVS
	dw 20K, 45K, 20K, 50K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw LAPRAS
	db 0 ;female
	db LEFTOVERS
	dw PERISH_SONG, WHIRLPOOL, CONFUSE_RAY, RECOVER
	dw FEMALE_DVS
	dw 45K,   0, 30K, 25K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw PILOSWINE
	db 1 ;male
	db SOFT_SAND
	dw ICICLE_CRASH, HOWL, ANCIENTPOWER, EARTHQUAKE
	dw MALE_DVS
	dw 25K, 55K, 20K, 20K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db -1 

	end_list_items

JasmineGroup:
	next_list_item ; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_MOVES| TRAINERTYPE_DVS
	db 27
	dw MAGNEMITE
	db 1 ;male
	dw CHARGE_BEAM, SUPERSONIC, MIRROR_SHOT, THUNDER_WAVE
	dw MALE_DVS
	db 30
	dw QWILFISH
	db 1 ;male
	dw SPIKES, IRON_TAIL, POISON_JAB, AQUA_JET
	dw MALE_DVS
	db 32
	dw SKARMORY
	db 0 ;female
	dw AIR_CUTTER, STEEL_WING, IRON_DEFENSE, ROOST
	dw FEMALE_DVS
	db 35
	dw STEELIX
	db 1 ;male
	dw SUNNY_DAY, BULLDOZE, IRON_TAIL, ROCK_SLIDE
	dw MALE_DVS
	db -1 
	
	next_list_item ; JASMINE (2)
	db "JASMINE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw MAGNETON
	db 1 ;male
	db WIDE_LENS
	dw THUNDER, RAIN_DANCE, FLASH_CANNON, THUNDER_WAVE
	dw MALE_DVS
	dw 30K,   0, 35K, 40K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw FORRETRESS
	db 0 ;female
	db LEFTOVERS
	dw PROTECT, TOXIC, PAIN_SPLIT, SPIKES
	dw FEMALE_DVS
	dw 40K, 10K, 50K,   0, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw DETOQWIL
	db 1 ;male
	db QUICK_CLAW
	dw SWORDS_DANCE, WATERFALL, IRON_TAIL, SELFDESTRUCT
	dw MALE_DVS
	dw 20K, 55K, 30K, 20K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw SKARMORY
	db 0 ;female
	db SHARP_BEAK
	dw STEEL_WING, DRILL_PECK, WHIRLWIND, ROOST
	dw FEMALE_DVS
	dw 40K, 20K, 60K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MAGNETON
	db 1 ;male
	db WISE_GLASSES
	dw TRI_ATTACK, LASER_FOCUS, FLASH_CANNON, ZAP_CANNON
	dw SHINY_M_DVS
	dw 25K,   0, 25K, 50K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw STEELIX
	db 1 ;male
	db METAL_COAT
	dw ROCK_SLIDE, SCREECH, EARTHQUAKE, IRON_TAIL
	dw MALE_DVS
	dw 30K, 45K, 20K, 40K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db -1

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 25
	dw TYROGUE
	db 1 ;male
	dw TACKLE, ENDURE, LASER_FOCUS, VACUUM_WAVE
	dw MALE_DVS
	db 25
	dw FARFETCH_D
	db 0 ;female
	dw SWORDS_DANCE, FURY_CUTTER, AIR_CUTTER, ROCK_SMASH
	dw FEMALE_DVS
	db 27
	dw PRIMEAPE
	db 1 ;male
	dw LOW_KICK, HOWL, FURY_SWIPES, ROCK_SLIDE
	dw MALE_DVS
	db 30
	dw POLIWRATH
	db 1 ;male
	dw BULK_UP, BUBBLEBEAM, DYNAMICPUNCH, SLAM
	dw MALE_DVS
	db -1 

	next_list_item ; CHUCK (2)
	db "CHUCK@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw HITMONTOP
	db 1 ;male
	db BLACKGLASSES
	dw RAPID_SPIN, PURSUIT, JUMP_KICK, SWAGGER
	dw MALE_DVS
	dw 15K, 40K, 20K, 60K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw PRIMEAPE
	db 1 ;male
	db KINGS_ROCK
	dw ROCK_SLIDE, HOWL, SUBMISSION, OUTRAGE
	dw MALE_DVS
	dw 30K, 35K, 45K, 20K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw WU_DUK
	db 0 ;female
	db STICK
	dw SWORDS_DANCE, WING_ATTACK, LEAF_BLADE, SKY_UPPERCUT
	dw FEMALE_DVS
	dw 15K, 40K, 20K, 40K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MACHOKE
	db 0 ;female
	db BLACKBELT_I
	dw POWERUPPUNCH, THUNDERPUNCH, ROCK_SLIDE, SUBMISSION
	dw FEMALE_DVS
	dw 20K, 55K, 40K, 15K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw HERACROSS
	db 1 ;male
	db MUSCLE_BAND
	dw ENDURE, MEGAHORN, METAL_CLAW, REVERSAL
	dw MALE_DVS
	dw 25K, 40K, 30K, 30K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw POLIWRATH
	db 1 ;male
	db WIDE_LENS
	dw BULK_UP, WAVE_CRASH, DYNAMICPUNCH, SLAM
	dw MALE_DVS
	dw 20K, 45K, 25K, 30K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db -1

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 35
	dw CHARMELEON
	db 0 ;female
	dw FIRE_FANG, METAL_CLAW, SCARY_FACE, DRAGONBREATH
	dw FEMALE_DVS
	db 37
	dw DRAGONAIR
	db 0 ;female
	dw THUNDER_WAVE, THUNDERBOLT, DRAGONBREATH, SLAM
	dw FEMALE_DVS
	db 37
	dw DRAGONAIR
	db 1 ;male
	dw THUNDER_WAVE, ICE_BEAM, SAFEGUARD, DRAGONBREATH
	dw MALE_DVS
	db 40
	dw KINGDRA
	db 0 ;female
	dw BUBBLEBEAM, LASER_FOCUS, HYPER_BEAM, DRAGONBREATH
	dw FEMALE_DVS
	db -1 

	next_list_item ; CLAIR (2)
	db "CLAIR@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 55
	dw DRAGONAIR
	db 1 ;male
	db NEVERMELTICE
	dw THUNDER_WAVE, ICE_BEAM, SAFEGUARD, DRAGONBREATH
	dw MALE_DVS
	dw 35K,   0, 20K, 50K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw AMPHAROS
	db 1 ;male
	db SWIFT_BOOTS
	dw POWER_GEM, CHARGE_BEAM, LIGHT_SCREEN, DRAGONBREATH
	dw MALE_DVS
	dw 35K,   0, 30K, 25K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MEGANIUM
	db 0 ;female
	db LEFTOVERS
	dw GROWTH, PETAL_DANCE, SYNTHESIS, DRAGONBREATH
	dw FEMALE_DVS
	dw 40K, 25K, 30K, 20K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw DUSERPENT
	db 1 ;male
	db KINGS_ROCK
	dw GLARE, DRILL_RUN, ROOST, TWISTER
	dw MALE_DVS
	dw 50K,   0, 25K, 40K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw DRAGONAIR
	db 0 ;female
	db PERSIM_BERRY
	dw DRAGON_DANCE, THUNDERBOLT, EXTREMESPEED, OUTRAGE
	dw FEMALE_DVS
	dw 20K, 50K, 20K, 45K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw KINGDRA
	db 0 ;female
	db SCOPE_LENS
	dw OCTAZOOKA, ICE_BEAM, HYPER_BEAM, DRAGONBREATH
	dw FEMALE_DVS
	dw 25K,   0, 20K, 50K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db -1

	end_list_items

Rival1Group:
	next_list_item ; RIVAL1 (1)
	db "?@", TRAINERTYPE_DVS
	db 5
	dw CHIKORITA
	db 0 ;female
	dw FEMALE_DVS
	db -1 

	next_list_item ; RIVAL1 (2)
	db "?@", TRAINERTYPE_DVS
	db 5
	dw CYNDAQUIL
	db 1 ;male
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (3)
	db "?@", TRAINERTYPE_DVS
	db 5
	dw TOTODILE
	db 1 ;male
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (4) azalea
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 12
	dw SNEASEL
	db 1 ;male
	dw LEER, QUICK_ATTACK, FURY_CUTTER, PURSUIT
	dw MALE_DVS
	db 14
	dw ZUBAT
	db 1 ;male
	dw LEECH_LIFE, SUPERSONIC, WING_ATTACK, BITE
	dw MALE_DVS
	db 16
	dw BAYLEEF
	db 0 ;female
	dw MEGA_DRAIN, SLEEP_POWDER, REFLECT, GROWTH
	dw FEMALE_DVS
	db -1 

	next_list_item ; RIVAL1 (5) azalea
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 12
	dw SNEASEL
	db 1 ;male
	dw LEER, QUICK_ATTACK, FURY_CUTTER, PURSUIT
	dw MALE_DVS
	db 14
	dw ZUBAT
	db 1 ;male
	dw LEECH_LIFE, SUPERSONIC, WING_ATTACK, BITE
	dw MALE_DVS
	db 16
	dw QUILAVA
	db 1 ;male
	dw EMBER, LEER, SMOKESCREEN, QUICK_ATTACK
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (6) azalea
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 12
	dw SNEASEL
	db 1 ;male
	dw LEER, QUICK_ATTACK, FURY_CUTTER, PURSUIT
	dw MALE_DVS
	db 14
	dw ZUBAT
	db 1 ;male
	dw LEECH_LIFE, SUPERSONIC, WING_ATTACK, BITE
	dw MALE_DVS
	db 16
	dw CROCONAW
	db 1 ;male
	dw BITE, LEER, WATER_GUN, MUD_SLAP
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (7) burned tower
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 18
	dw GASTLY
	db 0 ;female
	dw SMOG, CURSE, CONFUSE_RAY, NIGHT_SHADE
	dw FEMALE_DVS
	db 20
	dw SNEASEL
	db 1 ;male
	dw LEER, ICE_PUNCH, QUICK_ATTACK, FURY_CUTTER
	dw MALE_DVS
	db 20
	dw ZUBAT
	db 1 ;male
	dw BITE, SUPERSONIC, POISON_FANG, MEGA_DRAIN
	dw MALE_DVS
	db 24
	dw BAYLEEF
	db 0 ;female
	dw MEGA_DRAIN, SLEEP_POWDER, REFLECT, SLAM
	dw FEMALE_DVS
	db -1 

	next_list_item ; RIVAL1 (8) burned tower
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 18
	dw GASTLY
	db 0 ;female
	dw SMOG, CURSE, CONFUSE_RAY, NIGHT_SHADE
	dw FEMALE_DVS
	db 20
	dw SNEASEL
	db 1 ;male
	dw LEER, ICE_PUNCH, QUICK_ATTACK, FURY_CUTTER
	dw MALE_DVS
	db 20
	dw ZUBAT
	db 1 ;male
	dw BITE, SUPERSONIC, POISON_FANG, MEGA_DRAIN
	dw MALE_DVS
	db 24
	dw QUILAVA
	db 1 ;male
	dw FLAME_WHEEL, LEER, SMOKESCREEN, QUICK_ATTACK
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (9) burned tower
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 18
	dw GASTLY
	db 0 ;female
	dw SMOG, CURSE, CONFUSE_RAY, NIGHT_SHADE
	dw FEMALE_DVS
	db 20
	dw SNEASEL
	db 1 ;male
	dw LEER, ICE_PUNCH, QUICK_ATTACK, FURY_CUTTER
	dw MALE_DVS
	db 20
	dw ZUBAT
	db 1 ;male
	dw BITE, SUPERSONIC, POISON_FANG, MEGA_DRAIN
	dw MALE_DVS
	db 24
	dw CROCONAW
	db 1 ;male
	dw BITE, LEER, WATER_GUN, ICE_FANG
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (10) goldenrod
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 30
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 28
	dw MAGNEMITE
	db 1 ;male
	dw SWIFT, CHARGE_BEAM, SONICBOOM, THUNDER_WAVE
	dw MALE_DVS
	db 30
	dw HAUNTER
	db 0 ;female
	dw HYPNOSIS, CURSE, CONFUSE_RAY, SHADOW_PUNCH
	dw FEMALE_DVS
	db 32
	dw SNEASEL
	db 1 ;male
	dw PURSUIT, ICE_PUNCH, AGILITY, FURY_CUTTER
	dw MALE_DVS
	db 36
	dw MEGANIUM
	db 0 ;female
	dw PETAL_DANCE, GROWTH, LIGHT_SCREEN, SLAM
	dw FEMALE_DVS
	db -1 

	next_list_item ; RIVAL1 (11) goldenrod
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 30
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 28
	dw MAGNEMITE
	db 1 ;male
	dw SWIFT, CHARGE_BEAM, SONICBOOM, THUNDER_WAVE
	dw MALE_DVS
	db 30
	dw HAUNTER
	db 0 ;female
	dw HYPNOSIS, CURSE, CONFUSE_RAY, SHADOW_PUNCH
	dw FEMALE_DVS
	db 32
	dw SNEASEL
	db 1 ;male
	dw PURSUIT, ICE_PUNCH, AGILITY, FURY_CUTTER
	dw MALE_DVS
	db 36
	dw TYPHLOSION
	db 1 ;male
	dw FLAME_WHEEL, WILL_O_WISP, SWIFT, THUNDERPUNCH
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (12) goldenrod
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 30
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 28
	dw MAGNEMITE
	db 1 ;male
	dw SWIFT, CHARGE_BEAM, SONICBOOM, THUNDER_WAVE
	dw MALE_DVS
	db 30
	dw HAUNTER
	db 0 ;female
	dw HYPNOSIS, CURSE, CONFUSE_RAY, SHADOW_PUNCH
	dw FEMALE_DVS
	db 32
	dw SNEASEL
	db 1 ;male
	dw PURSUIT, ICE_PUNCH, AGILITY, FURY_CUTTER
	dw MALE_DVS
	db 36
	dw FERALIGATR
	db 1 ;male
	dw SURF, ICE_FANG, SCARY_FACE, SLASH
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (13) victory road
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 34
	dw WEAVILE
	db 1 ;male
	dw PURSUIT, ICE_PUNCH, AGILITY, METAL_CLAW
	dw MALE_DVS
	db 36
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 35
	dw MAGNETON
	db 1 ;male
	dw CHARGE_BEAM, SWIFT, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	db 35
	dw HAUNTER
	db 0 ;female
	dw MEAN_LOOK, CURSE, CONFUSE_RAY, SHADOW_BALL
	dw FEMALE_DVS
	db 34
	dw SEADRA
	db 1 ;male
	dw TWISTER, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	db 38
	dw MEGANIUM
	db 0 ;female
	dw PETAL_DANCE, GROWTH, LIGHT_SCREEN, SLAM
	dw FEMALE_DVS
	db -1 

	next_list_item ; RIVAL1 (14) victory road
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 34
	dw WEAVILE
	db 1 ;male
	dw PURSUIT, ICE_PUNCH, AGILITY, METAL_CLAW
	dw MALE_DVS
	db 36
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 35
	dw MAGNETON
	db 1 ;male
	dw CHARGE_BEAM, SWIFT, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	db 35
	dw HAUNTER
	db 0 ;female
	dw MEAN_LOOK, CURSE, CONFUSE_RAY, SHADOW_BALL
	dw FEMALE_DVS
	db 34
	dw SEADRA
	db 1 ;male
	dw TWISTER, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	db 38
	dw TYPHLOSION
	db 1 ;male
	dw FLAMETHROWER, WILL_O_WISP, THUNDERPUNCH, SWIFT
	dw MALE_DVS
	db -1 

	next_list_item ; RIVAL1 (15) victory road
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 34
	dw WEAVILE
	db 1 ;male
	dw PURSUIT, ICE_PUNCH, AGILITY, METAL_CLAW
	dw MALE_DVS
	db 36
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 35
	dw MAGNETON
	db 1 ;male
	dw CHARGE_BEAM, SWIFT, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	db 35
	dw HAUNTER
	db 0 ;female
	dw MEAN_LOOK, CURSE, CONFUSE_RAY, SHADOW_BALL
	dw FEMALE_DVS
	db 34
	dw SEADRA
	db 1 ;male
	dw TWISTER, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	db 38
	dw FERALIGATR
	db 1 ;male
	dw WATERFALL, ICE_FANG, SCARY_FACE, SLASH
	dw MALE_DVS
	db -1 


	end_list_items

PokemonProfGroup:

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 1 ;male
	db 10
	dw CYNDAQUIL
	db 1 ;male
	db 10
	dw TOTODILE
	db 0 ;female
	db -1 

	next_list_item ; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 1 ;male
	db 30
	dw QUILAVA
	db 1 ;male
	db 30
	dw CROCONAW
	db 0 ;female
	db -1 

	next_list_item ; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 50
	dw MEGANIUM
	db 1 ;male
	db 50
	dw TYPHLOSION
	db 1 ;male
	db 50
	dw FERALIGATR
	db 0 ;female
	db -1 


	end_list_items

WillGroup:
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw XATU
	db SHARP_BEAK
	db 0 ;female
	dw AGILITY, RAZOR_WIND, CONFUSE_RAY, PSYCHIC_M
	dw FEMALE_DVS
	dw 40K,   0, 30K, 40K, 55K ; 165k
	;   hp, atk, def, spd, spc
	db 50
	dw WYRDEER
	db 1 ;male
	db TWISTEDSPOON
	dw THUNDER_WAVE, MIRROR_COAT, JUMP_KICK, PSYCHO_CUT
	dw MALE_DVS
	dw 25K, 45K, 20K, 40K, 35K ; 165k
	;   hp, atk, def, spd, spc
	db 50
	dw EXEGGUTOR
	db 1 ;male
	db SCOPE_LENS
	dw REFLECT, LEECH_SEED, RAZOR_LEAF, PSYCHIC_M
	dw MALE_DVS
	dw 35K, 30K, 35K, 20K, 45K ; 165k
	;   hp, atk, def, spd, spc
	db 50
	dw SLOWKING
	db 1 ;male
	db LEFTOVERS
	dw WATER_PULSE, AMNESIA, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 50K,   0, 50K, 20K, 45K ; 165k
	;   hp, atk, def, spd, spc
	db 50
	dw ESPEON
	db 0 ;female
	db PECHA_BERRY
	dw CALM_MIND, SHADOW_BALL, MORNING_SUN, PSYBEAM
	dw FEMALE_DVS
	dw 30K,   0, 30K, 50K, 55K ; 165k
	;   hp, atk, def, spd, spc
	db 55
	dw ARTICUNO_GALARIAN
	db 1 ;male
	db NEVERMELTICE
	dw HYPNOSIS, ICE_BEAM, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 30K,   0, 30K, 40K, 45K ; 145k
	;   hp, atk, def, spd, spc
	db -1 
	
	next_list_item ; WILL (2)
	db "WILL@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 65
	dw XATU
	db 0 ;female
	db SHARP_BEAK
	dw AGILITY, RAZOR_WIND, CONFUSE_RAY, PSYCHIC_M
	dw FEMALE_DVS
	dw 40K,   0, 30K, 40K, 55K ; 245k
	;   hp, atk, def, spd, spc
	db 65
	dw WYRDEER
	db 1 ;male
	db TWISTEDSPOON
	dw THUNDER_WAVE, MIRROR_COAT, JUMP_KICK, PSYCHO_CUT
	dw MALE_DVS
	dw 25K, 45K, 20K, 40K, 35K ; 245k
	;   hp, atk, def, spd, spc
	db 65
	dw EXEGGUTOR
	db 1 ;male
	db SCOPE_LENS
	dw REFLECT, LEECH_SEED, RAZOR_LEAF, PSYCHIC_M
	dw MALE_DVS
	dw 35K, 30K, 35K, 20K, 45K ; 245k
	;   hp, atk, def, spd, spc
	db 65
	dw SLOWKING
	db 1 ;male
	db LEFTOVERS
	dw WATER_PULSE, AMNESIA, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 50K,   0, 50K, 20K, 45K ; 245k
	;   hp, atk, def, spd, spc
	db 65
	dw ESPEON
	db 0 ;female
	db PECHA_BERRY
	dw CALM_MIND, SHADOW_BALL, MORNING_SUN, PSYBEAM
	dw FEMALE_DVS
	dw 30K,   0, 30K, 50K, 55K ; 245k
	;   hp, atk, def, spd, spc
	db 70
	dw ARTICUNO_GALARIAN
	db 1 ;male
	db NEVERMELTICE
	dw HYPNOSIS, ICE_BEAM, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 30K,   0, 30K, 40K, 45K ; 215k
	;   hp, atk, def, spd, spc
	db -1


	end_list_items

	
SECTION "Enemy Trainer Parties 2", ROMX

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw ARIADOS
	db 1 ;male
	db QUICK_CLAW
	dw TOXIC, MEGAHORN, POISON_JAB, DOUBLE_TEAM
	dw MALE_DVS
	dw 20K, 55K, 30K, 45K, 30K ; 180k
	;   hp, atk, def, spd, spc
	db 50
	dw VICTREEBEL
	db 0 ;female
	db MIRACLE_SEED
	dw EFFECT_SPORE, LEECH_SEED, SLUDGE_BOMB, LEAF_BLADE
	dw FEMALE_DVS
	dw 30K, 40K, 40K, 20K, 40K ; 170k
	;   hp, atk, def, spd, spc
	db 50
	dw SCIZOR
	db 1 ;male
	db SMOKE_BALL
	dw DOUBLE_TEAM, X_SCISSOR, STEEL_WING, TOXIC
	dw MALE_DVS
	dw 20K, 40K, 25K, 65K, 20K ; 170k
	;   hp, atk, def, spd, spc
	db 50
	dw QWILFISH
	db 1 ;male
	db POISON_BARB
	dw SPIKES, DOUBLE_TEAM, SLUDGE_BOMB, SELFDESTRUCT
	dw MALE_DVS
	dw 60K, 40K, 40K, 20K, 30K ; 190k
	;   hp, atk, def, spd, spc
	db 50
	dw VENOMOTH
	db 0 ;female
	db BRIGHTPOWDER
	dw HYPNOSIS, SILVER_WIND, PSYCHIC_M, GIGA_DRAIN
	dw FEMALE_DVS
	dw 40K,   0, 25K, 45K, 60K ; 170k
	;   hp, atk, def, spd, spc
	db 55
	dw CROBAT
	db 1 ;male
	db KINGS_ROCK
	dw DOUBLE_TEAM, LEECH_LIFE, POISON_FANG, CONFUSE_RAY
	dw MALE_DVS
	dw 20K, 55K, 20K, 50K, 25K ; 170k
	;   hp, atk, def, spd, spc
	db -1

	next_list_item ; KOGA (2)
	db "KOGA@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 65
	dw ARIADOS
	db 1 ;male
	db QUICK_CLAW
	dw TOXIC, MEGAHORN, POISON_JAB, DOUBLE_TEAM
	dw MALE_DVS
	dw 20K, 55K, 30K, 45K, 30K ; 270k
	;   hp, atk, def, spd, spc
	db 65
	dw VICTREEBEL
	db 0 ;female
	db MIRACLE_SEED
	dw EFFECT_SPORE, LEECH_SEED, SLUDGE_BOMB, GIGA_DRAIN
	dw FEMALE_DVS
	dw 30K, 40K, 40K, 20K, 40K ; 255k
	;   hp, atk, def, spd, spc
	db 65
	dw SCIZOR
	db 1 ;male
	db SMOKE_BALL
	dw DOUBLE_TEAM, X_SCISSOR, STEEL_WING, TOXIC
	dw MALE_DVS
	dw 20K, 40K, 25K, 65K, 20K ; 255k
	;   hp, atk, def, spd, spc
	db 65
	dw QWILFISH
	db 1 ;male
	db POISON_BARB
	dw SPIKES, DOUBLE_TEAM, SLUDGE_BOMB, SELFDESTRUCT
	dw MALE_DVS
	dw 60K, 40K, 40K, 20K, 30K ; 285k
	;   hp, atk, def, spd, spc
	db 65
	dw VENOMOTH
	db 0 ;female
	db BRIGHTPOWDER
	dw HYPNOSIS, SILVER_WIND, PSYCHIC_M, GIGA_DRAIN
	dw FEMALE_DVS
	dw 40K,   0, 25K, 45K, 60K ; 255k
	;   hp, atk, def, spd, spc
	db 70
	dw CROBAT
	db 1 ;male
	db KINGS_ROCK
	dw DOUBLE_TEAM, LEECH_LIFE, POISON_FANG, CONFUSE_RAY
	dw MALE_DVS
	dw 20K, 55K, 20K, 50K, 25K ; 255k
	;   hp, atk, def, spd, spc
	db -1


	end_list_items

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw ONIX
	db 1 ;male
	db SOFT_SAND
	dw DRAGON_DANCE, EARTHQUAKE, SLAM, ROCK_SLIDE
	dw MALE_DVS
	dw 40K, 45K, 40K, 40K, 30K ; 195k
	;   hp, atk, def, spd, spc
	db 50
	dw HITMONLEE
	db 1 ;male
	db KINGS_ROCK
	dw SWAGGER, MEGA_KICK, JUMP_KICK, LASER_FOCUS
	dw MALE_DVS
	dw 20K, 45K, 45K, 30K, 35K ; 175k
	;   hp, atk, def, spd, spc
	db 50
	dw HITMONCHAN
	db 1 ;male
	db RAWST_BERRY
	dw THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, POWERUPPUNCH
	dw MALE_DVS
	dw 20K, 45K, 25K, 45K, 40K ; 175k
	;   hp, atk, def, spd, spc
	db 50
	dw RHYDON
	db 1 ;male
	db HARD_STONE
	dw COUNTER, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
	dw MALE_DVS
	dw 60K, 45K, 25K, 20K, 25K ; 175k
	;   hp, atk, def, spd, spc
	db 50
	dw PRIMEAPE
	db 1 ;male
	db POLKADOT_BOW
	dw SUBMISSION, POWERUPPUNCH, SCREECH, THRASH
	dw MALE_DVS
	dw 40K, 40K, 30K, 35K, 30K ; 175k
	;   hp, atk, def, spd, spc
	db 55
	dw MACHAMP
	db 1 ;male
	db BLACKBELT_I
	dw ROCK_SLIDE, ENDURE, POWERUPPUNCH, DYNAMICPUNCH
	dw MALE_DVS
	dw 35K, 45K, 40K, 35K, 20K ; 175k
	;   hp, atk, def, spd, spc
	db -1 
	
	next_list_item ; BRUNO (2)
	db "BRUNO@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 65
	dw ONIX
	db 1 ;male
	db SOFT_SAND
	dw DRAGON_DANCE, EARTHQUAKE, SLAM, ROCK_SLIDE
	dw MALE_DVS
	dw 40K, 45K, 40K, 40K, 30K ; 290k
	;   hp, atk, def, spd, spc
	db 65
	dw HITMONLEE
	db 1 ;male
	db KINGS_ROCK
	dw SWAGGER, MEGA_KICK, JUMP_KICK, LASER_FOCUS
	dw MALE_DVS
	dw 20K, 45K, 45K, 30K, 35K ; 260k
	;   hp, atk, def, spd, spc
	db 65
	dw HITMONCHAN
	db 1 ;male
	db RAWST_BERRY
	dw THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, POWERUPPUNCH
	dw MALE_DVS
	dw 20K, 45K, 25K, 45K, 40K ; 260k
	;   hp, atk, def, spd, spc
	db 65
	dw RHYDON
	db 1 ;male
	db HARD_STONE
	dw COUNTER, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
	dw MALE_DVS
	dw 60K, 45K, 25K, 20K, 25K ; 260k
	;   hp, atk, def, spd, spc
	db 65
	dw PRIMEAPE
	db 1 ;male
	db POLKADOT_BOW
	dw SUBMISSION, POWERUPPUNCH, SCREECH, THRASH
	dw MALE_DVS
	dw 40K, 40K, 30K, 35K, 30K ; 260k
	;   hp, atk, def, spd, spc
	db 70
	dw MACHAMP
	db 1 ;male
	db BLACKBELT_I
	dw ROCK_SLIDE, ENDURE, POWERUPPUNCH, DYNAMICPUNCH
	dw MALE_DVS
	dw 35K, 45K, 40K, 35K, 20K ; 260k
	;   hp, atk, def, spd, spc
	db -1


	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw UMBREON
	db 1 ;male
	db LUM_BERRY
	dw MOONLIGHT, CONFUSE_RAY, FAINT_ATTACK, CURSE
	dw MALE_DVS
	dw 50K, 25K, 30K, 35K, 40K ; 180k
	;   hp, atk, def, spd, spc
	db 50
	dw VILEPLUME
	db 0 ;female
	db LEFTOVERS
	dw TOXIC, SLUDGE_BOMB, MOONLIGHT, GIGA_DRAIN
	dw SHINY_F_DVS
	dw 45K,   0, 35K, 40K, 60K ; 180k
	;   hp, atk, def, spd, spc
	db 50
	dw HOUNDOOM
	db 1 ;male
	db CHARCOAL
	dw HEX, WILL_O_WISP, FLAMETHROWER, DARK_PULSE
	dw MALE_DVS
	dw 45K,   0, 35K, 50K, 50K ; 180k
	;   hp, atk, def, spd, spc
	db 50
	dw ARBOK_DARK
	db 1 ;male
	db POISON_BARB
	dw GLARE, POISON_JAB, CRUNCH, EARTHQUAKE
	dw MALE_DVS
	dw 40K, 50K, 35K, 40K, 25K ; 190k
	;   hp, atk, def, spd, spc
	db 50
	dw HONCHKROW
	db 1 ;male
	db NO_ITEM
	dw SKY_ATTACK, SWAGGER, THIEF, DARK_PULSE
	dw MALE_DVS
	dw 35K, 45K, 30K, 30K, 40K ; 180k
	;   hp, atk, def, spd, spc
	db 55
	dw TYRANITAR
	db 0 ;female
	db BLACKGLASSES
	dw CRUNCH, ROCK_SLIDE, DRAGON_DANCE, SHADOW_RUSH
	dw FEMALE_DVS
	dw 30K, 50K, 25K, 45K, 30K ; 180k
	;   hp, atk, def, spd, spc
	db -1 
	
	next_list_item ; KAREN (2)
	db "KAREN@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw UMBREON
	db 1 ;male
	db LUM_BERRY
	dw MOONLIGHT, CONFUSE_RAY, FAINT_ATTACK, CURSE
	dw MALE_DVS
	dw 50K, 25K, 30K, 35K, 40K ; 270k
	;   hp, atk, def, spd, spc
	db 50
	dw VILEPLUME
	db 0 ;female
	db LEFTOVERS
	dw TOXIC, SLUDGE_BOMB, MOONLIGHT, GIGA_DRAIN
	dw SHINY_F_DVS
	dw 45K,   0, 35K, 40K, 60K ; 270k
	;   hp, atk, def, spd, spc
	db 50
	dw HOUNDOOM
	db 1 ;male
	db CHARCOAL
	dw HEX, WILL_O_WISP, FLAMETHROWER, DARK_PULSE
	dw MALE_DVS
	dw 45K,   0, 35K, 50K, 50K ; 270k
	;   hp, atk, def, spd, spc
	db 50
	dw ARBOK_DARK
	db 1 ;male
	db POISON_BARB
	dw GLARE, POISON_JAB, CRUNCH, EARTHQUAKE
	dw MALE_DVS
	dw 40K, 50K, 35K, 40K, 25K ; 285k
	;   hp, atk, def, spd, spc
	db 50
	dw HONCHKROW
	db 1 ;male
	db NO_ITEM
	dw SKY_ATTACK, SWAGGER, THIEF, DARK_PULSE
	dw MALE_DVS
	dw 35K, 45K, 30K, 30K, 40K ; 270k
	;   hp, atk, def, spd, spc
	db 55
	dw TYRANITAR
	db 0 ;female
	db BLACKGLASSES
	dw CRUNCH, ROCK_SLIDE, DRAGON_DANCE, SHADOW_RUSH
	dw FEMALE_DVS
	dw 30K, 50K, 25K, 45K, 30K ; 270k
	;   hp, atk, def, spd, spc
	db -1


	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw GYARADOS
	db 0 ;female
	db DRAGON_FANG
	dw RAIN_DANCE, WATERFALL, OUTRAGE, HYPER_BEAM
	dw FEMALE_DVS
	dw 30K, 40K, 25K, 50K, 40K ; 185k
	;   hp, atk, def, spd, spc
	db 55
	dw DRAGONITE
	db 1 ;male
	db KINGS_ROCK
	dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	dw MALE_DVS
	dw 45K, 20K, 45K, 35K, 40K ; 185k
	;   hp, atk, def, spd, spc
	db 50
	dw AERODACTYL
	db 1 ;male
	db FOCUS_BAND
	dw WING_ATTACK, DRAGON_CLAW, ROCK_SLIDE, HYPER_BEAM
	dw SHINY_M_DVS
	dw 20K, 45K, 40K, 60K, 20K ; 185k
	;   hp, atk, def, spd, spc
	db 55
	dw DRAGONITE
	db 0 ;female
	db NEVERMELTICE
	dw SAFEGUARD, DRAGON_CLAW, ICE_BEAM, HYPER_BEAM
	dw FEMALE_DVS
	dw 55K, 25K, 25K, 30K, 50K ; 185k
	;   hp, atk, def, spd, spc
	db 50
	dw CHARIZARD
	db 1 ;male
	db CHARCOAL
	dw SUNNY_DAY, DRAGONBREATH, FLAMETHROWER, HYPER_BEAM
	dw MALE_DVS
	dw 30K, 20K, 35K, 55K, 45K ; 185k
	;   hp, atk, def, spd, spc
	db 55
	dw DRAGONITE
	db 1 ;male
	db PERSIM_BERRY
	dw FIRE_PUNCH, EXTREMESPEED, OUTRAGE, HYPER_BEAM
	dw MALE_DVS
	dw 30K, 55K, 30K, 40K, 30K ; 185k
	;   hp, atk, def, spd, spc
	db -1 
	
	next_list_item ; CHAMPION (2)
	db "LANCE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 65
	dw GYARADOS
	db 0 ;female
	db DRAGON_FANG
	dw RAIN_DANCE, WATERFALL, OUTRAGE, HYPER_BEAM
	dw FEMALE_DVS
	dw 40K, 65K, 55K, 65K, 50K ; 275k
	;   hp, atk, def, spd, spc
	db 70
	dw DRAGONITE
	db 1 ;male
	db KINGS_ROCK
	dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	dw MALE_DVS
	dw 65K, 15K, 65K, 65K, 65K ; 275k
	;   hp, atk, def, spd, spc
	db 65
	dw AERODACTYL
	db 1 ;male
	db FOCUS_BAND
	dw WING_ATTACK, DRAGON_CLAW, ROCK_SLIDE, HYPER_BEAM
	dw SHINY_M_DVS
	dw 40K, 65K, 65K, 65K, 40K ; 275k
	;   hp, atk, def, spd, spc
	db 70
	dw DRAGONITE
	db 0 ;female
	db NEVERMELTICE
	dw SAFEGUARD, DRAGON_CLAW, ICE_BEAM, HYPER_BEAM
	dw FEMALE_DVS
	dw 65K, 35K, 65K, 45K, 65K ; 275k
	;   hp, atk, def, spd, spc
	db 65
	dw CHARIZARD
	db 1 ;male
	db CHARCOAL
	dw SUNNY_DAY, DRAGONBREATH, SACRED_FIRE, HYPER_BEAM
	dw MALE_DVS
	dw 45K, 50K, 50K, 65K, 65K ; 275k
	;   hp, atk, def, spd, spc
	db 70
	dw DRAGONITE
	db 1 ;male
	db PERSIM_BERRY
	dw FIRE_PUNCH, EXTREMESPEED, OUTRAGE, HYPER_BEAM
	dw MALE_DVS
	dw 50K, 65K, 60K, 65K, 35K ; 275k
	;   hp, atk, def, spd, spc
	db -1


	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw RHYHORN
	db 0 ;female
	db QUICK_CLAW
	dw SWORDS_DANCE, TAKE_DOWN, ROCK_SLIDE, MEGAHORN
	dw FEMALE_DVS
	dw 35K, 40K, 25K, 45K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw GOLEM
	db 1 ;male
	db SOFT_SAND
	dw SANDSTORM, BULLDOZE, SELFDESTRUCT, EARTHQUAKE
	dw MALE_DVS
	dw 30K, 40K, 30K, 20K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw OMASTAR
	db 1 ;male
	db NEVERMELTICE
	dw ANCIENTPOWER, SURF, ICE_BEAM, HAZE
	dw MALE_DVS
	dw 30K,   0, 60K, 10K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw GOLBAT
	db 1 ;male
	db LEFTOVERS
	dw TOXIC, PROTECT, LEECH_LIFE, POISON_FANG
	dw MALE_DVS
	dw 40K, 35K, 40K, 20K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw KABUTOPS
	db 1 ;male
	db MYSTIC_WATER
	dw RAZOR_SHELL, ROCK_SLIDE, ENDURE, FLAIL
	dw MALE_DVS
	dw 15K, 60K, 15K, 50K, 10K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw ONIX
	db 1 ;male
	db HARD_STONE
	dw SCREECH, SLAM, ROCK_SLIDE, EARTHQUAKE
	dw MALE_DVS
	dw 50K, 45K, 35K, 30K, 10K ; 170k
	;   hp, atk, def, spd, spc
	db -1 


	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw SEAKING
	db 0 ;female
	db MYSTIC_WATER
	dw AGILITY, MEGAHORN, WATERFALL, HORN_DRILL
	dw FEMALE_DVS
	dw 20K, 50K, 25K, 45K, 10K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw GOLDUCK
	db 1 ;male
	db TWISTEDSPOON
	dw SURF, CALM_MIND, MUD_SHOT, PSYCHIC_M
	dw MALE_DVS
	dw 30K,   0, 30K, 45K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw VAPOREON
	db 0 ;female
	db PECHA_BERRY
	dw ICE_BEAM, WATER_PULSE, RAIN_DANCE, RECOVER
	dw FEMALE_DVS
	dw 55K,   0, 30K, 20K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw LAPRAS
	db 1 ;male
	db NEVERMELTICE
	dw CONFUSE_RAY, THUNDERBOLT, BLIZZARD, SURF
	dw MALE_DVS
	dw 45K,   0, 30K, 20K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw SEADRA
	db 0 ;female
	db KINGS_ROCK
	dw AGILITY, OCTAZOOKA, TWISTER, ICE_BEAM
	dw FEMALE_DVS
	dw 25K,   0, 35K, 40K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw STARMIE
	db 1 ;male
	db LEFTOVERS
	dw SURF, CONFUSE_RAY, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 20K,   0, 15K, 60K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db -1 


	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw ELECTRODE
	db 1 ;male
	db POLKADOT_BOW
	dw LIGHT_SCREEN, THUNDERBOLT, SWIFT, SELFDESTRUCT
	dw MALE_DVS
	dw 15K, 35K, 20K, 55K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw PIKACHU
	db 0 ;female
	db LIGHT_BALL
	dw RAIN_DANCE, THUNDER, DOUBLE_TEAM, SURF
	dw FEMALE_DVS
	dw 35K,   0, 25K, 45K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MAGNETON
	db 1 ;male
	db METAL_COAT
	dw LASER_FOCUS, HIDDEN_POWER, FLASH_CANNON, ZAP_CANNON
	dw MALE_DVS
	dw 20K,   0, 35K, 35K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw JOLTEON
	db 1 ;male
	db BRIGHTPOWDER
	dw THUNDER_WAVE, AURA_SPHERE, THUNDERBOLT, EXTREMESPEED
	dw MALE_DVS
	dw 20K,   0, 20K, 60K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw ELECTABUZZ
	db 1 ;male
	db MAGNET
	dw SCREECH, THUNDERPUNCH, CROSS_CHOP, THUNDER
	dw MALE_DVS
	dw 20K, 45K, 25K, 20K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw RAICHU
	db 1 ;male
	db KINGS_ROCK
	dw VOLT_TACKLE, JUMP_KICK, AGILITY, SLAM
	dw MALE_DVS
	dw 15K, 55K, 20K, 45K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db -1 


	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 1 ;male
	db 22
	dw KOFFING
	db 1 ;male
	db -1 

	next_list_item ; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db 1 ;male
	db -1 

	next_list_item ; SCIENTIST (3)
	db "JED@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 1 ;male
	db 20
	dw MAGNEMITE
	db 1 ;male
	db 20
	dw MAGNEMITE
	db 1 ;male
	db -1 

	next_list_item ; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 1 ;male
	db 27
	dw MAGNEMITE
	db 1 ;male
	db 27
	dw MAGNEMITE
	db 1 ;male
	db -1 

	next_list_item ; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	db 1 ;male
	dw PSYBEAM, CONVERSION, RECOVER, TRI_ATTACK
	db -1 


	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw TANGELA
	db 0 ;female
	db HARD_STONE
	dw EFFECT_SPORE, ANCIENTPOWER, GIGA_DRAIN, AMNESIA
	dw FEMALE_DVS
	dw 45K,   0, 40K, 25K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw BELLOSSOM
	db 0 ;female
	db FOCUS_BAND
	dw SUNNY_DAY, MOONLIGHT, SOLARBEAM, HIDDEN_POWER ;fire
	dw F_HP_FIRE
	dw 20K,   0, 20K, 60K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw LEAFEON
	db 1 ;male
	db PINK_BOW
	dw GROWTH, LEAF_BLADE, AURA_SPHERE, TAKE_DOWN
	dw MALE_DVS
	dw 25K, 40K, 30K, 30K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw VICTREEBEL
	db 0 ;female
	db LEFTOVERS
	dw SUNNY_DAY, PROTECT, GIGA_DRAIN, TOXIC
	dw FEMALE_DVS
	dw 35K,   0, 35K, 45K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw VENUSAUR
	db 0 ;female
	db PERSIM_BERRY
	dw MORNING_SUN, EARTHQUAKE, PETAL_DANCE, SLUDGE_BOMB
	dw FEMALE_DVS
	dw 25K, 40K, 25K, 20K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw VILEPLUME
	db 0 ;female
	db MIRACLE_SEED
	dw GROWTH, SPORE, GIGA_DRAIN, SLUDGE_BOMB
	dw FEMALE_DVS
	dw 25K,   0, 25K, 50K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db -1 
	
	
	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 4
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db 2
	dw PIDGEY
	db 1 ;male
	db 4
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 6
	dw RATTATA
	db 1 ;male
	db 8
	dw ZUBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 10
	dw WOOPER
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 1 ;male
	db 10
	dw SANDSHREW
	db 1 ;male
	db 8
	dw SPEAROW
	db 1 ;male
	db 8
	dw SPEAROW
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 17 
	dw SLOWPOKE
	db 1 ;male
	db -1 

	next_list_item ; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 21
	dw RATICATE
	db 1 ;male
	dw TAIL_WHIP, QUICK_ATTACK, SUPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 35
	dw FEAROW
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 33
	dw RATICATE
	db 1 ;male
	db 33
	dw ARBOK
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 33
	dw SANDSLASH
	db 1 ;male
	db 33
	dw CROBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 30
	dw RATICATE
	db 1 ;male
	dw TAIL_WHIP, QUICK_ATTACK, SUPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 37
	dw RATICATE
	db 1 ;male
	dw HYPER_BEAM, QUICK_ATTACK, SUPER_FANG, PURSUIT
	db -1 ; end


	end_list_items

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 1 ;male
	db 15
	dw VOLTORB
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 27
	dw VOLTORB
	db 1 ;male
	db 27
	dw MAGNEMITE
	db 1 ;male
	db 31
	dw VOLTORB
	db 1 ;male
	db 31
	dw MAGNETON
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 16 
	dw SUNFLORA
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 1 ;male
	db 31
	dw WEEPINBELL
	db 1 ;male
	db 33
	dw VICTREEBEL
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 31
	dw SCYTHER
	db 1 ;male
	db 31
	dw ELECTABUZZ
	db 1 ;male
	db 31
	dw MAGMAR
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 1 ;male
	db 34
	dw ALAKAZAM
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 33
	dw SKIPLOOM
	db 1 ;male
	db 33
	dw VAPOREON
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 1 ;male
	db 27
	dw PARAS
	db 1 ;male
	db 27
	dw POLIWHIRL
	db 1 ;male
	db 35
	dw DITTO
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw DROWZEE
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 1 ;male
	db 32
	dw EXEGGUTOR
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 1 ;male
	db 32
	dw DITTO
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 14
	dw ODDISH
	db 1 ;male
	db 17
	dw VOLTORB
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 1 ;male
	db 31
	dw ELECTRODE
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 17
	dw SUNFLORA
	db 1 ;male
	db 17
	dw YANMA
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 20
	dw NATU
	db 1 ;male
	db 22
	dw SUNFLORA
	db 1 ;male
	db 20
	dw QUAGSIRE
	db 1 ;male
	db 25
	dw YANMA
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw DROWZEE
	db 1 ;male
	db 19 
	dw MAGNEMITE
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 27
	dw HYPNO
	db 1 ;male
	db 31
	dw MAGNETON
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 1 ;male
	db 33
	dw GROWLITHE
	db 1 ;male
	db 33
	dw ELECTRODE
	db 1 ;male
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 35
	dw ELECTRODE
	db 1 ;male
	dw SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 35
	dw GROWLITHE
	db 1 ;male
	dw SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 37
	dw VILEPLUME
	db 1 ;male
	dw SOLARBEAM, SLEEP_POWDER, SLUDGE, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw NATU
	db 1 ;male
	db 27
	dw SUNFLORA
	db 1 ;male
	db 30
	dw QUAGSIRE
	db 1 ;male
	db 30
	dw YANMA
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 35
	dw XATU
	db 1 ;male	
	dw PECK, NIGHT_SHADE, SWIFT, CONFUSION
	db 32
	dw SUNFLORA
	db 1 ;male
	dw SUNNY_DAY, PETAL_DANCE, GROWTH, MEGA_DRAIN
	db 32
	dw YANMA
	db 1 ;male
	dw QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 35
	dw QUAGSIRE
	db 1 ;male
	dw TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 30
	dw HYPNO
	db 1 ;male
	db 34
	dw MAGNETON
	db 1 ;male
	db -1 

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 34
	dw HYPNO
	db 1 ;male
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, SMOG
	db 38
	dw MAGNETON
	db 1 ;male
	dw ZAP_CANNON, THUNDER_WAVE, LASER_FOCUS, SWIFT
	db -1 
	
	
	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 7
	dw PIDGEY
	db 0 ;female
	db 7
	dw PIDGEY
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 0 ;female
	db 14
	dw PIDGEOTTO
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 17
	dw PIDGEY
	db 0 ;female
	db 15
	dw PIDGEY
	db 1 ;male
	db 19
	dw PIDGEY
	db 0 ;female
	db 15
	dw PIDGEY
	db 1 ;male
	db 15
	dw PIDGEY
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_NORMAL
	db 15
	dw DODUO
	db 0 ;female
	db 16
	dw DODUO
	db 0 ;female
	db 17
	dw DODUO
	db 1 ;male
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 18
	dw SPEAROW
	db 0 ;female
	db 20
	dw FEAROW
	db 0 ;female
	db 18
	dw SPEAROW
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 25
	dw PIDGEOTTO
	db 0 ;female
	db 25
	dw PIDGEOTTO
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 0 ;female
	db 34
	dw PIDGEOT
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 0 ;female
	db 35
	dw FEAROW
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 0 ;female
	db 28
	dw DODUO
	db 0 ;female
	db 32
	dw DODRIO
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 36
	dw FARFETCH_D
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 0 ;female
	db 6
	dw PIDGEY
	db 0 ;female
	db 8
	dw SPEAROW
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 0 ;female
	db 32
	dw FEAROW
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	db 0 ;female
	dw LEAF_BLADE, PROTECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 0 ;female
	db 32
	dw PIDGEOTTO
	db 0 ;female
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	db 0 ;female
	dw TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	db 1 ;male
	dw SWIFT, PROTECT, STEEL_WING, FLY
	db -1 ; end


	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "CARRIE@", TRAINERTYPE_MOVES
	db 18
	dw SNUBBULL
	db 0 ;female
	dw SCARY_FACE, CHARM, BITE, LICK
	db -1 ; end

	next_list_item ; LASS (2)
	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 15
	dw JIGGLYPUFF
	db 0 ;female
	db 15
	dw JIGGLYPUFF
	db 0 ;female
	db 15
	dw JIGGLYPUFF
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (3)
	db "ALICE@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 0 ;female
	db 34
	dw ARBOK
	db 0 ;female
	db 30
	dw GLOOM
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (4)
	db "KRISE@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 0 ;female
	db 15
	dw CUBONE
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (5)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (6)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 30
	dw BULBASAUR
	db 0 ;female
	db 32
	dw IVYSAUR
	db 1 ;male
	db 34
	dw VENUSAUR
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 0 ;female
	db 31
	dw PIDGEOTTO
	db 0 ;female
	db 31
	dw VILEPLUME
	db 0 ;female
	db -1 

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 29
	dw PARAS
	db 0 ;female
	db 29
	dw PARAS
	db 0 ;female
	db 32
	dw PARASECT
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 0 ;female
	db 33
	dw HOPPIP
	db 0 ;female
	db 34
	dw JUMPLUFF
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (10)
	db "DANA@", TRAINERTYPE_MOVES
	db 18
	dw FLAAFFY
	db 0 ;female
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 18
	dw PSYDUCK
	db 0 ;female
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 30
	dw WIGGLYTUFF
	db 0 ;female
	db 34
	dw GRANBULL
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (12)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (13)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db 0 ;female
	db -1 ; end

	next_list_item ; LASS (14)
	db "DANA@", TRAINERTYPE_MOVES
	db 21
	dw FLAAFFY
	db 0 ;female
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21
	dw PSYDUCK
	db 0 ;female
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 29
	dw PSYDUCK
	db 0 ;female
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 29
	dw AMPHAROS
	db 0 ;female
	dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, FIRE_PUNCH
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 32
	dw PSYDUCK
	db 0 ;female
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 32
	dw AMPHAROS
	db 0 ;female
	dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, FIRE_PUNCH
	db -1 ; end

	next_list_item ; LASS (17)
	db "DANA@", TRAINERTYPE_MOVES
	db 36
	dw AMPHAROS
	db 0 ;female
	dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, FIRE_PUNCH
	db 36
	dw GOLDUCK
	db 0 ;female
	dw DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end


	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw GLOOM
	db 1 ;male
	db POISON_BARB
	dw SPORE, SLUDGE, GIGA_DRAIN, MOONLIGHT
	dw MALE_DVS
	dw 45K,   0, 35K, 30K, 50K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw WEEZING
	db 1 ;male
	db CHARCOAL
	dw SMOKESCREEN, SLUDGE_BOMB, TOXIC, FLAMETHROWER
	dw MALE_DVS
	dw 40K,   0, 45K, 20K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw GOLBAT
	db 0 ;female
	db BRIGHTPOWDER
	dw DOUBLE_TEAM, POISON_FANG, CONFUSE_RAY, RAZOR_WIND
	dw FEMALE_DVS
	dw 15K, 35K, 15K, 55K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MUK
	db 1 ;male
	db LEFTOVERS
	dw SLUDGE_BOMB, ACID_ARMOR, DISABLE, FAINT_ATTACK
	dw MALE_DVS
	dw 35K, 35K, 30K, 10K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw ARBOK
	db 0 ;female
	db KINGS_ROCK
	dw GLARE, POISON_JAB, ATTRACT, CRUNCH
	dw FEMALE_DVS
	dw 30K, 50K, 25K, 25K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw VENOMOTH
	db 1 ;male
	db SILVERPOWDER
	dw SILVER_WIND, DOUBLE_TEAM, SLUDGE, PSYCHIC_M ;acid spray
	dw MALE_DVS
	dw 20K,   0, 20K, 50K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_MOVES
	db 26
	dw CHARMANDER
	db 1 ;male
	dw EMBER, SMOKESCREEN, METAL_CLAW, SCARY_FACE
	db 26
	dw SQUIRTLE
	db 1 ;male
	dw HARDEN, WATER_GUN, BITE, CURSE
	db 26
	dw BULBASAUR
	db 1 ;male
	dw LEECH_SEED, EFFECT_SPORE, SLEEP_POWDER, RAZOR_LEAF
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 24
	dw IVYSAUR
	db 1 ;male
	db 24
	dw CHARMELEON
	db 1 ;male
	db 24
	dw WARTORTLE
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 1 ;male
	db 34
	dw DRATINI
	db 1 ;male
	db 34
	dw DRATINI
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 1 ;male
	db 36
	dw SEADRA
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	db 1 ;male
	dw WRAP, TOXIC, SLUDGE, RAZOR_LEAF
	db 35
	dw KINGLER
	db 1 ;male
	dw BUBBLEBEAM, STOMP, X_SCISSOR, PROTECT
	db 35
	dw FLAREON
	db 1 ;male
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db 1 ;male
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db 1 ;male
	db KINGS_ROCK
	dw SURF, STOMP, X_SCISSOR, BLIZZARD
	db 39
	dw FLAREON
	db 1 ;male
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	db 1 ;male
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	db 1 ;male
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	db 1 ;male
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	db 1 ;male
	dw CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	db 1 ;male
	dw WRAP, TOXIC, SLUDGE, RAZOR_LEAF
	db 32
	dw KINGLER
	db 1 ;male
	dw BUBBLEBEAM, STOMP, X_SCISSOR, PROTECT
	db 32
	dw FLAREON
	db 1 ;male
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	db 1 ;male
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	db 1 ;male
	dw WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	db 1 ;male
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	db 1 ;male
	dw SAND_ATTACK, POISON_STING, SLASH, SWIFT
	db -1 ; end

	next_list_item ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 1 ;male
	db 10
	dw CHARMANDER
	db 1 ;male
	db 10
	dw SQUIRTLE
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 1 ;male
	db 10
	dw CHARMANDER
	db 1 ;male
	db 10
	dw SQUIRTLE
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 1 ;male
	db 10
	dw CHARMANDER
	db 1 ;male
	db 10
	dw SQUIRTLE
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 35
	dw FLAREON
	db 1 ;male
	db 35
	dw SKIPLOOM
	db 1 ;male
	db 35
	dw TAUROS
	db 1 ;male
	db -1 

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 1 ;male
	db 35
	dw CHARMELEON
	db 1 ;male
	db 35
	dw WARTORTLE
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 1 ;male
	db 14
	dw CHARMANDER
	db 1 ;male
	db 14
	dw SQUIRTLE
	db 1 ;male
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	db 1 ;male
	dw EMBER, SMOKESCREEN, METAL_CLAW, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	db 1 ;male
	dw WRAP, SURF, DRAGON_RAGE, SLAM
	db -1 ; end


	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 0 ;female
	db 22
	dw FLAREON
	db 0 ;female
	db 22
	dw VAPOREON
	db 0 ;female
	db 22
	dw JOLTEON
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 25
	dw SKIPLOOM
	db 0 ;female
	dw MORNING_SUN, EFFECT_SPORE, MEGA_DRAIN, LEECH_SEED
	db 25
	dw NINETALES
	db 0 ;female
	dw EMBER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 37
	dw SEADRA
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 0 ;female
	db 36
	dw DRAGONAIR
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 0 ;female
	db 28
	dw CLOYSTER
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 0 ;female
	db 24
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 0 ;female
	db 24
	dw WARTORTLE
	db 0 ;female
	db 24
	dw WARTORTLE
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	db 0 ;female
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	db 0 ;female
	dw BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	db 0 ;female
	dw STOMP, FIRE_SPIN, HORN_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 0 ;female
	db 33
	dw NIDOQUEEN
	db 0 ;female
	db 31
	dw STARMIE
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	db 0 ;female
	dw GROWL, LEECH_SEED, EFFECT_SPORE, RAZOR_LEAF
	db 32
	dw IVYSAUR
	db 0 ;female
	dw GROWL, LEECH_SEED, EFFECT_SPORE, RAZOR_LEAF
	db 32
	dw VENUSAUR
	db 1 ;male
	dw SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	db 0 ;female
	dw STOMP, FIRE_SPIN, HORN_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 0 ;female
	db 35
	dw STARMIE
	db 0 ;female
	db 35
	dw NINETALES
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 0 ;female
	db 38
	dw STARMIE
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	db 0 ;female
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw GLOOM
	db 0 ;female
	dw MEGA_DRAIN, EFFECT_SPORE, SLUDGE, SOLARBEAM
	db -1 

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 0 ;female
	db 26
	dw STARMIE
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db 0 ;female
	dw FOCUS_BAND, STOMP, FIRE_SPIN, HORN_ATTACK, FIRE_BLAST
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 0 ;female
	db 36
	dw NIDOQUEEN
	db 0 ;female
	db 34
	dw STARMIE
	db 0 ;female
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db 0 ;female
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db 0 ;female
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, SLAM
	db 38
	dw STARMIE
	db 0 ;female
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	db 0 ;female
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	db 0 ;female
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	db 0 ;female
	dw SWIFT, LEER, WATERFALL, TWISTER
	db -1 ; end
	
	next_list_item ; COOLTRAINERF (22)
	db "MAYA@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME
	db 50
	dw TYPHLOSION
	db 1 ;male
	dw FLAME_WHEEL, THUNDERPUNCH, FLAMETHROWER, EARTHQUAKE
	dw MALE_DVS
	db "QUIL@"
	db 50
	dw PIDGEOT
	db 0 ;female
	dw FLY, STEEL_WING, TAKE_DOWN, ROOST
	dw FEMALE_DVS
	db "MINA@"
	db 50
	dw BUTTERFREE
	db 0 ;female
	dw PSYBEAM, SILVER_WIND, MORNING_SUN, GIGA_DRAIN
	dw FEMALE_DVS
	db "WINGS@"
	db 50
	dw VICTREEBEL
	db 0 ;female
	dw GROWTH, RAZOR_LEAF, SLUDGE_BOMB, CUT
	dw FEMALE_DVS
	db "BELLA@"
	db 50
	dw QUAGSIRE
	db 0 ;female
	dw SURF, REST, SNORE, EARTHQUAKE
	dw FEMALE_DVS
	db "WOOPY@"
	db 50
	dw MACHAMP
	db 0 ;female
	dw STRENGTH, DYNAMICPUNCH, ICE_PUNCH, ROCK_SLIDE
	dw FEMALE_DVS
	db "MUSCLE@"
	db -1 ; end


	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 9
	dw SENTRET
	db 0 ;female
	db 13
	dw SENTRET
	db 0 ;female
	db 17
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_MOVES
	db 16
	dw MEOWTH
	db 0 ;female
	dw SCRATCH, GROWL, BITE, PAY_DAY
	db 16
	dw MEOWTH
	db 0 ;female
	dw SCRATCH, GROWL, BITE, SLASH
	db -1 ; end

	next_list_item ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 28
	dw VILEPLUME
	db 0 ;female
	db 34
	dw BUTTERFREE
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 0 ;female
	db 32
	dw SEEL
	db 0 ;female
	db 30
	dw MARILL
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 32
	dw PARAS
	db 0 ;female
	db 32
	dw EXEGGCUTE
	db 0 ;female
	db 35
	dw PARASECT
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db 0 ;female
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 17
	dw HOPPIP
	db 0 ;female
	dw MORNING_SUN, TAIL_WHIP, TACKLE, EFFECT_SPORE
	db 17
	dw SKIPLOOM
	db 0 ;female
	dw MORNING_SUN, TAIL_WHIP, TACKLE, EFFECT_SPORE
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 19
	dw CORSOLA
	db 0 ;female
	db -1 ; end


	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 1 ;male
	db 24
	dw MAROWAK
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	db 0 ;female
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORINA
	db 0 ;female
	db 16
	dw NIDORINO
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 19
	dw SLOWBRO
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 19
	dw LICKITUNG
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 19
	dw NIDOKING
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 1 ;male
	db 31
	dw RHYDON
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	db 0 ;female
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
	db 1 ;male
	dw RECOVER, PSYCHIC_M, CONVERSION, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 12
	dw LICKITUNG
	db 1 ;male
	dw LICK, SUPERSONIC, CUT, NO_MOVE
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 1 ;male
	db 10
	dw SLOWPOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 27
	dw RHYHORN
	db 1 ;male
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	db 0 ;female
	dw ROLLOUT, ATTRACT, TOXIC, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_NORMAL
	db 17
	dw NIDOKING
	db 1 ;male
	db 17
	dw NIDOQUEEN
	db 1 ;male
	db -1 ; end


	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 14
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 1 ;male
	db 9
	dw ZUBAT
	db 1 ;male
	db 9
	dw ZUBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 1 ;male
	db 24
	dw RATICATE
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw GRIMER
	db 1 ;male
	db 23
	dw GRIMER
	db 1 ;male
	db 25
	dw MUK
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw RATTATA
	db 1 ;male
	db 21
	dw RATTATA
	db 1 ;male
	db 23
	dw RATTATA
	db 1 ;male
	db 23
	dw RATTATA
	db 1 ;male
	db 23
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ZUBAT
	db 1 ;male
	db 26
	dw ZUBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (7)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 1 ;male
	db 23
	dw GRIMER
	db 1 ;male
	db 23
	dw ZUBAT
	db 1 ;male
	db 23
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (8)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw WEEZING
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (9)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 1 ;male
	db 26
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (10)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 1 ;male
	db 24
	dw GOLBAT
	db 1 ;male
	db 22
	dw GRIMER
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (11)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw MUK
	db 1 ;male
	db 23
	dw KOFFING
	db 1 ;male
	db 25
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (12)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 1 ;male
	db 24
	dw GOLBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 1 ;male
	db 23
	dw WEEZING
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (16)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 1 ;male
	db 16
	dw RATTATA
	db 1 ;male
	db 16
	dw RATTATA
	db 1 ;male
	db 16
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (17)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw GOLBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (18)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 1 ;male
	db 17
	dw ZUBAT
	db 1 ;male
	db 17
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (19)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw VENONAT
	db 1 ;male
	db 18
	dw VENONAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (20)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw DROWZEE
	db 1 ;male
	db 19
	dw ZUBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (21)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 1 ;male
	db 17
	dw GRIMER
	db 1 ;male
	db 18
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (22)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (23)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (24)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 1 ;male
	db 25
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 1 ;male
	db 24
	dw MUK
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (26)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 1 ;male
	db 15
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (27)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (28)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 19
	dw RATICATE
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (29)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw RATTATA
	db 1 ;male
	db 9
	dw RATTATA
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (30)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 1 ;male
	db 25
	dw GOLBAT
	db 1 ;male
	db 30
	dw ARBOK
	db 1 ;male
	db -1 ; end

	next_list_item ; GRUNTM (31)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 30
	dw GOLBAT
	db 1 ;male
	db -1 ; end


	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 18
	dw GROWLITHE
	db 1 ;male
	db 18
	dw GROWLITHE
	db 1 ;male
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 33
	dw PERSIAN
	db 0 ;female
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 1 ;male
	db 33
	dw FLAAFFY
	db 1 ;male
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db 1 ;male
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 20
	dw NOCTOWL
	db 1 ;male
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 28 
	dw SNEASEL
	db 0 ;female
	db -1 

	next_list_item ; SKIER (2)
	db "CLARISSA@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db 0 ;female
	db -1 


	end_list_items
	
TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	db 0 ;female
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 0 ;female
	db 36
	dw CUBONE
	db 0 ;female
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	db 0 ;female
	db -1 ; end


	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw KADABRA
	db 1 ;male
	db FOCUS_BAND
	dw THUNDER_WAVE, PSYBEAM, SHADOW_BALL, REFLECT
	dw MALE_DVS
	dw 20K,   0, 25K, 60K, 55K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw GOLDUCK
	db 0 ;female
	db MYSTIC_WATER
	dw PSYCHO_CUT, SURF, PSYCH_UP, LIGHT_SCREEN
	dw FEMALE_DVS
	dw 35K, 35K, 20K, 25K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw BUTTERFREE
	db 0 ;female
	db BRIGHTPOWDER
	dw SILVER_WIND, PSYBEAM, SAFEGUARD, MORNING_SUN
	dw FEMALE_DVS
	dw 30K,   0, 25K, 50K, 55K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw HAUNTER
	db 1 ;male
	db SPELL_TAG
	dw HYPNOSIS, SHADOW_BALL, DREAM_EATER, DESTINY_BOND
	dw MALE_DVS
	dw 25K,   0, 20K, 65K, 50K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw SLOWBRO
	db 1 ;male
	db LEFTOVERS
	dw AMNESIA, WATER_PULSE, RECOVER, PSYCHIC_M
	dw MALE_DVS
	dw 50K,   0, 45K, 10K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw ALAKAZAM
	db 1 ;male
	db TWISTEDSPOON
	dw CALM_MIND, AURA_SPHERE, PSYCHIC_M, RECOVER
	dw MALE_DVS
	dw 20K,   0, 15K, 55K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end


	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db 3
	dw CATERPIE
	db 1 ;male
	db 3
	dw CATERPIE
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_NORMAL
	db 32
	dw BEEDRILL
	db 1 ;male
	db 32
	dw BUTTERFREE
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 30
	dw BEEDRILL
	db 0 ;female
	db 30
	dw BEEDRILL
	db 0 ;female
	db 30
	dw BEEDRILL
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 2
	dw CATERPIE
	db 1 ;male
	db 2
	dw CATERPIE
	db 0 ;female
	db 3
	dw WEEDLE
	db 1 ;male
	db 2
	dw CATERPIE
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 7
	dw WEEDLE
	db 1 ;male
	db 9
	dw KAKUNA
	db 1 ;male
	db 12
	dw BEEDRILL
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 12
	dw CATERPIE
	db 1 ;male
	db 12
	dw WEEDLE
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 13
	dw PARAS
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 15
	dw VENONAT
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 30
	dw ARIADOS
	db 1 ;male
	db 32
	dw PINSIR
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 9
	dw METAPOD
	db 1 ;male
	db 9
	dw METAPOD
	db 0 ;female
	db 10
	dw KAKUNA
	db 1 ;male
	db 9
	dw METAPOD
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 14
	dw BUTTERFREE
	db 1 ;male
	db 14
	dw BUTTERFREE
	db 0 ;female
	db 15
	dw BEEDRILL
	db 1 ;male
	db 14
	dw BUTTERFREE
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	db 1 ;male
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	db 1 ;male
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 24
	dw BUTTERFREE
	db 1 ;male
	dw CONFUSION, EFFECT_SPORE, SUPERSONIC, WHIRLWIND
	db 24
	dw BUTTERFREE
	db 0 ;female
	dw CONFUSION, EFFECT_SPORE, SUPERSONIC, WHIRLWIND
	db 25
	dw BEEDRILL
	db 1 ;male
	dw PURSUIT, LASER_FOCUS, FELL_STINGER, PURSUIT
	db 24
	dw BUTTERFREE
	db 1 ;male
	dw CONFUSION, SLEEP_POWDER, SUPERSONIC, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 30
	dw BUTTERFREE
	db 1 ;male
	dw CONFUSION, EFFECT_SPORE, SUPERSONIC, GUST
	db 30
	dw BUTTERFREE
	db 0 ;female
	dw CONFUSION, EFFECT_SPORE, SUPERSONIC, GUST
	db 32
	dw BEEDRILL
	db 1 ;male
	dw PIN_MISSILE, PURSUIT, FELL_STINGER, DOUBLE_TEAM
	db 34
	dw BUTTERFREE
	db 1 ;male
	dw PSYBEAM, SLEEP_POWDER, GUST, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	db 1 ;male
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	db 1 ;male
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 8
	dw LEDYBA
	db 1 ;male
	db 10
	dw PARAS
	db 1 ;male
	db -1 ; end


	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 5
	dw MAGIKARP
	db 0 ;female
	db 5
	dw MAGIKARP
	db 0 ;female
	db 15
	dw MAGIKARP
	db 0 ;female
	db 5
	dw MAGIKARP
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 10
	dw GOLDEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 34
	dw TENTACRUEL
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 0 ;female
	db 31
	dw POLIWHIRL
	db 0 ;female
	db 31
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 8
	dw POLIWAG
	db 0 ;female
	db 8
	dw POLIWAG
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL
	db 10
	dw MAGIKARP
	db 0 ;female
	db 10
	dw GYARADOS
	db 0 ;female
	db 15
	dw MAGIKARP
	db 0 ;female
	db 15
	dw GYARADOS
	db 1 ;male
	db -1 ; end

	next_list_item ; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 18
	dw QWILFISH
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 27
	dw GYARADOS
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_NORMAL
	db 22
	dw MAGIKARP
	db 0 ;female
	db 22
	dw MAGIKARP
	db 0 ;female
	db 22
	dw MAGIKARP
	db 0 ;female
	db 22
	dw MAGIKARP
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (10)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 23
	dw GOLDEEN
	db 0 ;female
	db 23
	dw GOLDEEN
	db 0 ;female
	db 25
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES
	db 25
	dw REMORAID
	db 0 ;female
	dw LASER_FOCUS, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	db 0 ;female
	dw LASER_FOCUS, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 0 ;female
	db 29
	dw OCTILLERY
	db 0 ;female
	db 25
	dw REMORAID
	db 0 ;female
	db 29
	dw CLOYSTER
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 0 ;female
	db 32
	dw REMORAID
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 0 ;female
	db 25
	dw MAGIKARP
	db 0 ;female
	db 31
	dw QWILFISH
	db 0 ;female
	db 31
	dw TENTACRUEL
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 0 ;female
	db 30
	dw GYARADOS
	db 0 ;female
	db 30
	dw GYARADOS
	db 1 ;male
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 0 ;female
	db 19
	dw GOLDEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 0 ;female
	db 32
	dw GOLDEEN
	db 0 ;female
	db 32
	dw QWILFISH
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 29
	dw GOLDEEN
	db 0 ;female
	db 29
	dw GOLDEEN
	db 0 ;female
	db 32
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 0 ;female
	db 30
	dw QWILFISH
	db 0 ;female
	db 34
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	db 0 ;female
	dw SUPERSONIC, WATERFALL, FLAIL, HORN_ATTACK
	db 34
	dw SEAKING
	db 0 ;female
	dw SUPERSONIC, WATERFALL, FLAIL, HORN_ATTACK
	db 38
	dw REMORAID
	db 0 ;female
	dw PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 0 ;female
	db 32
	dw GOLDEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	db 0 ;female
	dw TOXIC, DOUBLE_TEAM, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	db 0 ;female
	dw ENDURE, FLAIL, HORN_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	db 0 ;female
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, HORN_ATTACK
	db 34
	dw SEAKING
	db 0 ;female
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, HORN_ATTACK
	db 37
	dw QWILFISH
	db 0 ;female
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end


	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 1 ;male
	db 30
	dw SEADRA
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 20
	dw TENTACOOL
	db 1 ;male
	db 20
	dw TENTACOOL
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_NORMAL
	db 18
	dw SHELLDER
	db 1 ;male
	db 20
	dw WARTORTLE
	db 1 ;male
	db 18
	dw SHELLDER
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 1 ;male
	db 19
	dw TENTACOOL
	db 1 ;male
	db 19
	dw TENTACRUEL
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 16
	dw TENTACOOL
	db 1 ;male
	db 17
	dw TENTACOOL
	db 1 ;male
	db 16
	dw TENTACOOL
	db 1 ;male
	db 19
	dw STARYU
	db 1 ;male
	db 17
	dw TENTACOOL
	db 1 ;male
	db 19
	dw REMORAID
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_NORMAL
	db 20
	dw GYARADOS
	db 1 ;male
	db 20
	dw GYARADOS
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_NORMAL
	db 23
	dw KRABBY
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 1 ;male
	db 25
	dw DEWGONG
	db 1 ;male
	db 24
	dw SEEL
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 1 ;male
	db 26
	dw PILOSWINE
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 1 ;male
	db 25
	dw CLOYSTER
	db 1 ;male
	db 24
	dw SHELLDER
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 1 ;male
	db 15
	dw HORSEA
	db 1 ;male
	db 20
	dw SEADRA
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 1 ;male
	db 18
	dw STARMIE
	db 1 ;male
	db 16
	dw HORSEA
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 26
	dw SEADRA
	db 1 ;male
	db 28
	dw TENTACOOL
	db 1 ;male
	db 30
	dw TENTACRUEL
	db 1 ;male
	db 28
	dw GOLDEEN
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 1 ;male
	db 34
	dw CLOYSTER
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 1 ;male
	db 18
	dw STARMIE
	db 1 ;male
	db 16
	dw HORSEA
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 34
	dw MARILL
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 1 ;male
	db 29
	dw OCTILLERY
	db 1 ;male
	db 32
	dw QUAGSIRE
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 1 ;male
	db 18
	dw STARMIE
	db 1 ;male
	db 16
	dw HORSEA
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 1 ;male
	db 18
	dw STARMIE
	db 1 ;male
	db 16
	dw HORSEA
	db 1 ;male
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 32
	dw HORSEA
	db 1 ;male
	db 32
	dw HORSEA
	db 1 ;male
	db 35
	dw SEADRA
	db 1 ;male
	db -1 ; end


	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 21
	dw STARYU
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_NORMAL
	db 19
	dw STARYU
	db 0 ;female
	db 19
	dw SHELLDER
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_NORMAL
	db 18
	dw GOLDEEN
	db 0 ;female
	db 20
	dw GOLDEEN
	db 0 ;female
	db 20
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_MOVES
	db 20
	dw PSYDUCK
	db 0 ;female
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db 22
	dw GOLDEEN
	db 0 ;female
	dw PECK, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 22
	dw SEEL
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_NORMAL
	db 20
	dw STARYU
	db 0 ;female
	db 20
	dw STARMIE
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_MOVES
	db 21
	dw HORSEA
	db 0 ;female
	dw LASER_FOCUS, SMOKESCREEN, LEER, WATER_GUN
	db 21
	dw HORSEA
	db 0 ;female
	dw DRAGON_RAGE, SMOKESCREEN, LEER, WATER_GUN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw CLOYSTER
	db 0 ;female
	db -1 

	next_list_item ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 34
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 0 ;female
	db 29
	dw MARILL
	db 0 ;female
	db 32
	dw LAPRAS
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 0 ;female
	db 32
	dw STARMIE
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 0 ;female
	db 28
	dw SEEL
	db 0 ;female
	db 28
	dw SEEL
	db 1 ;male
	db 28
	dw DEWGONG
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	db 0 ;female
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 0 ;female
	db 35
	dw SEAKING
	db 0 ;female
	db -1 ; end


	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 17
	dw POLIWHIRL
	db 1 ;male
	db 17
	dw RATICATE
	db 1 ;male
	db 19
	dw KRABBY
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 18
	dw POLIWAG
	db 1 ;male
	db 18
	dw POLIWHIRL
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 20
	dw POLIWHIRL
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 18
	dw KRABBY
	db 1 ;male
	dw WATER_GUN, LEER, METAL_CLAW, HARDEN
	db 20
	dw KRABBY
	db 1 ;male
	dw BUBBLEBEAM, LEER, METAL_CLAW, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 18
	dw MACHOP
	db 1 ;male
	db 18
	dw MACHOP
	db 1 ;male
	db 18
	dw POLIWHIRL
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 32
	dw RATICATE
	db 1 ;male
	db 32
	dw RATICATE
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 1 ;male
	db 28
	dw MACHOP
	db 1 ;male
	db 28
	dw POLIWRATH
	db 1 ;male
	db 28
	dw MACHOP
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 1 ;male
	db 33
	dw MACHOKE
	db 1 ;male
	db 26
	dw PSYDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 19
	dw WOOPER
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 1 ;male
	db 28
	dw POLIWHIRL
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 1 ;male
	db 34
	dw POLIWRATH
	db 1 ;male
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	db 1 ;male
	dw WHIRLPOOL, RAIN_DANCE, SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	db 1 ;male
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db -1 ; end


	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 11
	dw GRIMER
	db 1 ;male
	db 11
	dw GRIMER
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (3)
	db "GREGG@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 1 ;male
	db 20
	dw MAGNEMITE
	db 1 ;male
	db 20
	dw MAGNEMITE
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 1 ;male
	db 22
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 34
	dw GRIMER
	db 1 ;male
	db 34
	dw MUK
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 1 ;male
	db 32
	dw MAGNEMITE
	db 1 ;male
	db 32
	dw MAGNEMITE
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 1 ;male
	db 33
	dw MUK
	db 1 ;male
	db 31
	dw MAGNEMITE
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL
	db 7
	dw MAGNEMITE
	db 1 ;male
	db 11
	dw VOLTORB
	db 1 ;male
	db 7
	dw MAGNEMITE
	db 1 ;male
	db 9
	dw MAGNEMITE
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 1 ;male
	db 27
	dw MAGNEMITE
	db 1 ;male
	db 27
	dw MAGNEMITE
	db 1 ;male
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	db 1 ;male
	dw PSYBEAM, CONVERSION, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	db 1 ;male
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 19
	dw SLOWPOKE
	db 1 ;male
	dw CURSE, WATER_GUN, GROWL, STRENGTH
	db -1 ; end


	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 41
	dw WEAVILE
	db 1 ;male
	dw ICE_PUNCH, SCREECH, FAINT_ATTACK, SLASH
	dw MALE_DVS
	db 42
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 41
	dw MAGNETON
	db 1 ;male
	dw THUNDER, SWIFT, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	db 43
	dw GENGAR
	db 0 ;female
	dw MEAN_LOOK, CURSE, SHADOW_BALL, PSYCHIC_M
	dw FEMALE_DVS
	db 43
	dw SEADRA
	db 1 ;male
	dw TWISTER, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	db 45
	dw MEGANIUM
	db 0 ;female
	dw GIGA_DRAIN, GROWTH, LIGHT_SCREEN, SLAM
	dw FEMALE_DVS
	db -1 ; end

	next_list_item ; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 41
	dw WEAVILE
	db 1 ;male
	dw ICE_PUNCH, SCREECH, FAINT_ATTACK, SLASH
	dw MALE_DVS
	db 42
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 41
	dw MAGNETON
	db 1 ;male
	dw THUNDER, SWIFT, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	db 43
	dw GENGAR
	db 0 ;female
	dw MEAN_LOOK, CURSE, SHADOW_BALL, PSYCHIC_M
	dw FEMALE_DVS
	db 43
	dw SEADRA
	db 1 ;male
	dw TWISTER, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	db 45
	dw TYPHLOSION
	db 1 ;male
	dw FLAMETHROWER, WILL_O_WISP, THUNDERPUNCH, TAKE_DOWN
	dw MALE_DVS
	db -1 ; end

	next_list_item ; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 41
	dw WEAVILE
	db 1 ;male
	dw ICE_PUNCH, SCREECH, FAINT_ATTACK, SLASH
	dw MALE_DVS
	db 42
	dw GOLBAT
	db 1 ;male
	dw POISON_FANG, BITE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	db 41
	dw MAGNETON
	db 1 ;male
	dw THUNDER, SWIFT, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	db 43
	dw GENGAR
	db 0 ;female
	dw MEAN_LOOK, CURSE, SHADOW_BALL, PSYCHIC_M
	dw FEMALE_DVS
	db 43
	dw SEADRA
	db 1 ;male
	dw TWISTER, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	db 45
	dw FERALIGATR
	db 1 ;male
	dw HYDRO_PUMP, ICE_FANG, SLASH, SCREECH
	dw MALE_DVS
	db -1 ; end

	next_list_item ; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 50
	dw WEAVILE
	db 1 ;male
	dw ICE_PUNCH, SCREECH, FAINT_ATTACK, SLASH
	dw MALE_DVS
	dw 20K, 60K, 15K, 35K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw CROBAT
	db 1 ;male
	dw POISON_FANG, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	dw 25K, 40K, 20K, 50K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MAGNETON
	db 1 ;male
	dw THUNDER, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	dw 35K,   0, 30K, 40K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw GENGAR
	db 0 ;female
	dw MEAN_LOOK, DESTINY_BOND, SHADOW_BALL, PSYCHIC_M
	dw FEMALE_DVS
	dw 15K,   0, 25K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw KINGDRA
	db 1 ;male
	dw DRAGONBREATH, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	dw 40K,   0, 20K, 30K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MEGANIUM
	db 0 ;female
	dw GIGA_DRAIN, GROWTH, LIGHT_SCREEN, EARTHQUAKE
	dw FEMALE_DVS
	dw 30K, 40K, 30K, 10K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	next_list_item ; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS
	db 50
	dw WEAVILE
	db 1 ;male
	dw ICE_PUNCH, SCREECH, FAINT_ATTACK, SLASH
	dw MALE_DVS
	dw 20K, 60K, 15K, 35K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw CROBAT
	db 1 ;male
	dw POISON_FANG, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	dw 25K, 40K, 20K, 50K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MAGNETON
	db 1 ;male
	dw THUNDER, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	dw 35K,   0, 30K, 40K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw GENGAR
	db 0 ;female
	dw MEAN_LOOK, DESTINY_BOND, SHADOW_BALL, PSYCHIC_M
	dw FEMALE_DVS
	dw 15K,   0, 25K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw KINGDRA
	db 1 ;male
	dw DRAGONBREATH, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	dw 40K,   0, 20K, 30K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw TYPHLOSION
	db 1 ;male
	dw FIRE_BLAST, WILL_O_WISP, THUNDERPUNCH, TAKE_DOWN
	dw MALE_DVS
	dw 20K, 25K, 15K, 40K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	next_list_item ; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw WEAVILE
	db 1 ;male
	dw ICE_PUNCH, SCREECH, FAINT_ATTACK, SLASH
	dw MALE_DVS
	dw 20K, 60K, 15K, 35K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw CROBAT
	db 1 ;male
	dw POISON_FANG, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	dw MALE_DVS
	dw 25K, 40K, 20K, 50K, 15K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MAGNETON
	db 1 ;male
	dw THUNDER, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	dw MALE_DVS
	dw 35K,   0, 30K, 40K, 45K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw GENGAR
	db 0 ;female
	dw MEAN_LOOK, DESTINY_BOND, SHADOW_BALL, PSYCHIC_M
	dw FEMALE_DVS
	dw 15K,   0, 25K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw KINGDRA
	db 1 ;male
	dw DRAGONBREATH, AGILITY, SURF, BLIZZARD
	dw MALE_DVS
	dw 40K,   0, 20K, 30K, 60K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw FERALIGATR
	db 1 ;male
	dw HYDRO_PUMP, ICE_FANG, CRUNCH, SCREECH
	dw MALE_DVS
	dw 25K, 50K, 30K, 20K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end


	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	db 1 ;male
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 1 ;male
	db 33
	dw VOLTORB
	db 1 ;male
	db 32
	dw MAGNEMITE
	db 1 ;male
	db 32
	dw MAGNEMITE
	db 1 ;male
	db -1 ; end


	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 1 ;male
	db 18
	dw MACHAMP
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_NORMAL
	db 4
	dw GEODUDE
	db 1 ;male
	db 6
	dw GEODUDE
	db 1 ;male
	db 8
	dw GEODUDE
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 1 ;male
	db 23
	dw GEODUDE
	db 1 ;male
	db 23
	dw GRAVELER
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 1 ;male
	db 25
	dw MACHOP
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 1 ;male
	db 11
	dw MACHOP
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 14
	dw DIGLETT
	db 1 ;male
	db 14
	dw GEODUDE
	db 1 ;male
	db 16
	dw DUGTRIO
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 24
	dw MACHOP
	db 1 ;male
	db 27
	dw GRAVELER
	db 1 ;male
	db 27
	dw MACHOP
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 25
	dw GEODUDE
	db 1 ;male
	db 25
	dw GRAVELER
	db 1 ;male
	db 25
	dw GOLEM
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 35
	dw ONIX
	db 1 ;male
	db 33
	dw SWINUB
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_MOVES
	db 27
	dw DIGLETT
	db 1 ;male
	dw BULLDOZE, DIG, SAND_ATTACK, SLASH
	db 27
	dw DUGTRIO
	db 1 ;male
	dw BULLDOZE, DIG, SAND_ATTACK, SLASH
	db -1 ; end

	next_list_item ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 1 ;male
	db 13
	dw GEODUDE
	db 1 ;male
	db 13
	dw GEODUDE
	db 1 ;male
	db 13
	dw GEODUDE
	db 1 ;male
	db 13
	dw GEODUDE
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 25
	dw GRAVELER
	db 1 ;male
	db 27
	dw GRAVELER
	db 1 ;male
	db 29
	dw MACHOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 31
	dw GRAVELER
	db 1 ;male
	db 31
	dw GRAVELER
	db 1 ;male
	db 31
	dw GRAVELER
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 31
	dw SANDSLASH
	db 1 ;male
	db 33
	dw GOLEM
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 34
	dw DUGTRIO
	db 1 ;male
	db 32
	dw ONIX
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 27
	dw SANDSLASH
	db 1 ;male
	db 29
	dw GRAVELER
	db 1 ;male
	db 31
	dw GOLEM
	db 1 ;male
	db 29
	dw GRAVELER
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 35
	dw MACHAMP
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 11
	dw ONIX
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	db 1 ;male
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	db 1 ;male
	dw BULLDOZE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	db 1 ;male
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 29
	dw ONIX
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 1 ;male
	db 30
	dw GRAVELER
	db 1 ;male
	db 32
	dw MACHOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	db 1 ;male
	dw BULLDOZE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	db 1 ;male
	dw BULLDOZE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	db 1 ;male
	dw POWERUPPUNCH, CROSS_CHOP, HEADBUTT, DIG
	db -1 ; end


	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 1 ;male
	db 20
	dw KOFFING
	db 1 ;male
	db 20
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 1 ;male
	db 20
	dw KOFFING
	db 1 ;male
	db 20
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 27
	dw KOFFING
	db 1 ;male
	db 28
	dw KOFFING
	db 1 ;male
	db 29
	dw KOFFING
	db 1 ;male
	db 30
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 34
	dw FLAREON
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 1 ;male
	db 32
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 1 ;male
	db 30
	dw CHARMELEON
	db 1 ;male
	db 30
	dw WEEZING
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 32
	dw MAGMAR
	db 1 ;male
	db 32
	dw MAGMAR
	db 1 ;male
	db -1 ; end

	next_list_item ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 1 ;male
	db 30
	dw MAGMAR
	db 1 ;male
	db 32
	dw WEEZING
	db 1 ;male
	db -1 ; end


	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw CHARMELEON
	db 1 ;male
	db KINGS_ROCK
	dw SUNNY_DAY, DRAGONBREATH, FLAMETHROWER, SWAGGER
	dw MALE_DVS
	dw 30K,   0, 40K, 55K, 35K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw NINETALES
	db 0 ;female
	db SPELL_TAG
	dw FLAMETHROWER, SHADOW_BALL, DESTINY_BOND, WILL_O_WISP
	dw FEMALE_DVS
	dw 25K,   0, 20K, 50K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw FLAREON
	db 1 ;male
	db QUICK_CLAW
	dw FLAME_WHEEL, SUBMISSION, SACRED_FIRE, DIG
	dw MALE_DVS
	dw 20K, 60K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw ARCANINE
	db 1 ;male
	db LEFTOVERS
	dw WILL_O_WISP, MORNING_SUN, FLAMETHROWER, CRUNCH
	dw MALE_DVS
	dw 40K, 20K, 35K, 25K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw RAPIDASH
	db 0 ;female
	db CHARCOAL
	dw SUNNY_DAY, FLAME_WHEEL, SOLARBEAM, LOW_KICK
	dw FEMALE_DVS
	dw 15K, 45K, 15K, 40K, 35K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MAGMAR
	db 1 ;male
	db MAGNET
	dw FIRE_BLAST, LOW_KICK, THUNDERPUNCH, CONFUSE_RAY
	dw MALE_DVS
	dw 20K, 50K, 20K, 20K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end


	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 1 ;male
	db 25
	dw MAGMAR
	db 1 ;male
	db 23
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 26
	dw GROWLITHE
	db 1 ;male
	dw ROAR, EMBER, LEER, TAKE_DOWN
	db 24
	dw KOFFING
	db 1 ;male
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 1 ;male
	db 28
	dw MAGMAR
	db 1 ;male
	db 25
	dw KOFFING
	db 1 ;male
	db 30
	dw KOFFING
	db 1 ;male
	db -1 ; end


	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 29
	dw MAGMAR
	db 1 ;male
	db 32
	dw WEEZING
	db 1 ;male
	db 29
	dw MAGMAR
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 17
	dw CHARMELEON
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 1 ;male
	db 16
	dw GROWLITHE
	db 1 ;male
	db 15
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 1 ;male
	db 32
	dw SLUGMA
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 6
	dw KOFFING
	db 1 ;male
	db 6
	dw KOFFING
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 11
	dw MAGMAR
	db 1 ;male
	db 13
	dw MAGMAR
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 9
	dw VULPIX
	db 1 ;male
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 1 ;male
	db 31
	dw FLAREON
	db 1 ;male
	db 28
	dw KOFFING
	db 1 ;male
	db -1 ; end


	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 2
	dw VOLTORB
	db 1 ;male
	db 6
	dw VOLTORB
	db 1 ;male
	db 10
	dw VOLTORB
	db 1 ;male
	db 14
	dw VOLTORB
	db 1 ;male
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_NORMAL
	db 29
	dw HYPNO
	db 1 ;male
	db 29
	dw MAGMAR
	db 1 ;male
	db 29
	dw MACHOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 1 ;male
	db 33
	dw ELECTRODE
	db 1 ;male
	db 33
	dw ELECTRODE
	db 1 ;male
	db 33
	dw ELECTRODE
	db 1 ;male
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 6
	dw VOLTORB
	db 1 ;male
	db 10
	dw VOLTORB
	db 1 ;male
	db 14
	dw VOLTORB
	db 1 ;male
	db 18
	dw VOLTORB
	db 1 ;male
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 1 ;male
	db 22
	dw VOLTORB
	db 1 ;male
	db 26
	dw VOLTORB
	db 1 ;male
	db 30
	dw ELECTRODE
	db 1 ;male
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 1 ;male
	db 22
	dw VOLTORB
	db 1 ;male
	db 26
	dw VOLTORB
	db 1 ;male
	db 30
	dw ELECTRODE
	db 1 ;male
	db -1 ; end


	end_list_items
 
BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 27
	dw ONIX
	db 1 ;male
	db 30
	dw HITMONLEE
	db 1 ;male
	db 27
	dw ONIX
	db 1 ;male
	db 32
	dw MACHOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_MOVES
	db 27
	dw HITMONLEE
	db 1 ;male
	dw DOUBLE_KICK, ENDURE, JUMP_KICK, TACKLE
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	db 1 ;male
	dw WRAP, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	db 1 ;male
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, CROSS_CHOP
	db 33
	dw STEELIX
	db 1 ;male
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	db 1 ;male
	dw DOUBLE_TEAM, JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_MOVES
	db 27
	dw HITMONCHAN
	db 1 ;male
	dw POWERUPPUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "NOB@", TRAINERTYPE_MOVES
	db 25
	dw MACHOP
	db 1 ;male
	dw LEER, POUND, POWERUPPUNCH, SEISMIC_TOSS
	db 25
	dw MACHOKE
	db 1 ;male
	dw LEER, POWERUPPUNCH, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_NORMAL
	db 34
	dw HITMONLEE
	db 1 ;male
	db 34
	dw HITMONCHAN
	db 1 ;male
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "LUNG@", TRAINERTYPE_NORMAL
	db 23
	dw MANKEY
	db 1 ;male
	db 23
	dw MANKEY
	db 1 ;male
	db 25
	dw PRIMEAPE
	db 1 ;male
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOKE
	db 1 ;male
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL
	db 30
	dw MACHOKE
	db 1 ;male
	db 32
	dw MACHOKE
	db 1 ;male
	db 34
	dw MACHOKE
	db 1 ;male
	db -1 ; end


	end_list_items

ExecutiveMGroup:
	next_list_item ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 33
	dw HOUNDOUR
	db 1 ;male
	dw EMBER, ROAR, BITE, FAINT_ATTACK
	db 33
	dw KOFFING
	db 1 ;male
	dw TACKLE, SLUDGE, SMOKESCREEN, HAZE
	db 35
	dw HOUNDOOM
	db 1 ;male
	dw EMBER, SMOG, BITE, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	db 1 ;male
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (3)     ;tf is this team and why is it so bad
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	db 1 ;male
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db 1 ;male
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db 1 ;male
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	db 1 ;male
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db 1 ;male
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db 1 ;male
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; EXECUTIVEM (4)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 1 ;male
	db 24
	dw RATICATE
	db 1 ;male
	db 22
	dw KOFFING
	db 1 ;male
	db -1 ; end


	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 26
	dw GIRAFARIG
	db 1 ;male
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 37
	dw KADABRA
	db 1 ;male
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 30
	dw EXEGGCUTE
	db 1 ;male
	db 30
	dw EXEGGCUTE
	db 1 ;male
	db 30
	dw EXEGGUTOR
	db 1 ;male
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 34
	dw XATU
	db 1 ;male
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 17
	dw DROWZEE
	db 1 ;male
	dw HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 17
	dw SLOWPOKE
	db 1 ;male
	dw TACKLE, GROWL, WATER_GUN, NO_MOVE
	db 20
	dw SLOWPOKE
	db 1 ;male
	dw CURSE, SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 13
	dw ABRA
	db 1 ;male
	dw TELEPORT, FLASH, HIDDEN_POWER, NO_MOVE
	db 13
	dw ABRA
	db 1 ;male
	dw TELEPORT, FLASH, HIDDEN_POWER, NO_MOVE
	db 15
	dw KADABRA
	db 1 ;male
	dw TELEPORT, DISABLE, CONFUSION, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 24
	dw NATU
	db 1 ;male
	dw LEER, NIGHT_SHADE, CONFUSION, CONFUSE_RAY
	db 26
	dw KADABRA
	db 1 ;male
	dw DISABLE, PSYBEAM, RECOVER, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 36
	dw ESPEON
	db 0 ;female
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 30
	dw STARMIE
	db 1 ;male
	db 30
	dw EXEGGCUTE
	db 1 ;male
	db 34
	dw GIRAFARIG
	db 1 ;male
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 32
	dw HYPNO
	db 1 ;male
	db 32
	dw EXEGGCUTE
	db 1 ;male
	db 35
	dw EXEGGCUTE
	db 1 ;male
	db -1 

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 29
	dw DROWZEE
	db 1 ;male
	db 33
	dw HYPNO
	db 1 ;male
	db -1 ; end


	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_F
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NICKNAME
	db 9
	dw HOPPIP
	db 0 ;female
	db "HOPPIP@"
	db 9
	dw HOPPIP
	db 0 ;female
	db "HOPPIP@"
	db 12
	dw BULBASAUR
	db 0 ;female
	db "BULBASAUR@"
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_MOVES
	db 16
	dw PIKACHU
	db 0 ;female
	dw THUNDERSHOCK, GROWL, QUICK_ATTACK, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 15
	dw VULPIX
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOQUEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 34
	dw FLAAFFY
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 31
	dw FURRET
	db 0 ;female
	db 33
	dw RAPIDASH
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 33
	dw SEAKING
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 0 ;female
	db 14
	dw HOPPIP
	db 0 ;female
	db 17
	dw IVYSAUR
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 16
	dw PONYTA
	db 0 ;female
	db 16
	dw PONYTA
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 0 ;female
	db 15
	dw NIDORINA
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 19
	dw WEEPINBELL
	db 0 ;female
	db 19
	dw NIDORINO
	db 0 ;female
	db 21
	dw NIDOQUEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 0 ;female
	db 32
	dw SKIPLOOM
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 30
	dw NIDORINA
	db 0 ;female
	db 34
	dw RAICHU
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 0 ;female
	db 26
	dw SKIPLOOM
	db 0 ;female
	db 29
	dw IVYSAUR
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 31
	dw CLEFAIRY
	db 0 ;female
	dw ENCORE, SING, POUND, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	db 0 ;female
	dw ENCORE, POUND, DOUBLE_TEAM, METRONOME
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 0 ;female
	db 32
	dw PONYTA
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL
	db 37
	dw EXEGGUTOR
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 20
	dw CLEFAIRY
	db 0 ;female
	dw ENCORE, SING, POUND, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw PONYTA
	db 0 ;female
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	db 0 ;female
	dw SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw PONYTA
	db 0 ;female
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db -1 ; end

	next_list_item ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 24
	dw WEEPINBELL
	db 0 ;female
	db 26
	dw NIDORINO
	db 0 ;female
	db 26
	dw NIDOQUEEN
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	db 0 ;female
	dw SLEEP_POWDER, VINE_WHIP, EFFECT_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	db 0 ;female
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	db 0 ;female
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 0 ;female
	db 30
	dw SKIPLOOM
	db 0 ;female
	db 32
	dw IVYSAUR
	db 0 ;female
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	db 0 ;female
	dw PROTECT, SUNNY_DAY, LEECH_SEED, EFFECT_SPORE
	db 33
	dw JUMPLUFF
	db 0 ;female
	dw SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, EFFECT_SPORE
	db 38
	dw VENUSAUR
	db 0 ;female
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	db 0 ;female
	dw METRONOME, ENCORE, MOONLIGHT, DOUBLE_TEAM
	db -1 ; end


	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_M
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 14
	dw PSYDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 10
	dw DIGLETT
	db 1 ;male
	db 10
	dw ZUBAT
	db 1 ;male
	db 14
	dw DIGLETT
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 13
	dw SANDSHREW
	db 1 ;male
	db 15
	dw MARILL
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOKING
	db 1 ;male
	db -1 ; end

	next_list_item 
	db "IAN@", TRAINERTYPE_NORMAL
	db 10
	dw MANKEY
	db 1 ;male
	db 12
	dw DIGLETT
	db 1 ;male
	db -1 

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 1 ;male
	db 31
	dw SANDSLASH
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 1 ;male
	db 29
	dw PRIMEAPE
	db 1 ;male
	db 29
	dw POLIWRATH
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 17
	dw GEODUDE
	db 1 ;male
	db 17
	dw GEODUDE
	db 1 ;male
	db 23
	dw PSYDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 1 ;male
	db 23
	dw GEODUDE
	db 1 ;male
	db 26
	dw PSYDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 1 ;male
	db 36
	dw GRAVELER
	db 1 ;male
	db 40
	dw GOLBAT
	db 1 ;male
	db 42
	dw GOLDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 1 ;male
	db 36
	dw GRAVELER
	db 1 ;male
	db 40
	dw GOLBAT
	db 1 ;male
	db 42
	dw GOLDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 1 ;male
	db 36
	dw GRAVELER
	db 1 ;male
	db 40
	dw GOLBAT
	db 1 ;male
	db 42
	dw GOLDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 1 ;male
	db 36
	dw GRAVELER
	db 1 ;male
	db 40
	dw GOLBAT
	db 1 ;male
	db 42
	dw GOLDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 37
	dw SANDSLASH
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 17
	dw SANDSHREW
	db 1 ;male
	db 17
	dw SANDSLASH
	db 1 ;male
	db 19
	dw ZUBAT
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 1 ;male
	db 30
	dw GRAVELER
	db 1 ;male
	db 30
	dw SLUGMA
	db 1 ;male
	db 32
	dw PSYDUCK
	db 1 ;male
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 33
	dw GRAVELER
	db 1 ;male
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, BULLDOZE
	db 33
	dw GRAVELER
	db 1 ;male
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, BULLDOZE
	db 36
	dw MAGCARGO
	db 1 ;male
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 34
	dw GOLDUCK
	db 1 ;male
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 1 ;male
	db 30
	dw PRIMEAPE
	db 1 ;male
	db 30
	dw TAUROS
	db 1 ;male
	db -1 ; end


	end_list_items

ExecutiveFGroup:
	next_list_item ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 32
	dw ARBOK
	db 0 ;female
	dw WRAP, POISON_STING, BITE, GLARE
	db 32
	dw VILEPLUME
	db 0 ;female
	dw MEGA_DRAIN, SWEET_SCENT, SLEEP_POWDER, SLUDGE
	db 32
	dw MURKROW
	db 1 ;male
	dw PECK, PURSUIT, HAZE, NIGHT_SHADE
	db -1 ; end

	next_list_item ; EXECUTIVEF (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 23
	dw ARBOK
	db 0 ;female
	dw WRAP, LEER, POISON_STING, BITE
	db 23
	dw GLOOM
	db 0 ;female
	dw MEGA_DRAIN, SWEET_SCENT, SLEEP_POWDER, SLUDGE
	db 25
	dw MURKROW
	db 1 ;male
	dw PECK, PURSUIT, HAZE, NO_MOVE
	db -1 ; end


	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 1 ;male
	db 3
	dw BELLSPROUT
	db 1 ;male
	db 3
	dw BELLSPROUT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 1 ;male
	db 3
	dw BELLSPROUT
	db 1 ;male
	db 3
	dw BELLSPROUT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 1 ;male
	db 7
	dw HOOTHOOT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (5)
	db "JEFFREY@", TRAINERTYPE_NORMAL
	db 22
	dw HAUNTER
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (6)
	db "PING@", TRAINERTYPE_NORMAL
	db 16
	dw GASTLY
	db 1 ;male
	db 16
	dw GASTLY
	db 1 ;male
	db 16
	dw GASTLY
	db 1 ;male
	db 16
	dw GASTLY
	db 1 ;male
	db 16
	dw GASTLY
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 1 ;male
	db 3
	dw BELLSPROUT
	db 1 ;male
	db 3
	dw BELLSPROUT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (9)
	db "LI@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 1 ;male
	db 7
	dw BELLSPROUT
	db 1 ;male
	db 10
	dw HOOTHOOT
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 1 ;male
	db 32
	dw FLAREON
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 1 ;male
	db 32
	dw JOLTEON
	db 1 ;male
	db -1 ; end

	next_list_item ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 1 ;male
	db 32
	dw VAPOREON
	db 1 ;male
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 18
	dw GASTLY
	db 1 ;male
	db 20
	dw HAUNTER
	db 1 ;male
	db 20
	dw GASTLY
	db 1 ;male
	db -1 ; end

	next_list_item ; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_NORMAL
	db 20
	dw HAUNTER
	db 1 ;male
	db 20
	dw HAUNTER
	db 1 ;male
	db -1 ; end

	next_list_item ; MEDIUM (3)
	db "BETHANY@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db 1 ;male
	db -1 ; end

	next_list_item ; MEDIUM (4)
	db "MARGRET@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db 1 ;male
	db -1 ; end

	next_list_item ; MEDIUM (5)
	db "ETHEL@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db 1 ;male
	db -1 ; end

	next_list_item ; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_NORMAL
	db 35
	dw DROWZEE
	db 1 ;male
	db 35
	dw HYPNO
	db 1 ;male
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 34
	dw SLOWPOKE
	db 1 ;male
	db 36
	dw SLOWBRO
	db 1 ;male
	db -1 ; end


	end_list_items

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 1 ;male
	db 25
	dw DEWGONG
	db 1 ;male
	db 24
	dw SEEL
	db 0 ;female
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 26
	dw SWINUB
	db 1 ;male
	db 26
	dw SWINUB
	db 1 ;male
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 0 ;female
	db 25
	dw CLOYSTER
	db 1 ;male
	db 24
	dw SHELLDER
	db 1 ;male
	db -1 ; end


	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 14
	dw RAICHU
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 23
	dw PIKACHU
	db 1 ;male
	db BERRY
	db 23
	dw PIKACHU
	db 1 ;male
	db BERRY
	db 23
	dw PIKACHU
	db 1 ;male
	db BERRY
	db 23
	dw PIKACHU
	db 1 ;male
	db BERRY
	db 23
	dw PIKACHU
	db 1 ;male
	db BERRY
	db 23
	dw PIKACHU
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db 1 ;male
	db BERRY
	db 29
	dw CHARMANDER
	db 1 ;male
	db BERRY
	db 29
	dw SQUIRTLE
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 33
	dw PSYDUCK
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 13
	dw SNUBBULL
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 28
	dw MEOWTH
	db 1 ;male
	db BERRY
	db 28
	dw MEOWTH
	db 1 ;male
	db BERRY
	db 28
	dw MEOWTH
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 29
	dw NIDOKING
	db 1 ;male
	db BERRY
	db 29
	dw SLOWKING
	db 1 ;male
	db BERRY
	db 29
	dw SEAKING
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 35
	dw PHANPY
	db 1 ;male
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
	dw TEDDIURSA
	db 1 ;male
	db BERRY
	db -1 ; end


	end_list_items

KimonoGirlGroup:
	next_list_item ; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 20
	dw SKIPLOOM
	db 1 ;male
	db 20
	dw VULPIX
	db 0 ;female
	db 18
	dw SKIPLOOM
	db 1 ;male
	db -1 ; end

	next_list_item ; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 17
	dw FLAREON
	db 1 ;male
	db -1 ; end

	next_list_item ; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 17
	dw ESPEON
	db 0 ;female
	db -1 ; end

	next_list_item ; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 17
	dw UMBREON
	db 1 ;male
	db -1 ; end

	next_list_item ; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 17
	dw VAPOREON
	db 0 ;female
	db -1 ; end

	next_list_item ; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 17
	dw JOLTEON
	db 1 ;male
	db -1 ; end


	end_list_items 

TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw SPINARAK
	db 0 ;female
	db 10
	dw LEDYBA
	db 0 ;female
	db -1 ; end

	next_list_item ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw CLEFAIRY
	db 0 ;female
	dw GROWL, ENCORE, POUND, METRONOME
	db 16
	dw JIGGLYPUFF
	db 0 ;female
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw JIGGLYPUFF
	db 0 ;female
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db 16
	dw CLEFAIRY
	db 0 ;female
	dw GROWL, ENCORE, POUND, METRONOME
	db -1 ; end

	next_list_item ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw LEDYBA
	db 0 ;female
	db 10
	dw SPINARAK
	db 0 ;female
	db -1 ; end

	next_list_item ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VICTREEBEL
	db 0 ;female
	db 35
	dw VILEPLUME
	db 0 ;female
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 0 ;female
	db 35
	dw VICTREEBEL
	db 0 ;female
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 0 ;female
	db 31
	dw PHANPY
	db 0 ;female
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 0 ;female
	db 31
	dw TEDDIURSA
	db 0 ;female
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	db 0 ;female
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	db 1 ;male
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	db 0 ;female
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	db 1 ;male
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db -1 ; end


	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 14
	dw SNUBBULL
	db 0 ;female
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db 0 ;female
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db 0 ;female
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db 0 ;female
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_ITEM
	db 23
	dw SENTRET
	db 0 ;female
	db BERRY
	db 23
	dw SENTRET
	db 0 ;female
	db BERRY
	db 23
	dw SENTRET
	db 0 ;female
	db BERRY
	db 28
	dw FURRET
	db 0 ;female
	db BERRY
	db 23
	dw SENTRET
	db 0 ;female
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 16
	dw MEOWTH
	db 0 ;female
	db BERRY
	db -1 ; end


	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 88
	dw PIKACHU
	db 1 ;male
	db LIGHT_BALL
	dw VOLT_TACKLE, IRON_TAIL, AGILITY, THUNDERBOLT
	dw MALE_DVS
	dw 50K, 65K, 55K, 65K, 65K ; 300k
	;   hp, atk, def, spd, spc
	db 85
	dw ESPEON
	db 1 ;male
	db TWISTEDSPOON
	dw CALM_MIND, SHADOW_BALL, MORNING_SUN, PSYCHIC_M
	dw MALE_DVS
	dw 60K, 50K, 60K, 65K, 65K ; 300k
	;   hp, atk, def, spd, spc
	db 85
	dw SNORLAX
	db 1 ;male
	db CHESTO_BERRY
	dw CURSE, REST, SLAM, SLEEP_TALK
	dw MALE_DVS
	dw 65K, 65K, 65K, 50K, 55K ; 300k
	;   hp, atk, def, spd, spc
	db 85
	dw CHARIZARD
	db 1 ;male
	db DRAGON_FANG
	dw DRAGON_DANCE, SACRED_FIRE, SLASH, DRAGON_CLAW
	dw MALE_DVS
	dw 60K, 65K, 60K, 65K, 50K ; 300k
	;   hp, atk, def, spd, spc
	db 85
	dw SCYTHER
	db 1 ;male
	db FOCUS_BAND
	dw SWORDS_DANCE, LEECH_LIFE, RAZOR_WIND, REVERSAL
	dw MALE_DVS
	dw 55K, 65K, 60K, 65K, 55K ; 300k
	;   hp, atk, def, spd, spc
	db 85
	dw LAPRAS
	db 1 ;male
	db LEFTOVERS
	dw CONFUSE_RAY, SURF, ICE_BEAM, RECOVER
	dw MALE_DVS
	dw 65K, 55K, 55K, 60K, 65K ; 300k
	;   hp, atk, def, spd, spc
	db -1 ; end


	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw RHYHORN
	db 1 ;male
	db SOFT_SAND
	dw EARTHQUAKE, ROCK_SLIDE, MEGAHORN, SLAM
	dw MALE_DVS
	dw 25K, 40K, 35K, 40K, 20K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw SANDSLASH
	db 1 ;male
	db FOCUS_BAND
	dw SANDSTORM, SLASH, BULLDOZE, X_SCISSOR
	dw MALE_DVS
	dw 30K, 35K, 35K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DUGTRIO
	db 1 ;male
	db BLACKGLASSES
	dw SWAGGER, DIG, PURSUIT, SLASH
	dw MALE_DVS
	dw 15K, 30K, 20K, 60K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw RHYDON
	db 0 ;female
	db HARD_STONE
	dw COUNTER, EARTHQUAKE, ROCK_SLIDE, HORN_DRILL
	dw SHINY_F_DVS
	dw 30K, 50K, 30K, 20K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MAROWAK
	db 0 ;female
	db THICK_CLUB
	dw TAKE_DOWN, ROCK_SLIDE, BONEMERANG, BLIZZARD
	dw FEMALE_DVS
	dw 20K, 20K, 25K, 55K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw NIDOKING
	db 1 ;male
	db POISON_BARB
	dw POISON_JAB, EARTHQUAKE, SUBMISSION, THUNDERBOLT
	dw MALE_DVS
	dw 20K, 40K, 20K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db -1

	next_list_item ; BLUE (2)
	db "BLUE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 70
	dw PIDGEOT
	db 0 ;female
	db SHARP_BEAK
	dw TAKE_DOWN, WHIRLWIND, RAZOR_WIND, MIRROR_MOVE
	dw FEMALE_DVS
	dw 50K, 60K, 50K, 65K, 55K ; 280K
	;   hp, atk, def, spd, spc
	db 70
	dw ALAKAZAM
	db 1 ;male
	db TWISTEDSPOON
	dw THUNDER_WAVE, RECOVER, PSYCHIC_M, REFLECT
	dw MALE_DVS
	dw 50K, 50K, 50K, 65K, 65K ; 280K
	;   hp, atk, def, spd, spc
	db 70
	dw UMBREON
	db 1 ;male
	db LEFTOVERS
	dw MOONLIGHT, DARK_PULSE, TOXIC, PROTECT
	dw MALE_DVS
	dw 65K, 40K, 65K, 50K, 60K ; 280K
	;   hp, atk, def, spd, spc
	db 70
	dw GYARADOS
	db 1 ;male
	db LUM_BERRY
	dw DRAGON_DANCE, WATERFALL, EARTHQUAKE, HYPER_BEAM
	dw MALE_DVS
	dw 55K, 65K, 55K, 65K, 40K ; 280K
	;   hp, atk, def, spd, spc
	db 75
	dw VENUSAUR
	db 1 ;male
	db MIRACLE_SEED
	dw SUNNY_DAY, SLUDGE_BOMB, MORNING_SUN, SOLARBEAM
	dw MALE_DVS
	dw 65K, 40K, 60K, 50K, 65K ; 280K
	;   hp, atk, def, spd, spc
	db 70
	dw ARCANINE
	db 1 ;male
	db CHARCOAL
	dw HOWL, MORNING_SUN, SACRED_FIRE, EXTREMESPEED
	dw MALE_DVS
	dw 60K, 55K, 60K, 55K, 50K ; 280K
	;   hp, atk, def, spd, spc
	db -1 ; end


	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 17
	dw GROWLITHE
	db 1 ;male
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 1 ;male
	db 14
	dw GROWLITHE
	db 1 ;male
	db -1 ; end


	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw ZUBAT
	db 0 ;female
	db 11
	dw EKANS
	db 0 ;female
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ARBOK
	db 0 ;female
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GLOOM
	db 0 ;female
	db 25
	dw GLOOM
	db 0 ;female
	db -1 ; end

	next_list_item ; GRUNTF (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw EKANS
	db 0 ;female
	db 23
	dw ODDISH
	db 0 ;female
	db 21
	dw EKANS
	db 0 ;female
	db 24
	dw GLOOM
	db 0 ;female
	db -1 ; end

	next_list_item ; GRUNTF (5)
	db "GRUNT@", TRAINERTYPE_MOVES
	db 18
	dw EKANS
	db 0 ;female
	dw WRAP, LEER, POISON_STING, BITE
	db 18
	dw GLOOM
	db 0 ;female
	dw MEGA_DRAIN, SWEET_SCENT, EFFECT_SPORE, SLEEP_POWDER
	db -1 ; end


	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)   ;needs better team(s)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23
	dw DROWZEE
	db 1 ;male
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	db 1 ;male
	dw LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw ELECTRODE
	db 1 ;male
	dw SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end


	end_list_items

NekrobaGroup:
	next_list_item ; NEKROBA (1)
	db "NEKROBA@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME
	db 50
	dw ARBOK_DARK
	db 1 ;male
	dw POISON_FANG, CRUNCH, EARTHQUAKE, DRAGONBREATH
	dw MALE_DVS
	db "ARBOK@"
	db 50
	dw SNEASEL
	db 0 ;female
	dw ICE_PUNCH, SWORDS_DANCE, RAZOR_WIND, FAINT_ATTACK
	dw FEMALE_DVS
	db "ARCTICA@"
	db 50
	dw ARIADOS
	db 1 ;male
	dw LEECH_LIFE, POISON_JAB, TOXIC, NIGHT_SHADE
	dw SHINY_M_DVS
	db "PURPLE@"
	db 50
	dw SKARMORY
	db 1 ;male
	dw STEEL_WING, ROOST, DRILL_PECK, SPIKES
	dw MALE_DVS
	db "HALBIRD@"
	db 50
	dw ESPEON
	db 1 ;male
	dw SHADOW_BALL, PSYCHIC_M, ZAP_CANNON, MORNING_SUN
	dw MALE_DVS
	db "CRYSTAL@"
	db 55
	db 1 ;male
	dw CHARIZARD ; placeholder for Char 'M
	dw AURORA_BEAM, FLAMETHROWER, EARTHQUAKE, FLY
	dw SHINY_M_DVS
	db "CHAR 'M@"
	db -1 ; end


	end_list_items
	
DiogoGroup:
	next_list_item ; DIOGO (1)
	db "DIOGO@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME
	db 50
	dw BEEDRILL
	db 0 ;female
	dw FELL_STINGER, DOUBLE_TEAM, POISON_JAB, CUT
	dw FEMALE_DVS
	db "BEEDRILL@"
	db 50
	dw SCIZOR
	db 1 ;male
	dw SWORDS_DANCE, STEEL_WING, X_SCISSOR, PURSUIT
	dw MALE_DVS
	db "SCIZOR@"
	db 50
	dw WEAVILE
	db 0 ;female
	dw DOUBLE_TEAM, FAINT_ATTACK, LOW_KICK, ICICLE_CRASH
	dw FEMALE_DVS
	db "WEAVILE@"
	db 50
	dw CROBAT
	db 1 ;male
	dw WING_ATTACK, CONFUSE_RAY, LEECH_LIFE, SLUDGE_BOMB
	dw MALE_DVS
	db "CROBAT@"
	db 50
	dw GLISCOR
	db 1 ;male
	dw SUBSTITUTE, EARTHQUAKE, ROOST, TOXIC
	dw MALE_DVS
	db "GLISCOR@"
	db 55
	dw STARAPTOR
	db 1 ;male
	dw SKY_ATTACK, SUBMISSION, TAKE_DOWN, QUICK_ATTACK
	dw SHINY_M_DVS
	db "KAZE@"
	db -1 ; end


	end_list_items
	
VinceGroup:
	next_list_item ; VINCE (1)
	db "VINCE@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME
	db 50
	dw ARCANINE
	db 1 ;male
	db CHARCOAL
	dw FLARE_BLITZ, EXTREMESPEED, WILL_O_WISP, MORNING_SUN
	dw MALE_DVS
	db "ROSCOE@"
	db 50
	dw PORYGON2
	db 1 ;male
	db LEFTOVERS
	dw THUNDERBOLT, ICE_BEAM, THUNDER_WAVE, RECOVER
	dw MALE_DVS
	db "MINZBONBON@"
	db 50
	dw KINGDRA
	db 1 ;male
	db CHESTO_BERRY
	dw WATERFALL, OUTRAGE, DRAGON_DANCE, REST
	dw MALE_DVS
	db "NEPTUNE@"
	db 50
	dw SKARMORY
	db 0 ;female
	db LEFTOVERS
	dw SPIKES, BRAVE_BIRD, ROOST, WHIRLWIND
	dw FEMALE_DVS
	db "TITANIA@"
	db 50
	dw JOLTEON
	db 1 ;male
	db LEFTOVERS
	dw THUNDERBOLT, SHADOW_BALL, BATON_PASS, SUBSTITUTE
	dw MALE_DVS
	db "JAMIE@"
	db 55
	dw RHYDON
	db 1 ;male
	db MUSCLE_BAND
	dw STONE_EDGE, EARTHQUAKE, MEGAHORN, ROCK_POLISH
	dw SHINY_M_DVS
	db "RANDALL@"
	db -1 
	
	end_list_items
	
GreenGroup:
	next_list_item ; BLUE (1)
	db "GREEN@", TRAINERTYPE_ITEM_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 65
	dw BUTTERFREE
	db 1 ;male
	db SILVERPOWDER
	dw SAFEGUARD, SILVER_WIND, PSYBEAM, GIGA_DRAIN
	dw MALE_DVS
	dw 45K, 40K, 55K, 65K, 65K ; 270K
	;   hp, atk, def, spd, spc
	db 65
	dw NIDOQUEEN
	db 1 ;male
	db SOFT_SAND
	dw EARTHQUAKE, SLUDGE_BOMB, MOONLIGHT, COUNTER
	dw MALE_DVS
	dw 60K, 45K, 65K, 55K, 45K ; 270K
	;   hp, atk, def, spd, spc
	db 65
	dw CLEFABLE
	db 0 ;female
	db LEFTOVERS
	dw TRI_ATTACK, LIGHT_SCREEN, THUNDERBOLT, MOONLIGHT
	dw FEMALE_DVS
	dw 60K, 40K, 55K, 50K, 65K ; 270K
	;   hp, atk, def, spd, spc
	db 65
	dw VICTREEBEL
	db 1 ;male
	db MIRACLE_SEED
	dw SUNNY_DAY, MORNING_SUN, LEAF_BLADE, SLUDGE_BOMB
	dw MALE_DVS
	dw 40K, 55K, 50K, 65K, 60K ; 270K
	;   hp, atk, def, spd, spc
	db 70
	dw BLASTOISE
	db 1 ;male
	db MYSTIC_WATER
	dw HYDRO_PUMP, ICE_BEAM, RAPID_SPIN, EARTHQUAKE
	dw MALE_DVS
	dw 60K, 55K, 60K, 40K, 55K ; 270K
	;   hp, atk, def, spd, spc
	db 65
	dw NINETALES
	db 0 ;female
	db CHARCOAL
	dw FIRE_BLAST, PAIN_SPLIT, SOLARBEAM, SHADOW_BALL
	dw FEMALE_DVS
	dw 50K, 35K, 55K, 65K, 65K ; 270K
	;   hp, atk, def, spd, spc
	db -1 ; end


	end_list_items

Gold1Group:
	next_list_item ; GOLD1 (1)
	db "GOLD@", TRAINERTYPE_DVS
	db 13
	dw MARILL
	db 0 ;female
	dw FEMALE_DVS
	db 15
	dw CHIKORITA
	db 1 ;male
	dw MALE_DVS
	db -1 

	next_list_item ; GOLD1 (2)
	db "GOLD@", TRAINERTYPE_DVS
	db 13
	dw MARILL
	db 0 ;female
	dw FEMALE_DVS
	db 15
	dw CYNDAQUIL
	db 1 ;male
	dw MALE_DVS
	db -1 

	next_list_item ; GOLD1 (3)
	db "GOLD@", TRAINERTYPE_DVS
	db 13
	dw MARILL
	db 0 ;female
	dw FEMALE_DVS
	db 15
	dw TOTODILE
	db 0 ;female
	dw FEMALE_DVS
	db -1 
	
	next_list_item ; GOLD2 (4)
	db "GOLD@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw BEEDRILL
	db 1 ;male
	dw SWORDS_DANCE, FELL_STINGER, SLUDGE_BOMB, PURSUIT
	dw MALE_DVS
	dw 25K, 50K, 20K, 50K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw AZUMARILL
	db 0 ;female
	dw RAIN_DANCE, WATERFALL, SUBMISSION, ICE_PUNCH
	dw FEMALE_DVS
	dw 40K, 40K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw AMPHAROS
	db 1 ;male
	dw THUNDER, THUNDER_WAVE, FIRE_PUNCH, DRAGONBREATH
	dw MALE_DVS
	dw 20K, 35K, 25K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MISMAGIUS
	db 0 ;female
	dw CONFUSE_RAY, SHADOW_BALL, FIRE_SPIN, PERISH_SONG
	dw FEMALE_DVS
	dw 20K,   0, 20K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DONPHAN
	db 1 ;male
	dw CURSE, EARTHQUAKE, SLAM, ICE_SHARD
	dw MALE_DVS
	dw 35K, 45K, 40K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MEGANIUM
	db 1 ;male
	dw PETAL_DANCE, MORNING_SUN, DRAGONBREATH, SLAM
	dw MALE_DVS
	dw 30K, 40K, 20K, 30K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	next_list_item ; GOLD2 (5)
	db "GOLD@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw BEEDRILL
	db 1 ;male
	dw SWORDS_DANCE, FELL_STINGER, SLUDGE_BOMB, PURSUIT
	dw MALE_DVS
	dw 25K, 50K, 20K, 50K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw AZUMARILL
	db 0 ;female
	dw RAIN_DANCE, WATERFALL, SUBMISSION, ICE_PUNCH
	dw FEMALE_DVS
	dw 40K, 40K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw AMPHAROS
	db 1 ;male
	dw THUNDER, THUNDER_WAVE, FIRE_PUNCH, DRAGONBREATH
	dw MALE_DVS
	dw 20K, 35K, 25K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MISMAGIUS
	db 0 ;female
	dw CONFUSE_RAY, SHADOW_BALL, FIRE_SPIN, PERISH_SONG
	dw FEMALE_DVS
	dw 20K,   0, 20K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DONPHAN
	db 1 ;male
	dw CURSE, EARTHQUAKE, SLAM, ICE_SHARD
	dw MALE_DVS
	dw 35K, 45K, 40K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw TYPHLOSION
	db 1 ;male
	dw FIRE_BLAST, WILL_O_WISP, AURA_SPHERE, TAKE_DOWN
	dw MALE_DVS
	dw 20K, 20K, 15K, 45K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	next_list_item ; GOLD2 (6)
	db "GOLD@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw BEEDRILL
	db 1 ;male
	dw SWORDS_DANCE, FELL_STINGER, SLUDGE_BOMB, PURSUIT
	dw MALE_DVS
	dw 25K, 50K, 20K, 50K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw AZUMARILL
	db 0 ;female
	dw RAIN_DANCE, WATERFALL, SUBMISSION, ICE_PUNCH
	dw FEMALE_DVS
	dw 40K, 40K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw AMPHAROS
	db 1 ;male
	dw THUNDER, THUNDER_WAVE, FIRE_PUNCH, DRAGONBREATH
	dw MALE_DVS
	dw 20K, 35K, 25K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MISMAGIUS
	db 0 ;female
	dw CONFUSE_RAY, SHADOW_BALL, FIRE_SPIN, PERISH_SONG
	dw FEMALE_DVS
	dw 20K,   0, 20K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DONPHAN
	db 1 ;male
	dw CURSE, EARTHQUAKE, SLAM, ICE_SHARD
	dw MALE_DVS
	dw 35K, 45K, 40K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw FERALIGATR
	db 0 ;female
	dw SURF, ICE_PUNCH, CRUNCH, SCREECH
	dw FEMALE_DVS
	dw 25K, 50K, 20K, 30K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end
	
	end_list_items
	
Kris1Group:
	next_list_item ; KRIS1 (1)
	db "KRIS@", TRAINERTYPE_DVS
	db 13
	dw MARILL
	db 0 ;female
	dw FEMALE_DVS
	db 15
	dw CHIKORITA
	db 1 ;male
	dw MALE_DVS
	db -1 

	next_list_item ; KRIS1 (2)
	db "KRIS@", TRAINERTYPE_DVS
	db 13
	dw MARILL
	db 0 ;female
	dw FEMALE_DVS
	db 15
	dw CYNDAQUIL
	db 1 ;male
	dw MALE_DVS
	db -1 

	next_list_item ; KRIS1 (3)
	db "KRIS@", TRAINERTYPE_DVS
	db 13
	dw MARILL
	db 0 ;female
	dw FEMALE_DVS
	db 15
	dw TOTODILE
	db 0 ;female
	dw FEMALE_DVS
	db -1 
	
	next_list_item ; KRIS2 (4)
	db "KRIS@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw BEEDRILL
	db 1 ;male
	dw SWORDS_DANCE, FELL_STINGER, SLUDGE_BOMB, PURSUIT
	dw MALE_DVS
	dw 25K, 50K, 20K, 50K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw AZUMARILL
	db 0 ;female
	dw RAIN_DANCE, WATERFALL, SUBMISSION, ICE_PUNCH
	dw FEMALE_DVS
	dw 40K, 40K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw AMPHAROS
	db 1 ;male
	dw THUNDER, THUNDER_WAVE, FIRE_PUNCH, DRAGONBREATH
	dw MALE_DVS
	dw 20K, 35K, 25K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MISMAGIUS
	db 0 ;female
	dw CONFUSE_RAY, SHADOW_BALL, FIRE_SPIN, PERISH_SONG
	dw FEMALE_DVS
	dw 20K,   0, 20K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DONPHAN
	db 1 ;male
	dw CURSE, EARTHQUAKE, SLAM, ICE_SHARD
	dw MALE_DVS
	dw 35K, 45K, 40K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw MEGANIUM
	db 1 ;male
	dw PETAL_DANCE, MORNING_SUN, DRAGONBREATH, SLAM
	dw MALE_DVS
	dw 30K, 40K, 20K, 30K, 30K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	next_list_item ; KRIS2 (5)
	db "KRIS@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw BEEDRILL
	db 1 ;male
	dw SWORDS_DANCE, FELL_STINGER, SLUDGE_BOMB, PURSUIT
	dw MALE_DVS
	dw 25K, 50K, 20K, 50K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw AZUMARILL
	db 0 ;female
	dw RAIN_DANCE, WATERFALL, SUBMISSION, ICE_PUNCH
	dw FEMALE_DVS
	dw 40K, 40K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw AMPHAROS
	db 1 ;male
	dw THUNDER, THUNDER_WAVE, FIRE_PUNCH, DRAGONBREATH
	dw MALE_DVS
	dw 20K, 35K, 25K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MISMAGIUS
	db 0 ;female
	dw CONFUSE_RAY, SHADOW_BALL, FIRE_SPIN, PERISH_SONG
	dw FEMALE_DVS
	dw 20K,   0, 20K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DONPHAN
	db 1 ;male
	dw CURSE, EARTHQUAKE, SLAM, ICE_SHARD
	dw MALE_DVS
	dw 35K, 45K, 40K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw TYPHLOSION
	db 1 ;male
	dw FIRE_BLAST, WILL_O_WISP, AURA_SPHERE, TAKE_DOWN
	dw MALE_DVS
	dw 20K, 20K, 15K, 45K, 50K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end

	next_list_item ; KRIS2 (6)
	db "KRIS@", TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 50
	dw BEEDRILL
	db 1 ;male
	dw SWORDS_DANCE, FELL_STINGER, SLUDGE_BOMB, PURSUIT
	dw MALE_DVS
	dw 25K, 50K, 20K, 50K, 15K ; 160k
	;   hp, atk, def, spd, spc
	db 50
	dw AZUMARILL
	db 0 ;female
	dw RAIN_DANCE, WATERFALL, SUBMISSION, ICE_PUNCH
	dw FEMALE_DVS
	dw 40K, 40K, 20K, 30K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw AMPHAROS
	db 1 ;male
	dw THUNDER, THUNDER_WAVE, FIRE_PUNCH, DRAGONBREATH
	dw MALE_DVS
	dw 20K, 35K, 25K, 30K, 40K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw MISMAGIUS
	db 0 ;female
	dw CONFUSE_RAY, SHADOW_BALL, FIRE_SPIN, PERISH_SONG
	dw FEMALE_DVS
	dw 20K,   0, 20K, 55K, 55K ; 150k
	;   hp, atk, def, spd, spc
	db 50
	dw DONPHAN
	db 1 ;male
	dw CURSE, EARTHQUAKE, SLAM, ICE_SHARD
	dw MALE_DVS
	dw 35K, 45K, 40K, 10K, 20K ; 150k
	;   hp, atk, def, spd, spc
	db 55
	dw FERALIGATR
	db 0 ;female
	dw SURF, ICE_PUNCH, CRUNCH, SCREECH
	dw FEMALE_DVS
	dw 25K, 50K, 20K, 30K, 25K ; 150k
	;   hp, atk, def, spd, spc
	db -1 ; end
	
	end_list_items
	