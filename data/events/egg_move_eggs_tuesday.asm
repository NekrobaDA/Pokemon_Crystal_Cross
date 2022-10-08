probtue: MACRO
prob_totaltue = prob_totaltue + (\1)
	dw prob_totaltue * $ffff / 100
ENDM

EggMoveEggProbabilitiesTuesday:
prob_totaltue = 0
; Exeggcute
	probtue 2
	probtue 2
	probtue 2
; Ponyta	
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Squirtle
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; Meowth
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; Lickitung
	probtue 2
	probtue 2
	probtue 2
; Pidgey
	probtue 2
	probtue 2
	probtue 2
; Venonat
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Onix
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Houndour
	probtue 2
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; NidoranM
	probtue 2
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; Poliwag
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Abra
	probtue 3
	probtue 3
; Bonsly
	probtue 2
	probtue 1
	probtue 2
; Geodude
	probtue 2
	probtue 1
	probtue 2
; Machop
	probtue 3
	probtue 3
; Dunsparce
	probtue 2
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; SandshrewA
	probtue 2
	probtue 1
	probtue 1
	probtue 2
	
	
; normal, grass
EggMoveEggSpeciesTuesday:
	dw EXEGGCUTE    ;1
	dw EXEGGCUTE    ;2
	dw EXEGGCUTE    ;3
	dw PONYTA       ;4
	dw PONYTA       ;5
	dw PONYTA       ;6
	dw PONYTA       ;7
	dw SQUIRTLE     ;8
	dw SQUIRTLE     ;9
	dw SQUIRTLE     ;10
	dw SQUIRTLE     ;11
	dw SQUIRTLE     ;12
	dw SQUIRTLE     ;13
	dw MEOWTH       ;14
	dw MEOWTH       ;15
	dw MEOWTH       ;16
	dw MEOWTH       ;17
	dw MEOWTH       ;18
	dw MEOWTH       ;19
	dw LICKITUNG    ;20
	dw LICKITUNG    ;21
	dw LICKITUNG    ;22
	dw PIDGEY       ;23
	dw PIDGEY       ;24
	dw PIDGEY       ;25
	dw VENONAT      ;26
	dw VENONAT      ;27
	dw VENONAT      ;28
	dw VENONAT      ;29
	dw ONIX         ;30
	dw ONIX         ;31
	dw ONIX         ;32
	dw ONIX         ;33
	dw HOUNDOUR     ;34
	dw HOUNDOUR     ;35
	dw HOUNDOUR     ;36
	dw HOUNDOUR     ;37
	dw HOUNDOUR     ;38
	dw NIDORAN_M    ;39
	dw NIDORAN_M    ;40
	dw NIDORAN_M    ;41
	dw NIDORAN_M    ;42
	dw NIDORAN_M    ;43
	dw POLIWAG      ;44
	dw POLIWAG      ;45
	dw POLIWAG      ;46
	dw POLIWAG      ;47
	dw ABRA         ;48
	dw ABRA         ;49
	dw BONSLY       ;50
	dw BONSLY       ;51
	dw BONSLY       ;52
	dw GEODUDE      ;53
	dw GEODUDE      ;54
	dw GEODUDE      ;55
	dw MACHOP       ;56
	dw MACHOP       ;57
	dw DUNSPARCE    ;58
	dw DUNSPARCE    ;59
	dw DUNSPARCE    ;60
	dw DUNSPARCE    ;61
	dw DUNSPARCE    ;62
	dw SANDSHREW_ALOLAN ;63
	dw SANDSHREW_ALOLAN ;64
	dw SANDSHREW_ALOLAN ;65
	dw SANDSHREW_ALOLAN ;66
	

EggMoveEggsTuesday:

	; Exeggcute1
	db CONFUSION, HYPNOSIS, PSYCH_UP, MEGA_DRAIN
	
	; Exeggcute2
	db CONFUSION, HYPNOSIS, ENDURE, ANCIENTPOWER
	
	; Exeggcute3
	db CONFUSION, HYPNOSIS, MOONLIGHT, ANCIENTPOWER
	
	; Ponyta1
	db TACKLE, TAIL_WHIP, CHARM, DOUBLE_KICK
	
	; Ponyta2
	db TACKLE, TAIL_WHIP, LICK, THRASH
	
	; Ponyta3
	db TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPNOSIS
	
	; Ponyta4
	db TACKLE, TAIL_WHIP, MORNING_SUN, LOW_KICK
	
	; Squirtle1
	db TACKLE, TAIL_WHIP, FORESIGHT, CONFUSION
	
	; Squirtle2
	db TACKLE, TAIL_WHIP, MIRROR_COAT, HAZE
	
	; Squirtle3
	db TACKLE, TAIL_WHIP, POWERUPPUNCH, MIST
	
	; Squirtle4
	db TACKLE, TAIL_WHIP, ENDURE, FLAIL
	
	; Squirtle5
	db TACKLE, TAIL_WHIP, SNORE, RAZOR_SHELL
	
	; Squirtle6
	db TACKLE, TAIL_WHIP, ROLLOUT, POWDER_SNOW

	; Meowth1
	db SCRATCH, GROWL, SPITE, PERISH_SONG
	
	; Meowth2
	db SCRATCH, GROWL, PSYCH_UP, SNORE
	
	; Meowth3
	db SCRATCH, GROWL, HYPNOSIS, AMNESIA
	
	; Meowth4
	db SCRATCH, GROWL, TAIL_WHIP, SLAM
	
	; Meowth5
	db SCRATCH, GROWL, SING, FLAIL
	
	; Meowth6
	db SCRATCH, GROWL, PSYCHO_CUT, SCARY_FACE
	
	; Lickitung1
	db LICK, MUD_SHOT, AMNESIA, SNORE
	
	; Lickitung2
	db LICK, MUD_SHOT, POWERUPPUNCH, TAKE_DOWN
	
	; Lickitung3
	db LICK, MUD_SHOT, MAGNITUDE, MUD_SHOT
	
	; Pidgey1
	db TACKLE, SAND_ATTACK, FORESIGHT, FAINT_ATTACK
	
	; Pidgey2
	db TACKLE, SAND_ATTACK, LEER, DRILL_PECK
	
	; Pidgey3
	db TACKLE, SAND_ATTACK, PURSUIT, TAKE_DOWN
	
	; Venonat1
	db TACKLE, STRING_SHOT, SLUDGE, SWEET_SCENT
	
	; Venonat2
	db TACKLE, DISABLE, AGILITY, BATON_PASS
	
	; Venonat3
	db TACKLE, DISABLE, TELEPORT, HYPNOSIS
	
	; Venonat4
	db TACKLE, DISABLE, POISON_STING, SCREECH

	; Onix1
	db TACKLE, DEFENSE_CURL, ROLLOUT, MAGNITUDE
	
	; Onix2
	db TACKLE, HARDEN, ENDURE, FLAIL
	
	; Onix3
	db TACKLE, HARDEN, DRAGON_DANCE, THRASH
	
	; Onix4
	db TACKLE, HARDEN, MIRROR_COAT, IRON_DEFENSE

	; Houndour1
	db EMBER, LEER, SPITE, HEX
	
	; Houndour2
	db EMBER, LEER, REVERSAL, FOCUS_ENERGY
	
	; Houndour3
	db EMBER, LEER, CHARM, SUPER_FANG
	
	; Houndour4
	db EMBER, LEER, PURSUIT, POISON_FANG
	
	; Houndour5
	db EMBER, LEER, RAGE, FLAME_WHEEL

	; NidoranM1
	db TACKLE, TAIL_WHIP, PURSUIT, SUPERSONIC
	
	; NidoranM2
	db TACKLE, TAIL_WHIP, DISABLE, BEAT_UP
	
	; NidoranM3
	db TACKLE, TAIL_WHIP, CONFUSION, AMNESIA
	
	; NidoranM4
	db TACKLE, TAIL_WHIP, TAKE_DOWN, POISON_FANG
	
	; NidoranM5
	db TACKLE, TAIL_WHIP, TWINEEDLE, SUPER_FANG

	; Poliwag1
	db BUBBLE, HYPNOSIS, GROWTH, SWEET_KISS
	
	; Poliwag2
	db BUBBLE, HYPNOSIS, CONFUSION, MIST
	
	; Poliwag3
	db BUBBLE, HYPNOSIS, HAZE, ENCORE
	
	; Poliwag4
	db BUBBLE, HYPNOSIS, DEFENSE_CURL, POWDER_SNOW

	; Abra1
	db TELEPORT, HYPNOSIS, ENCORE, METRONOME
	
	; Abra2
	db TELEPORT, HYPNOSIS, FORESIGHT, MIRROR_COAT
	
	; Bonsly1
	db ROCK_THROW, MIMIC, ENDURE, REVERSAL
	
	; Bonsly2
	db ROCK_THROW, MIMIC, RAGE, HARDEN
	
	; Bonsly3
	db ROCK_THROW, MIMIC, DEFENSE_CURL, ROLLOUT
	
	; Geodude1
	db TACKLE, DEFENSE_CURL, ENDURE, FLAIL
	
	; Geodude2
	db TACKLE, HARDEN, RAPID_SPIN, CROSS_CHOP
	
	; Geodude3
	db TACKLE, DEFENSE_CURL, POWERUPPUNCH, IRON_DEFENSE
	
	; Machop1
	db LOW_KICK, LEER, POUND, THRASH
	
	; Machop2
	db LOW_KICK, LEER, ENCORE, MACH_PUNCH
	
	; Dunsparce1
	db RAGE, DEFENSE_CURL, DESTINY_BOND, HEX
	
	; Dunsparce2
	db RAGE, DEFENSE_CURL, ASTONISH, HYPNOSIS
	
	; Dunsparce3
	db RAGE, DEFENSE_CURL, SNORE, HORN_DRILL
	
	; Dunsparce4
	db RAGE, DEFENSE_CURL, AGILITY, SLAM
	
	; Dunsparce5
	db RAGE, DEFENSE_CURL, BITE, MAGNITUDE
	
	; Sandshrew Alolan1
	db SCRATCH, DEFENSE_CURL, ENDURE, FLAIL
	
	; Sandshrew Alolan2
	db SCRATCH, DEFENSE_CURL, SUPER_FANG, POISON_JAB
	
	; Sandshrew Alolan3
	db SCRATCH, DEFENSE_CURL, SAFEGUARD, RAPID_SPIN
	
	; Sandshrew Alolan4
	db SCRATCH, DEFENSE_CURL, SLAM, X_SCISSOR
	