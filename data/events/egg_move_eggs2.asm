prob2: MACRO
prob_total2 = prob_total2 + (\1)
	dw prob_total2 * $ffff / 100
ENDM

EggMoveEggProbabilities2:
prob_total2 = 0
; Magikarp
	prob2 1
; Nessi
	prob2 1
	prob2 1
	prob2 1
; Eevee
	prob2 1
	prob2 1
	prob2 1
; Omanyte
	prob2 1
	prob2 1
	prob2 1
; Kabuto
	prob2 1
	prob2 1
	prob2 1
; Aerodactyl
	prob2 1
	prob2 1
	prob2 1
; Munchlax
	prob2 1
	prob2 1
	prob2 1
; Dratini
	prob2 1
	prob2 1
	prob2 1
; Chikorita
	prob2 1
	prob2 1
	prob2 1
; Cyndaquil
	prob2 1
	prob2 1
	prob2 1
; Totodile
	prob2 1
	prob2 1
	prob2 1
	prob2 1
; Sentret
	prob2 1
	prob2 1
; Hoothoot
	prob2 1
	prob2 1
	prob2 1
; Ledyba
	prob2 1
	prob2 1
; Spinarak
	prob2 1
	prob2 1
; Chinchou
	prob2 1
	prob2 1
; Togepi
	prob2 1
	prob2 1
	prob2 1
	prob2 1
; Natu
	prob2 1
	prob2 1
; Mareep
	prob2 1
	prob2 1
; Marill
	prob2 1
	prob2 1
	prob2 1
	prob2 1
; Bonsly
	prob2 1
	prob2 1
; Hoppip
	prob2 1
	prob2 1
	prob2 1
; Aipom
	prob2 1
	prob2 1
; Yanma
	prob2 1
	prob2 1
	prob2 1
; Wooper
	prob2 1
	prob2 1
	prob2 1
; Murkrow
	prob2 1
	prob2 1
	prob2 1
; Misdreavus
	prob2 1
	prob2 1
	prob2 1
; Girafarig
	prob2 1
	prob2 1
	prob2 1
; Pineco
	prob2 1
	prob2 1
	prob2 1
; Dunsparce
	prob2 1
	prob2 1
	prob2 1
; Gligar
	prob2 1
	prob2 1
	prob2 1
; Snubbull
	prob2 1
	prob2 1
	prob2 1
; Qwilfish
	prob2 1
	prob2 1
; Shuckle
	prob2 1
	prob2 1
	prob2 1
; Heracross
	prob2 1
	prob2 1
	prob2 1
; Sneasel
	prob2 1
	prob2 1
	prob2 1
	
	
EggMoveEggSpecies2:
	dw MAGIKARP  ;1
	dw NESSI     ;2
	dw NESSI     ;3
	dw NESSI     ;4
	dw EEVEE     ;5
	dw EEVEE     ;6
	dw EEVEE     ;7
	dw OMANYTE   ;8
	dw OMANYTE   ;9
	dw OMANYTE   ;10
	dw KABUTO    ;11
	dw KABUTO    ;12
	dw KABUTO    ;13
	dw AERODACTYL ;14
	dw AERODACTYL ;15
	dw AERODACTYL ;16
	dw MUNCHLAX  ;17
	dw MUNCHLAX  ;18
	dw MUNCHLAX  ;19
	dw DRATINI   ;20
	dw DRATINI   ;21
	dw DRATINI   ;22
	dw CHIKORITA ;23
	dw CHIKORITA ;24
	dw CHIKORITA ;25
	dw CYNDAQUIL ;26
	dw CYNDAQUIL ;27
	dw CYNDAQUIL ;28
	dw TOTODILE  ;29
	dw TOTODILE  ;30
	dw TOTODILE  ;31
	dw TOTODILE  ;32
	dw SENTRET   ;33
	dw SENTRET   ;34
	dw HOOTHOOT  ;35
	dw HOOTHOOT  ;36
	dw HOOTHOOT  ;37
	dw LEDYBA    ;38
	dw LEDYBA    ;39
	dw SPINARAK  ;40
	dw SPINARAK  ;41
	dw CHINCHOU  ;42
	dw CHINCHOU  ;43
	dw TOGEPI    ;44
	dw TOGEPI    ;45
	dw TOGEPI    ;46
	dw TOGEPI    ;47
	dw NATU      ;48
	dw NATU      ;49
	dw MAREEP    ;50
	dw MAREEP    ;51
	dw MARILL    ;52
	dw MARILL    ;53
	dw MARILL    ;54
	dw MARILL    ;55
	dw BONSLY    ;56
	dw BONSLY    ;57
	dw HOPPIP    ;58
	dw HOPPIP    ;59
	dw HOPPIP    ;60
	dw AIPOM     ;61
	dw AIPOM     ;62
	dw YANMA     ;63
	dw YANMA     ;64
	dw YANMA     ;65
	dw WOOPER    ;66
	dw WOOPER    ;67
	dw WOOPER    ;68
	dw MURKROW   ;69
	dw MURKROW   ;70
	dw MURKROW   ;71
	dw MISDREAVUS ;72
	dw MISDREAVUS ;73
	dw MISDREAVUS ;74
	dw GIRAFARIG ;75
	dw GIRAFARIG ;76
	dw GIRAFARIG ;77
	dw PINECO    ;78
	dw PINECO    ;79
	dw PINECO    ;80
	dw DUNSPARCE ;81
	dw DUNSPARCE ;82
	dw DUNSPARCE ;83
	dw GLIGAR    ;84
	dw GLIGAR    ;85
	dw GLIGAR    ;86
	dw SNUBBULL  ;87
	dw SNUBBULL  ;88
	dw SNUBBULL  ;89
	dw QWILFISH  ;90
	dw QWILFISH  ;91
	dw SHUCKLE   ;92
	dw SHUCKLE   ;93
	dw SHUCKLE   ;94
	dw HERACROSS ;95
	dw HERACROSS ;96
	dw HERACROSS ;97
	dw SNEASEL   ;98
	dw SNEASEL   ;99
	dw SNEASEL   ;100
	

EggMoveEggs2:

	db 0 ; Magikarp
	db NO_ITEM
	db SPLASH, TACKLE, TWISTER, REVERSAL
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"

	db 0 ; Nessi
	db NO_ITEM
	db WATER_GUN, GROWL, HORN_DRILL, FORESIGHT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Nessi
	db NO_ITEM
	db WATER_GUN, GROWL, RECOVER, SNORE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Nessi
	db NO_ITEM
	db WATER_GUN, GROWL, DRAGON_DANCE, PURSUIT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Eevee
	db NO_ITEM
	db TACKLE, TAIL_WHIP, SING, PAY_DAY
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Eevee
	db NO_ITEM
	db TACKLE, TAIL_WHIP, ENDURE, REVERSAL
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Eevee
	db NO_ITEM
	db TACKLE, TAIL_WHIP, SAFEGUARD, SLAM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Omantye
	db NO_ITEM
	db WRAP, LEER, ENDURE, ROCK_THROW
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Omantye
	db NO_ITEM
	db WRAP, LEER, SUPERSONIC, AURORA_BEAM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Omantye
	db NO_ITEM
	db WRAP, LEER, IRON_DEFENSE, RAZOR_SHELL
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Kabuto
	db NO_ITEM
	db SCRATCH, HARDEN, ROLLOUT, HAZE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Kabuto
	db NO_ITEM
	db SCRATCH, HARDEN, CONFUSE_RAY, MEGA_DRAIN
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Kabuto
	db NO_ITEM
	db SCRATCH, HARDEN, RAPID_SPIN, ROCK_THROW
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Aerodactyl
	db NO_ITEM
	db SUPERSONIC, BITE, WHIRLWIND, TRI_ATTACK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Aerodactyl
	db NO_ITEM
	db SUPERSONIC, BITE, DRAGON_DANCE, PURSUIT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Aerodactyl
	db NO_ITEM
	db SUPERSONIC, BITE, FORESIGHT, ROCK_THROW
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Munchlax
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, CHARM, LICK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Munchlax
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, PRESENT, WHIRLWIND
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Munchlax
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, PURSUIT, POWERUPPUNCH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Dratini
	db NO_ITEM
	db WRAP, LEER, MOONLIGHT, POWER_GEM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Dratini
	db NO_ITEM
	db WRAP, LEER, PSYBEAM, SUPERSONIC
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Dratini
	db NO_ITEM
	db WRAP, LEER, MIST, EXTREMESPEED
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Chikorita
	db NO_ITEM
	db TACKLE, GROWL, SING, SNORE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Chikorita
	db NO_ITEM
	db TACKLE, GROWL, DRAGON_DANCE, ANCIENT_POWER
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Chikorita
	db NO_ITEM
	db TACKLE, GROWL, ENDURE, THRASH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Cyndaquil
	db NO_ITEM
	db TACKLE, LEER, FURY_SWIPES, HOWL
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Cyndaquil
	db NO_ITEM
	db TACKLE, LEER, FORESIGHT, THRASH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Cyndaquil
	db NO_ITEM
	db TACKLE, LEER, SNORE, ANCIENT_POWER
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Totodile
	db NO_ITEM
	db SCRATCH, LEER, DRAGON_DANCE, METAL_CLAW
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Totodile
	db NO_ITEM
	db SCRATCH, LEER, ENDURE, ANCIENT_POWER
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Totodile
	db NO_ITEM
	db SCRATCH, LEER, MUD_SHOT, POWERUPPUNCH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Totodile
	db NO_ITEM
	db SCRATCH, LEER, METAL_CLAW, LOW_KICK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Sentret
	db NO_ITEM
	db SCRATCH, FORESIGHT, CONFUSION, CHARM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Sentret
	db NO_ITEM
	db SCRATCH, FORESIGHT, FOCUS_ENERGY, POWERUPPUNCH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Hoothoot
	db NO_ITEM
	db TACKLE, GROWL, SUPERSONIC, FAINT_ATTACK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Hoothoot
	db NO_ITEM
	db TACKLE, GROWL, RECOVER, PSYBEAM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Hoothoot
	db NO_ITEM
	db TACKLE, GROWL, AGILITY, WING_ATTACK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Ledyba
	db NO_ITEM
	db TACKLE, SUPERSONIC, PSYBEAM, SWEET_SCENT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Ledyba
	db NO_ITEM
	db TACKLE, SUPERSONIC, ROLLOUT, SCREECH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Spinarak
	db NO_ITEM
	db POISON_STING, STRING_SHOT, GROWTH, TWINEEDLE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Spinarak
	db NO_ITEM
	db POISON_STING, STRING_SHOT, DISABLE, PURSUIT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Chinchou
	db NO_ITEM
	db BUBBLE, SUPERSONIC, RECOVER, PSYBEAM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Chinchou
	db NO_ITEM
	db BUBBLE, SUPERSONIC, MIST, FAINT_ATTACK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Togepi
	db NO_ITEM
	db PECK, GROWL, PRESENT, SPARK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Togepi
	db NO_ITEM
	db PECK, GROWL, SOFTBOILED, ROLLOUT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Togepi
	db NO_ITEM
	db PECK, GROWL, PSYCH_UP, CONFUSION
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Togepi
	db NO_ITEM
	db PECK, GROWL, MORNING_SUN, MIRROR_MOVE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Natu
	db NO_ITEM
	db PECK, LEER, SAFEGUARD, FAINT_ATTACK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Natu
	db NO_ITEM
	db PECK, LEER, FIRE_SPIN, PSYCH_UP
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Mareep
	db NO_ITEM
	db TACKLE, GROWL, SAFEGUARD, SLAM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Mareep
	db NO_ITEM
	db TACKLE, GROWL, HYPNOSIS, AGILITY
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Marill
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, PRESENT, AMNESIA
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Marill
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, SING, POWERUPPUNCH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Marill
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, BELLY_DRUM, AURORA_BEAM
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Marill
	db NO_ITEM
	db TACKLE, DEFENSE_CURL, ENCORE, PERISH_SONG
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Bonsly
	db NO_ITEM
	db ROCK_THROW, MIMIC, ENDURE, REVERSAL
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Bonsly
	db NO_ITEM
	db ROCK_THROW, MIMIC, DEFENSE_CURL, ROLLOUT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Hoppip
	db NO_ITEM
	db SPLASH, TACKLE, CONFUSION, AMNESIA
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Hoppip
	db NO_ITEM
	db SPLASH, TACKLE, SWEET_SCENT, SILVER_WIND
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Hoppip
	db NO_ITEM
	db SPLASH, TACKLE, PAY_DAY, ENCORE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Aipom
	db NO_ITEM
	db SCRATCH, TAIL_WHIP, SPITE, BEAT_UP
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Aipom
	db NO_ITEM
	db SCRATCH, TAIL_WHIP, SPARK, PURSUIT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Yanma
	db NO_ITEM
	db TACKLE, FORESIGHT, PSYBEAM, SWEET_KISS
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Yanma
	db NO_ITEM
	db TACKLE, FORESIGHT, FAINT_ATTACK, SNORE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Yanma
	db NO_ITEM
	db TACKLE, FORESIGHT, REVERSAL, WHIRLWIND
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Wooper
	db NO_ITEM
	db WATER_GUN, TAIL_WHIP, SAFEGUARD, THUNDERSHOCK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Wooper
	db NO_ITEM
	db WATER_GUN, TAIL_WHIP, SLUDGE, RECOVER
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Wooper
	db NO_ITEM
	db WATER_GUN, TAIL_WHIP, BELLY_DRUM, DOUBLE_KICK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Murkrow
	db NO_ITEM
	db PECK, SPITE, PERISH_SONG, ASTONISH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Murkrow
	db NO_ITEM
	db PECK, SPITE, BEAT_UP, SCREECH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Murkrow
	db NO_ITEM
	db PECK, SPITE, FEATHERDANCE, CONFUSE_RAY
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Misdreavus
	db NO_ITEM
	db GROWL, CONFUSION, SCREECH, MEGA_DRAIN
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Misdreavus
	db NO_ITEM
	db GROWL, CONFUSION, DESTINY_BOND, SMOG
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Misdreavus
	db NO_ITEM
	db GROWL, CONFUSION, PSYCH_UP, SMOKESCREEN
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Girafarig
	db NO_ITEM
	db TACKLE, GROWL, AMNESIA, THUNDERSHOCK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Girafarig
	db NO_ITEM
	db TACKLE, GROWL, MEAN_LOOK, TRI_ATTACK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Girafarig
	db NO_ITEM
	db TACKLE, GROWL, ENDURE, BEAT_UP
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Pineco
	db NO_ITEM
	db TACKLE, PROTECT, CONFUSION, SWEET_SCENT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Pineco
	db NO_ITEM
	db TACKLE, PROTECT, DEFENSE_CURL, ROLLOUT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Pineco
	db NO_ITEM
	db TACKLE, PROTECT, REVERSAL, MAGNITUDE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Dunsparce
	db NO_ITEM
	db RAGE, DEFENSE_CURL, DESTINY_BOND, HEX
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Dunsparce
	db NO_ITEM
	db RAGE, DEFENSE_CURL, MAGNITUDE, HYPNOSIS
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Dunsparce
	db NO_ITEM
	db RAGE, DEFENSE_CURL, AGILITY, HORN_DRILL
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Gligar
	db NO_ITEM
	db POISON_STING, SAND_ATTACK, METAL_CLAW, BATON_PASS
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Gligar
	db NO_ITEM
	db POISON_STING, SAND_ATTACK, ENDURE, LEECH_LIFE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Gligar
	db NO_ITEM
	db POISON_STING, SAND_ATTACK, AGILITY, MUD_SHOT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Snubbull
	db NO_ITEM
	db TACKLE, TAIL_WHIP, METRONOME, LOW_KICK
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Snubbull
	db NO_ITEM
	db TACKLE, TAIL_WHIP, PRESENT, SNORE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Snubbull
	db NO_ITEM
	db TACKLE, TAIL_WHIP, SPARK, ENDURE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Qwilfish
	db NO_ITEM
	db TACKLE, POISON_STING, DEFENSE_CURL, ROLLOUT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Qwilfish
	db NO_ITEM
	db TACKLE, POISON_STING, SPARK, SUPERSONIC
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Shuckle
	db NO_ITEM
	db HARDEN, WRAP, SWEET_SCENT, MIRROR_COAT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Shuckle
	db NO_ITEM
	db HARDEN, WRAP, MIST, MAGNITUDE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Shuckle
	db NO_ITEM
	db HARDEN, WRAP, ENDURE, SLUDGE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Heracross
	db NO_ITEM
	db TACKLE, LEER, CROSS_CHOP, FALSE_SWIPE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Heracross
	db NO_ITEM
	db TACKLE, LEER, LOW_KICK, METAL_CLAW
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Heracross
	db NO_ITEM
	db TACKLE, LEER, SILVER_WIND, PURSUIT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Sneasel
	db NO_ITEM
	db SCRATCH, LEER, MOONLIGHT, SHADOW_PUNCH
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Sneasel
	db NO_ITEM
	db SCRATCH, LEER, PSYCH_UP, POISON_JAB
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	
	db 0 ; Sneasel
	db NO_ITEM
	db SCRATCH, LEER, SPITE, PSYCHO_CUT
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 9, 9, 9 ; DVs
	db 5, 5, 5, 5 ; PP
	db 5 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 5 ; Atk
	bigdw 5 ; Def
	bigdw 5 ; Spd
	bigdw 5 ; SAtk
	bigdw 5 ; SDef
	db "EGG@@@@@@@@"
	