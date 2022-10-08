probwed: MACRO
prob_totalwed = prob_totalwed + (\1)
	dw prob_totalwed * $ffff / 100
ENDM

EggMoveEggProbabilitiesWednesday:
prob_totalwed = 0
; Chikorita
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 2
; Magby
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Goldeen
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Jigglypuff
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Aipom
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Hoothoot
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 2
; Yanma
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 2
; Qwilfish
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Sneasel
	probwed 1
	probwed 1
	probwed 1
	probwed 1
	probwed 1
	probwed 1
	probwed 1
; Grimer
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Staryu
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Aerodactyl
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Rhyhorn
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Heracross
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Chinchou
	probwed 2
	probwed 2
	probwed 1
	probwed 2
	
	
; psychic, fire	
EggMoveEggSpeciesWednesday:
	dw CHIKORITA     ;1
	dw CHIKORITA     ;2
	dw CHIKORITA     ;3
	dw CHIKORITA     ;4
	dw CHIKORITA     ;5
	dw MAGBY         ;6
	dw MAGBY         ;7
	dw MAGBY         ;8
	dw MAGBY         ;9
	dw GOLDEEN       ;10
	dw GOLDEEN       ;11
	dw GOLDEEN       ;12
	dw GOLDEEN       ;13
	dw JIGGLYPUFF    ;14
	dw JIGGLYPUFF    ;15
	dw JIGGLYPUFF    ;16
	dw JIGGLYPUFF    ;17
	dw AIPOM         ;18
	dw AIPOM         ;19
	dw AIPOM         ;20
	dw AIPOM         ;21
	dw HOOTHOOT      ;22
	dw HOOTHOOT      ;23
	dw HOOTHOOT      ;24
	dw HOOTHOOT      ;25
	dw HOOTHOOT      ;26
	dw YANMA         ;27
	dw YANMA         ;28
	dw YANMA         ;29
	dw YANMA         ;30
	dw YANMA         ;31
	dw QWILFISH      ;32
	dw QWILFISH      ;33
	dw QWILFISH      ;34
	dw QWILFISH      ;35
	dw SNEASEL       ;36
	dw SNEASEL       ;37
	dw SNEASEL       ;38
	dw SNEASEL       ;39
	dw SNEASEL       ;40
	dw SNEASEL       ;41
	dw SNEASEL       ;42
	dw GRIMER        ;43
	dw GRIMER        ;44
	dw GRIMER        ;45
	dw GRIMER        ;46
	dw STARYU        ;47
	dw STARYU        ;48
	dw STARYU        ;49
	dw STARYU        ;50
	dw AERODACTYL    ;51
	dw AERODACTYL    ;52
	dw AERODACTYL    ;53
	dw AERODACTYL    ;54
	dw RHYHORN       ;55
	dw RHYHORN       ;56
	dw RHYHORN       ;57
	dw RHYHORN       ;58
	dw HERACROSS     ;59
	dw HERACROSS     ;60
	dw HERACROSS     ;61
	dw HERACROSS     ;62
	dw CHINCHOU      ;63
	dw CHINCHOU      ;64
	dw CHINCHOU      ;65
	dw CHINCHOU      ;66

EggMoveEggsWednesday:

	; Chikorita1
	db TACKLE, POISONPOWDER, ENDURE, FLAIL
	
	; Chikorita2
	db TACKLE, GROWL, DRAGON_DANCE, VINE_WHIP
	
	; Chikorita3
	db TACKLE, GROWL, SING, TAKE_DOWN
	
	; Chikorita4
	db TACKLE, SWEET_SCENT, SNORE, THRASH
	
	; Chikorita5
	db TACKLE, GROWL, LEECH_SEED, ANCIENTPOWER
	
	; Magby1
	db EMBER, LEER, SCREECH, LOW_KICK
	
	; Magby2
	db EMBER, LEER, BELLY_DRUM, MACH_PUNCH
	
	; Magby3
	db EMBER, LEER, FOCUS_ENERGY, POWERUPPUNCH
	
	; Magby4
	db EMBER, LEER, ENDURE, CROSS_CHOP
	
	; Goldeen1
	db PECK, TAIL_WHIP, HAZE, PSYBEAM
	
	; Goldeen2
	db PECK, TAIL_WHIP, MUD_SHOT, POISON_JAB
	
	; Goldeen3
	db PECK, TAIL_WHIP, SLAM, MAGNITUDE
	
	; Goldeen4
	db PECK, TAIL_WHIP, SPLASH, HYDRO_PUMP
	
	; Jigglypuff1
	db SING, POUND, PRESENT, PSYCH_UP
	
	; Jigglypuff2
	db SING, POUND, PETAL_DANCE, MOONLIGHT
	
	; Jigglypuff3
	db SING, POUND, SPARK, POWERUPPUNCH
	
	; Jigglypuff4
	db SING, POUND, PERISH_SONG, FAINT_ATTACK
	
	; Aipom1
	db SCRATCH, TAIL_WHIP, SPITE, BEAT_UP
	
	; Aipom2
	db SCRATCH, TAIL_WHIP, SPARK, SLAM
	
	; Aipom3
	db SCRATCH, TAIL_WHIP, GROWL, FAINT_ATTACK
	
	; Aipom4
	db SCRATCH, TAIL_WHIP, PURSUIT, LOW_KICK
	
	; Hoothoot1
	db TACKLE, GROWL, SUPERSONIC, SKY_ATTACK
	
	; Hoothoot2
	db TACKLE, GROWL, RECOVER, PSYBEAM
	
	; Hoothoot3
	db TACKLE, GROWL, AGILITY, MIRROR_MOVE
	
	; Hoothoot4
	db TACKLE, GROWL, FEATHERDANCE, MIRROR_MOVE
	
	; Hoothoot5
	db TACKLE, GROWL, FAINT_ATTACK, WHIRLWIND
	
	; Yanma1
	db TACKLE, FORESIGHT, TAKE_DOWN, WHIRLWIND
	
	; Yanma2
	db TACKLE, GUST, SILVER_WIND, REVERSAL
	
	; Yanma3
	db TACKLE, FORESIGHT, LEECH_LIFE, FAINT_ATTACK
	
	; Yanma4
	db TACKLE, FORESIGHT, SNORE, PSYBEAM
	
	; Yanma5
	db TACKLE, FORESIGHT, CONFUSION, SWEET_KISS
	
	; Qwilfish1
	db TACKLE, POISON_STING, SPARK, SUPERSONIC
	
	; Qwilfish2
	db TACKLE, POISON_STING, HAZE, BUBBLEBEAM
	
	; Qwilfish3
	db TACKLE, POISON_STING, ASTONISH, THRASH
	
	; Qwilfish4
	db TACKLE, FLAIL, DEFENSE_CURL, ROLLOUT
	
	; Sneasel1
	db SCRATCH, LEER, PSYCHO_CUT, PSYCH_UP
	
	; Sneasel2
	db SCRATCH, LEER, BITE, MOONLIGHT
	
	; Sneasel3
	db SCRATCH, LEER, SPITE, SHADOW_PUNCH
	
	; Sneasel4
	db SCRATCH, LEER, FORESIGHT, LOW_KICK
	
	; Sneasel5
	db SCRATCH, LEER, POWERUPPUNCH, X_SCISSOR
	
	; Sneasel6
	db SCRATCH, LEER, DOUBLE_KICK, POISON_JAB
	
	; Sneasel7
	db SCRATCH, LEER, POWDER_SNOW, ICICLE_CRASH
	
	; Grimer1
	db SMOG, POUND, MEAN_LOOK, SHADOW_PUNCH
	
	; Grimer2
	db SMOG, POUND, LICK, PURSUIT
	
	; Grimer3
	db SMOG, POUND, FAINT_ATTACK, HAZE
	
	; Grimer4
	db SMOG, POUND, POWERUPPUNCH, SLAM
	
	; Staryu1
	db TACKLE, ENDURE, SUPERSONIC, PSYCH_UP
	
	; Staryu2
	db TACKLE, HARDEN, SAFEGUARD, PSYBEAM
	
	; Staryu3
	db TACKLE, HARDEN, HAZE, AURORA_BEAM
	
	; Staryu4
	db TACKLE, HARDEN, MIST, ICE_SHARD
	
	; Aerodactyl1
	db BITE, LEER, WHIRLWIND, SKY_ATTACK
	
	; Aerodactyl2
	db BITE, LEER, FORESIGHT, TRI_ATTACK
	
	; Aerodactyl3
	db BITE, LEER, EMBER, PURSUIT
	
	; Aerodactyl4
	db BITE, LEER, DRAGON_DANCE, ROCK_THROW
	
	; Rhyhorn1
	db HORN_ATTACK, TAIL_WHIP, ENDURE, REVERSAL
	
	; Rhyhorn2
	db HORN_ATTACK, TAIL_WHIP, PURSUIT, ICE_FANG
	
	; Rhyhorn3
	db HORN_ATTACK, TAIL_WHIP, SNORE, CRUNCH
	
	; Rhyhorn4
	db HORN_ATTACK, TAIL_WHIP, THRASH, ROLLOUT
	
	; Heracross1
	db TACKLE, LEER, FLAIL, SLAM
	
	; Heracross2
	db TACKLE, HARDEN, PURSUIT, SILVER_WIND
	
	; Heracross3
	db TACKLE, LEER, LOW_KICK, FALSE_SWIPE
	
	; Heracross4
	db TACKLE, LEER, CROSS_CHOP, METAL_CLAW
	
	; Chinchou1
	db BUBBLE, SUPERSONIC, RECOVER, ENDURE
	
	; Chinchou2
	db BUBBLE, SUPERSONIC, HAZE, FAINT_ATTACK
	
	; Chinchou3
	db BUBBLE, SUPERSONIC, PSYBEAM, AGILITY
	
	; Chinchou4
	db BUBBLE, SUPERSONIC, SCREECH, AMNESIA
	