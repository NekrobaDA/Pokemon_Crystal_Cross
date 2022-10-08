probsun: MACRO
prob_totalsun = prob_totalsun + (\1)
	dw prob_totalsun * $ffff / 100
ENDM

EggMoveEggProbabilitiesSunday:
prob_totalsun = 0
; Bulbasaur
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Vulpix
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Psyduck
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Rattata
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Munchlax
	probsun 2
	probsun 1
	probsun 2
; Spearow
	probsun 1
	probsun 1
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Caterpie
	probsun 3
	probsun 3
; Pichu
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Eevee
	probsun 5
; NidoranF
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Mankey
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Slowpoke
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Omanyte
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Gligar
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Shellder
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Gastly
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Magikarp
	probsun 3
	probsun 3
	
	
EggMoveEggSpeciesSunday:
	dw BULBASAUR    ;1
	dw BULBASAUR    ;2
	dw BULBASAUR    ;3
	dw BULBASAUR    ;4
	dw VULPIX       ;5
	dw VULPIX       ;6
	dw VULPIX       ;7
	dw VULPIX       ;8
	dw PSYDUCK      ;9
	dw PSYDUCK      ;10
	dw PSYDUCK      ;11
	dw PSYDUCK      ;12
	dw PSYDUCK      ;13
	dw RATTATA      ;14
	dw RATTATA      ;15
	dw RATTATA      ;16
	dw RATTATA      ;17
	dw MUNCHLAX     ;18
	dw MUNCHLAX     ;19
	dw MUNCHLAX     ;20
	dw SPEAROW      ;21
	dw SPEAROW      ;22
	dw SPEAROW      ;23
	dw SPEAROW      ;24
	dw SPEAROW      ;25
	dw SPEAROW      ;26
	dw CATERPIE     ;27
	dw CATERPIE     ;28
	dw PICHU        ;29
	dw PICHU        ;30
	dw PICHU        ;31
	dw PICHU        ;32
	dw PICHU        ;33
	dw EEVEE        ;34
	dw NIDORAN_F    ;35
	dw NIDORAN_F    ;36
	dw NIDORAN_F    ;37
	dw NIDORAN_F    ;38
	dw NIDORAN_F    ;39
	dw MANKEY       ;40
	dw MANKEY       ;41
	dw MANKEY       ;42
	dw MANKEY       ;43
	dw SLOWPOKE     ;44
	dw SLOWPOKE     ;45
	dw SLOWPOKE     ;46
	dw SLOWPOKE     ;47
	dw OMANYTE      ;48
	dw OMANYTE      ;49
	dw OMANYTE      ;50
	dw OMANYTE      ;51
	dw GLIGAR       ;52
	dw GLIGAR       ;53
	dw GLIGAR       ;54
	dw GLIGAR       ;55
	dw GLIGAR       ;56
	dw SHELLDER     ;57
	dw SHELLDER     ;58
	dw SHELLDER     ;59
	dw SHELLDER     ;60
	dw GASTLY       ;61
	dw GASTLY       ;62
	dw GASTLY       ;63
	dw GASTLY       ;64
	dw MAGIKARP     ;65
	dw MAGIKARP     ;66
	

EggMoveEggsSunday:

	; Bulbasaur1
	db TACKLE, GROWL, ENDURE, SLAM
	
	; Bulbasaur2
	db TACKLE, GROWL, CHARM, SNORE
	
	; Bulbasaur3
	db TACKLE, STUN_SPORE, PETAL_DANCE, SAFEGUARD
	
	; Bulbasaur4
	db TACKLE, GROWL, AMNESIA, SLUDGE 

	; Vulpix1
	db EMBER, TAIL_WHIP, HOWL, PURSUIT
	
	; Vulpix2
	db EMBER, DISABLE, CHARM, FLAIL
	
	; Vulpix3
	db EMBER, TAIL_WHIP, LICK, DESTINY_BOND
	
	; Vulpix4
	db EMBER, TAIL_WHIP, CONFUSION, HYPNOSIS

	; Psyduck1
	db SCRATCH, TAIL_WHIP, FORESIGHT, HYPNOSIS
	
	; Psyduck2
	db SCRATCH, TAIL_WHIP, TRI_ATTACK, ENCORE
	
	; Psyduck3
	db SCRATCH, TAIL_WHIP, POWERUPPUNCH, ENDURE
	
	; Psyduck4
	db SCRATCH, TAIL_WHIP, CONFUSE_RAY, MUD_SHOT
	
	; Psyduck5
	db SCRATCH, TAIL_WHIP, CROSS_CHOP, SPITE

	; Rattata1
	db TACKLE, TAIL_WHIP, SCREECH, REVERSAL

	; Rattata2
	db TACKLE, TAIL_WHIP, LEER, FLAME_WHEEL

	; Rattata3
	db TACKLE, TAIL_WHIP, SCREECH, SPARK
	
	; Rattata4
	db TACKLE, TAIL_WHIP, POISON_FANG, FURY_SWIPES

	; Munchlax1
	db TACKLE, DEFENSE_CURL, CHARM, PRESENT
	
	; Munchlax2
	db TACKLE, DEFENSE_CURL, PURSUIT, WHIRLWIND
	
	; Munchlax3
	db TACKLE, DEFENSE_CURL, SPLASH, POWERUPPUNCH
	
	; Spearow1
	db PECK, GROWL, ENDURE, SONICBOOM
	
	; Spearow2
	db PECK, GROWL, SCARY_FACE, FAINT_ATTACK

	; Spearow3
	db PECK, GROWL, FEATHERDANCE, QUICK_ATTACK	
	
	; Spearow4
	db PECK, GROWL, TRI_ATTACK, SUPERSONIC	
	
	; Spearow5
	db PECK, GROWL, ASTONISH, WHIRLWIND

	; Spearow6
	db PECK, GROWL, BATON_PASS, FALSE_SWIPE

	; Caterpie1
	db TACKLE, STRING_SHOT, CONFUSION, SLUDGE
	
	; Caterpie2
	db TACKLE, STRING_SHOT, LEECH_LIFE, SLUDGE

	; Pichu1
	db THUNDERSHOCK, CHARM, PRESENT, REVERSAL

	; Pichu2
	db THUNDERSHOCK, CHARM, ENCORE, PETAL_DANCE

	; Pichu3
	db THUNDERSHOCK, CHARM, ENDURE, POWERUPPUNCH

	; Pichu4
	db THUNDERSHOCK, CHARM, SING, METRONOME

	; Pichu5
	db THUNDERSHOCK, CHARM, SCARY_FACE, FLAIL
	
	; Eevee1
	db TACKLE, TAIL_WHIP, SING, PAY_DAY

	; NidoranF1
	db TACKLE, TAIL_WHIP, ENDURE, MOONLIGHT

	; NidoranF2
	db TACKLE, TAIL_WHIP, TAKE_DOWN, FOCUS_ENERGY

	; NidoranF3
	db TACKLE, TAIL_WHIP, DISABLE, BEAT_UP

	; NidoranF4
	db TACKLE, TAIL_WHIP, PURSUIT, SUPERSONIC

	; NidoranF5
	db TACKLE, TAIL_WHIP, SUPER_FANG, SWEET_KISS

	; Mankey1
	db SCRATCH, LEER, ENDURE, REVERSAL

	; Mankey2
	db SCRATCH, ENCORE, SLAM, BELLY_DRUM	
	
	; Mankey3
	db SCRATCH, LEER, FORESIGHT, BEAT_UP

	; Mankey4
	db SCRATCH, LEER, POISON_JAB, PSYCH_UP

	; Slowpoke1
	db TACKLE, GROWL, BELLY_DRUM, STOMP

	; Slowpoke2
	db TACKLE, GROWL, SLAM, ENDURE

	; Slowpoke3
	db TACKLE, GROWL, SNORE, HYPNOSIS

	; Slowpoke4
	db TACKLE, GROWL, MUD_SHOT, SAFEGUARD

	; Omanyte1
	db WRAP, LEER, ENDURE, BUBBLEBEAM

	; Omanyte2
	db WRAP, BUBBLE, IRON_DEFENSE, SLAM

	; Omanyte3
	db WRAP, LEER, SUPERSONIC, AURORA_BEAM

	; Omanyte4
	db WRAP, LEER, ROCK_THROW, RAZOR_SHELL

	; Gligar1
	db POISON_STING, SAND_ATTACK, METAL_CLAW, BATON_PASS

	; Gligar2
	db POISON_STING, LICK, ENDURE, FLAIL

	; Gligar3
	db POISON_STING, SAND_ATTACK, BITE, TAKE_DOWN

	; Gligar4
	db POISON_STING, SAND_ATTACK, AGILITY, LEECH_LIFE

	; Gligar5
	db POISON_STING, SAND_ATTACK, POISON_FANG, MUD_SHOT

	; Shellder1
	db TACKLE, HARDEN, ENDURE, TAKE_DOWN

	; Shellder2
	db TACKLE, HARDEN, SCREECH, BUBBLEBEAM

	; Shellder3
	db TACKLE, HARDEN, RAPID_SPIN, TWINEEDLE

	; Shellder4
	db TACKLE, HARDEN, MUD_SHOT, SAFEGUARD

	; Gastly1
	db LICK, SPITE, DISABLE, CONFUSION

	; Gastly2
	db LICK, HAZE, SCARY_FACE, BEAT_UP
	
	; Gastly3
	db LICK, SPITE, HEX, PERISH_SONG

	; Gastly4
	db LICK, SPITE, ASTONISH, PSYCH_UP

	; Magikarp1
	db SPLASH, TACKLE, TWISTER, HYDRO_PUMP

	; Magikarp2
	db SPLASH, TACKLE, DRAGON_RAGE, REVERSAL
	