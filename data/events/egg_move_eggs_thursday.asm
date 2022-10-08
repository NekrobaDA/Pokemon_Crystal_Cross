probthu: MACRO
prob_totalthu = prob_totalthu + (\1)
	dw prob_totalthu * $ffff / 100
ENDM

EggMoveEggProbabilitiesThursday:
prob_totalthu = 0
; Hoppip
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Cyndaquil
	probthu 2
	probthu 2
	probthu 1
	probthu 2
; Remoraid
	probthu 2
	probthu 1
	probthu 1
	probthu 2
; Happiny
	probthu 2
	probthu 2
	probthu 2
; Snubbull
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Mantyke
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Pinsir
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; VulpixA
	probthu 2
	probthu 2
	probthu 1
	probthu 2
; Girafarig
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Ekans
	probthu 2
	probthu 2
	probthu 1
	probthu 2
; Seel
	probthu 2
	probthu 1
	probthu 1
	probthu 2
; Elekid
	probthu 2
	probthu 2
	probthu 2
; Stantler
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Wooper
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 1
; GrowlitheH
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
	
	
; ghost, ice, water	
EggMoveEggSpeciesThursday:
	dw HOPPIP        ;1
	dw HOPPIP        ;2
	dw HOPPIP        ;3
	dw HOPPIP        ;4
	dw HOPPIP        ;5
	dw CYNDAQUIL     ;6
	dw CYNDAQUIL     ;7
	dw CYNDAQUIL     ;8
	dw CYNDAQUIL     ;9
	dw REMORAID      ;10
	dw REMORAID      ;11
	dw REMORAID      ;12
	dw REMORAID      ;13
	dw HAPPINY       ;14
	dw HAPPINY       ;15
	dw HAPPINY       ;16
	dw SNUBBULL      ;17
	dw SNUBBULL      ;18
	dw SNUBBULL      ;19
	dw SNUBBULL      ;20
	dw SNUBBULL      ;21
	dw MANTYKE       ;22
	dw MANTYKE       ;23
	dw MANTYKE       ;24
	dw MANTYKE       ;25
	dw MANTYKE       ;26
	dw PINSIR        ;27
	dw PINSIR        ;28
	dw PINSIR        ;29
	dw PINSIR        ;30
	dw PINSIR        ;31
	dw VULPIX_ALOLAN ;32
	dw VULPIX_ALOLAN ;33
	dw VULPIX_ALOLAN ;34
	dw VULPIX_ALOLAN ;35
	dw GIRAFARIG     ;36
	dw GIRAFARIG     ;37
	dw GIRAFARIG     ;38
	dw GIRAFARIG     ;39
	dw GIRAFARIG     ;40
	dw EKANS         ;41
	dw EKANS         ;42
	dw EKANS         ;43
	dw EKANS         ;44
	dw SEEL          ;45
	dw SEEL          ;46
	dw SEEL          ;47
	dw SEEL          ;48
	dw ELEKID        ;49
	dw ELEKID        ;50
	dw ELEKID        ;51
	dw STANTLER      ;52
	dw STANTLER      ;53
	dw STANTLER      ;54
	dw STANTLER      ;55
	dw STANTLER      ;56
	dw WOOPER        ;57
	dw WOOPER        ;58
	dw WOOPER        ;59
	dw WOOPER        ;60
	dw WOOPER        ;61
	dw GROWLITHE_HISUIAN ;62
	dw GROWLITHE_HISUIAN ;63
	dw GROWLITHE_HISUIAN ;64
	dw GROWLITHE_HISUIAN ;65
	dw GROWLITHE_HISUIAN ;66
	

EggMoveEggsThursday:

	; Hoppip1
	db SPLASH, TACKLE, ENCORE, PAY_DAY
	
	; Hoppip2
	db GROWL, TACKLE, SWEET_SCENT, SILVER_WIND
	
	; Hoppip3
	db SPLASH, TACKLE, CONFUSION, AMNESIA
	
	; Hoppip4
	db SPLASH, TACKLE, AGILITY, RAZOR_LEAF
	
	; Hoppip5
	db SPLASH, TACKLE, SPORE, ENDURE
	
	; Cyndaquil1
	db TACKLE, LEER, HOWL, REVERSAL
	
	; Cyndaquil2
	db TACKLE, LEER, FORESIGHT, THRASH
	
	; Cyndaquil3
	db TACKLE, LEER, SNORE, ANCIENTPOWER
	
	; Cyndaquil4
	db TACKLE, LEER, DOUBLE_KICK, FURY_SWIPES
	
	; Remoraid1
	db WATER_GUN, LOCK_ON, HAZE, OCTAZOOKA
	
	; Remoraid2
	db WATER_GUN, LOCK_ON, BUBBLE, SUPERSONIC
	
	; Remoraid3
	db WATER_GUN, LOCK_ON, SLUDGE, SCREECH
	
	; Remoraid4
	db WATER_GUN, STRING_SHOT, AMNESIA, MUD_SHOT
	
	; Happiny1
	db POUND, CHARM, PRESENT, PSYCH_UP
	
	; Happiny2
	db POUND, CHARM, SPARK, METRONOME
	
	; Happiny3
	db POUND, CHARM, ENDURE, SLAM
	
	; Snubbull1
	db TACKLE, TAIL_WHIP, METRONOME, PRESENT
	
	; Snubbull2
	db TACKLE, TAIL_WHIP, POISON_FANG, FAINT_ATTACK
	
	; Snubbull3
	db TACKLE, TAIL_WHIP, LOW_KICK, ENDURE
	
	; Snubbull4
	db TACKLE, TAIL_WHIP, SPARK, SNORE
	
	; Snubbull5
	db TACKLE, TAIL_WHIP, SUPER_FANG, POWERUPPUNCH
	
	; Mantyke1
	db TACKLE, BUBBLE, HAZE, MIRROR_COAT
	
	; Mantyke2
	db TACKLE, BUBBLE, SPLASH, HYDRO_PUMP
	
	; Mantyke3
	db TACKLE, BUBBLE, CHARM, SLAM
	
	; Mantyke4
	db TACKLE, BUBBLE, GUST, AMNESIA
	
	; Mantyke5
	db TACKLE, BUBBLE, MUD_SHOT, PURSUIT
	
	; Pinsir1
	db RAGE, HARDEN, ENDURE, REVERSAL
	
	; Pinsir2
	db RAGE, HARDEN, ROCK_THROW, IRON_DEFENSE
	
	; Pinsir3
	db RAGE, HARDEN, QUICK_ATTACK, SLAM
	
	; Pinsir4
	db RAGE, HARDEN, TAKE_DOWN, FLAIL
	
	; Pinsir5
	db RAGE, HARDEN, CROSS_CHOP, FAINT_ATTACK
	
	; Vulpix Alolan1
	db POWDER_SNOW, TAIL_WHIP, HOWL, ICE_FANG
	
	; Vulpix Alolan2
	db POWDER_SNOW, TAIL_WHIP, CHARM, FLAIL
	
	; Vulpix Alolan3
	db POWDER_SNOW, TAIL_WHIP, LICK, DISABLE
	
	; Vulpix Alolan4
	db POWDER_SNOW, TAIL_WHIP, SPITE, HYPNOSIS
	
	; Girafarig1
	db TACKLE, GROWL, AMNESIA, PSYCHO_CUT
	
	; Girafarig2
	db TACKLE, GROWL, MEAN_LOOK, BEAT_UP
	
	; Girafarig3
	db TACKLE, GROWL, ENDURE, SLAM
	
	; Girafarig4
	db TACKLE, GROWL, THUNDERSHOCK, MIRROR_COAT
	
	; Girafarig5
	db TACKLE, GROWL, DOUBLE_KICK, TRI_ATTACK
	
	; Ekans1
	db WRAP, LEER, SPITE, CRUNCH
	
	; Ekans2
	db WRAP, LEER, DISABLE, BEAT_UP
	
	; Ekans3
	db WRAP, LEER, PURSUIT, SLAM
	
	; Ekans4
	db WRAP, LEER, DRAGON_DANCE, ICE_FANG
	
	; Seel1
	db HEADBUTT, DISABLE, PERISH_SONG, LICK
	
	; Seel2
	db HEADBUTT, GROWL, HORN_DRILL, SLAM
	
	; Seel3
	db HEADBUTT, GROWL, PECK, FLAIL
	
	; Seel4
	db HEADBUTT, GROWL, SNORE, PURSUIT
	
	; Elekid1
	db QUICK_ATTACK, LEER, CROSS_CHOP, ENDURE
	
	; Elekid2
	db QUICK_ATTACK, LEER, MACH_PUNCH, PURSUIT
	
	; Elekid3
	db QUICK_ATTACK, LEER, FOCUS_ENERGY, POWERUPPUNCH
	
	; Stantler1
	db TACKLE, LEER, RAGE, SPITE
	
	; Stantler2
	db TACKLE, LEER, PSYCH_UP, MEGAHORN
	
	; Stantler3
	db TACKLE, LEER, DISABLE, PSYCHO_CUT
	
	; Stantler4
	db TACKLE, LEER, BITE, SAFEGUARD
	
	; Stantler5
	db TACKLE, LEER, DOUBLE_KICK, SLAM
	
	; Wooper1
	db WATER_GUN, TAIL_WHIP, SAFEGUARD, RECOVER
	
	; Wooper2
	db WATER_GUN, TAIL_WHIP, BELLY_DRUM, DOUBLE_KICK
	
	; Wooper3
	db WATER_GUN, TAIL_WHIP, ENCORE, SLUDGE
	
	; Wooper4
	db WATER_GUN, TAIL_WHIP, ENDURE, ANCIENTPOWER
	
	; Wooper4
	db WATER_GUN, TAIL_WHIP, PURSUIT, THUNDERSHOCK
	
	; GrowlitheHisuian1
	db EMBER, LEER, ENDURE, SLAM
	
	; GrowlitheHisuian2
	db EMBER, LEER, GROWL, THRASH
	
	; GrowlitheHisuian3
	db EMBER, LEER, CHARM, SNORE
	
	; GrowlitheHisuian4
	db EMBER, LEER, SAFEGUARD, FIRE_SPIN
	
	; GrowlitheHisuian5
	db EMBER, LEER, DOUBLE_KICK, MORNING_SUN
	