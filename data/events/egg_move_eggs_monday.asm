probmon: MACRO
prob_totalmon = prob_totalmon + (\1)
	dw prob_totalmon * $ffff / 100
ENDM

EggMoveEggProbabilitiesMonday:
prob_totalmon = 0
; Oddish
	probmon 3
	probmon 2
; Charmander
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Krabby
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Clefairy
	probmon 2
	probmon 1
	probmon 1
	probmon 2
; Mooby
	probmon 2
	probmon 1
	probmon 2
; Zubat
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Weedle
	probmon 3
	probmon 3
; Scyther
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Rinrin
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Koffing
	probmon 2
	probmon 1
	probmon 2
; Farfetchd
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Drowzee
	probmon 3
	probmon 2
; Kabuto
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Diglett
	probmon 2
	probmon 1
	probmon 1
	probmon 2
; Mareep
	probmon 2
	probmon 1
	probmon 1
	probmon 2
; Misdreavus
	probmon 2
	probmon 1
	probmon 1
	probmon 2
; Swinub
	probmon 2
	probmon 1
	probmon 2
; Eevee
	probmon 5
	
	
; flying, dragon
EggMoveEggSpeciesMonday:
	dw ODDISH      ;1
	dw ODDISH      ;2
	dw CHARMANDER  ;3
	dw CHARMANDER  ;4
	dw CHARMANDER  ;5
	dw CHARMANDER  ;6
	dw CHARMANDER  ;7
	dw KRABBY      ;8
	dw KRABBY      ;9
	dw KRABBY      ;10
	dw KRABBY      ;11
	dw KRABBY      ;12
	dw CLEFAIRY    ;13
	dw CLEFAIRY    ;14
	dw CLEFAIRY    ;15
	dw CLEFAIRY    ;16
	dw MOOBY       ;17
	dw MOOBY       ;18
	dw MOOBY       ;19
	dw ZUBAT       ;20
	dw ZUBAT       ;21
	dw ZUBAT       ;22
	dw ZUBAT       ;23
	dw ZUBAT       ;24
	dw WEEDLE      ;25
	dw WEEDLE      ;26
	dw SCYTHER     ;27
	dw SCYTHER     ;28
	dw SCYTHER     ;29
	dw SCYTHER     ;30
	dw SCYTHER     ;31
	dw RINRIN      ;32
	dw RINRIN      ;33
	dw RINRIN      ;34
	dw RINRIN      ;35
	dw KOFFING     ;36
	dw KOFFING     ;37
	dw KOFFING     ;38
	dw FARFETCH_D  ;39
	dw FARFETCH_D  ;40
	dw FARFETCH_D  ;41
	dw FARFETCH_D  ;42
	dw FARFETCH_D  ;43
	dw DROWZEE     ;44
	dw DROWZEE     ;45
	dw KABUTO      ;46
	dw KABUTO      ;47
	dw KABUTO      ;48
	dw KABUTO      ;49
	dw KABUTO      ;50
	dw DIGLETT     ;51
	dw DIGLETT     ;52
	dw DIGLETT     ;53
	dw DIGLETT     ;54
	dw MAREEP      ;55
	dw MAREEP      ;56
	dw MAREEP      ;57
	dw MAREEP      ;58
	dw MISDREAVUS  ;59
	dw MISDREAVUS  ;60
	dw MISDREAVUS  ;61
	dw MISDREAVUS  ;62
	dw SWINUB      ;63
	dw SWINUB      ;64
	dw SWINUB      ;65
	dw EEVEE       ;66
	

EggMoveEggsMonday:

	; Oddish1
	db ABSORB, CHARM, RAZOR_LEAF, SPORE
	
	; Oddish2
	db ABSORB, GROWTH, LEECH_SEED, SMOG
	
	; Charmander1
	db SCRATCH, GROWL, DRAGON_DANCE, CRUNCH
	
	; Charmander2
	db SCRATCH, GROWL, BELLY_DRUM, BEAT_UP
	
	; Charmander3
	db SCRATCH, GROWL, POWERUPPUNCH, FURY_SWIPES
	
	; Charmander4
	db SCRATCH, GROWL, BITE, SNORE
	
	; Charmander5
	db SCRATCH, GROWL, ENDURE, ANCIENTPOWER
	
	; Krabby1
	db BUBBLE, LEER, ENDURE, REVERSAL
	
	; Krabby2
	db BUBBLE, LEER, AMNESIA, CONFUSION

	; Krabby3
	db BUBBLE, LEER, AGILITY, RAZOR_SHELL

	; Krabby4
	db BUBBLE, LEER, IRON_DEFENSE, ANCIENTPOWER

	; Krabby5
	db BUBBLE, LEER, HAZE, RAZOR_SHELL
	
	; Clefairy1
	db POUND, DEFENSE_CURL, PRESENT, BELLY_DRUM

	; Clefairy2
	db POUND, DEFENSE_CURL, RECOVER, PETAL_DANCE

	; Clefairy3
	db POUND, DEFENSE_CURL, MIRROR_COAT, PSYCH_UP

	; Clefairy4
	db POUND, DEFENSE_CURL, AMNESIA, POWERUPPUNCH
	
	; Mooby1
	db TACKLE, GROWL, ENDURE, REVERSAL

	; Mooby2
	db TACKLE, GROWL, QUICK_ATTACK, MAGNITUDE

	; Mooby3
	db TACKLE, GROWL, SPARK, REVERSAL
	
	; Zubat1
	db ASTONISH, SUPERSONIC, GUST, WHIRLWIND

	; Zubat2
	db ASTONISH, SUPERSONIC, HYPNOSIS, FAINT_ATTACK

	; Zubat3
	db ASTONISH, SUPERSONIC, QUICK_ATTACK, FLAIL

	; Zubat4
	db ASTONISH, SUPERSONIC, ABSORB, PURSUIT

	; Zubat5
	db ASTONISH, SUPERSONIC, MIRROR_MOVE, SKY_ATTACK
	
	; Weedle1
	db POISON_STING, STRING_SHOT, LEECH_LIFE, SLUDGE

	; Weedle2
	db POISON_STING, STRING_SHOT, MEGAHORN, SLUDGE
	
	; Scyher1
	db QUICK_ATTACK, LEER, ENDURE, REVERSAL

	; Scyher2
	db QUICK_ATTACK, LEER, SILVER_WIND, BATON_PASS

	; Scyher3
	db QUICK_ATTACK, LEER, SAFEGUARD, BUG_BUZZ

	; Scyher4
	db QUICK_ATTACK, LEER, TAKE_DOWN, MORNING_SUN

	; Scyher5
	db QUICK_ATTACK, LEER, METAL_CLAW, SONICBOOM
	
	; Rinrin1
	db SCRATCH, GROWL, SING, PAY_DAY

	; Rinrin2
	db SCRATCH, GROWL, HYPNOSIS, PSYCH_UP

	; Rinrin3
	db SCRATCH, GROWL, AMNESIA, MOONLIGHT
	
	; Rinrin4
	db SCRATCH, SPITE, PURSUIT, PERISH_SONG
	
	; Koffing1
	db TACKLE, SMOG, SPITE, SCREECH
	
	; Koffing2
	db TACKLE, SMOG, SPITE, PSYBEAM

	; Koffing3
	db TACKLE, SMOG, FIRE_SPIN, SUPERSONIC
	
	; Farfetchd1
	db PECK, SAND_ATTACK, FORESIGHT, MIRROR_MOVE

	; Farfetchd2
	db PECK, SAND_ATTACK, POISON_JAB, PSYCH_UP

	; Farfetchd3
	db PECK, SAND_ATTACK, GUST, FEATHERDANCE

	; Farfetchd4
	db PECK, SAND_ATTACK, ENDURE, FLAIL

	; Farfetchd5
	db PECK, SAND_ATTACK, QUICK_ATTACK, SKY_ATTACK
	
	; Drowzee1
	db POUND, HYPNOSIS, AMNESIA, LOW_KICK

	; Drowzee2
	db POUND, HYPNOSIS, SNORE, POWERUPPUNCH
	
	; Kabuto1
	db SCRATCH, BUBBLE, IRON_DEFENSE, FLAIL

	; Kabuto2
	db SCRATCH, HARDEN, FORESIGHT, BUBBLEBEAM

	; Kabuto3
	db SCRATCH, HARDEN, HAZE, AURORA_BEAM

	; Kabuto4
	db SCRATCH, HARDEN, ROCK_THROW, RAPID_SPIN

	; Kabuto5
	db SCRATCH, HARDEN, ROLLOUT, CONFUSE_RAY

	; Diglett1
	db SCRATCH, GROWL, ENDURE, REVERSAL
	
	; Diglett2
	db SCRATCH, GROWL, BEAT_UP, SCREECH
	
	; Diglett3
	db SCRATCH, GROWL, ASTONISH, ROCK_THROW
	
	; Diglett4
	db SCRATCH, GROWL, ANCIENTPOWER, FALSE_SWIPE

	; Mareep1
	db TACKLE, GROWL, SAFEGUARD, HYPNOSIS

	; Mareep2
	db TACKLE, GROWL, DEFENSE_CURL, ENDURE

	; Mareep3
	db TACKLE, GROWL, SCREECH, SLAM

	; Mareep4
	db TACKLE, GROWL, SAND_ATTACK, AGILITY

	; Misdreavus1
	db GROWL, CONFUSION, HAZE, SMOG

	; Misdreavus2
	db GROWL, CONFUSION, DESTINY_BOND, FORESIGHT

	; Misdreavus3
	db GROWL, CONFUSION, PSYCH_UP, HYPNOSIS

	; Misdreavus4
	db GROWL, CONFUSION, SMOKESCREEN, MEGA_DRAIN

	; Swinub1
	db TACKLE, SAND_ATTACK, HOWL, BITE

	; Swinub2
	db TACKLE, DEFENSE_CURL, CHARM, SLAM

	; Swinub3
	db TACKLE, SAND_ATTACK, WHIRLWIND, ANCIENTPOWER

	; Eevee2
	db TACKLE, TAIL_WHIP, ENDURE, REVERSAL
	