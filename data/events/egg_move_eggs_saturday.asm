probsat: MACRO
prob_totalsat = prob_totalsat + (\1)
	dw prob_totalsat * $ffff / 100
ENDM

EggMoveEggProbabilitiesSaturday:
prob_totalsat = 0
; Bellsprout
	probsat 3
	probsat 3
; Slugma
	probsat 2
	probsat 2
	probsat 1
	probsat 2
; Marill 
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 2
; Teddiursa
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Togepi 
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Ledyba
	probsat 2
	probsat 1
	probsat 1
	probsat 2
; Pineco
	probsat 2
	probsat 1
	probsat 1
	probsat 2
; Cubone 
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 2
; Larvitar
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Tentacool
	probsat 2
	probsat 1
	probsat 1
	probsat 2
; Nessi
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Tyrogue
	probsat 5
; Dratini
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Corsola 
	probsat 2
	probsat 2
	probsat 2
; Sandshrew 
	probsat 2
	probsat 1
	probsat 1
	probsat 2
; Eevee 
	probsat 5
	
	
; rock, ground, fighting	
EggMoveEggSpeciesSaturday:
	dw BELLSPROUT   ;1
	dw BELLSPROUT   ;2
	dw SLUGMA       ;3
	dw SLUGMA       ;4
	dw SLUGMA       ;5
	dw SLUGMA       ;6
	dw MARILL       ;7
	dw MARILL       ;8
	dw MARILL       ;9
	dw MARILL       ;10
	dw MARILL       ;11
	dw TEDDIURSA    ;12
	dw TEDDIURSA    ;13
	dw TEDDIURSA    ;14
	dw TEDDIURSA    ;15
	dw TEDDIURSA    ;16
	dw TOGEPI       ;17
	dw TOGEPI       ;18
	dw TOGEPI       ;19
	dw TOGEPI       ;20
	dw TOGEPI       ;21
	dw TOGEPI       ;22
	dw LEDYBA       ;23
	dw LEDYBA       ;24
	dw LEDYBA       ;25
	dw LEDYBA       ;26
	dw PINECO       ;27
	dw PINECO       ;28
	dw PINECO       ;29
	dw PINECO       ;30
	dw CUBONE       ;31
	dw CUBONE       ;32
	dw CUBONE       ;33
	dw CUBONE       ;34
	dw CUBONE       ;35
	dw LARVITAR     ;36
	dw LARVITAR     ;37
	dw LARVITAR     ;38
	dw LARVITAR     ;39
	dw LARVITAR     ;40
	dw LARVITAR     ;41
	dw TENTACOOL    ;42
	dw TENTACOOL    ;43
	dw TENTACOOL    ;44
	dw TENTACOOL    ;45
	dw NESSI        ;46
	dw NESSI        ;47
	dw NESSI        ;48
	dw NESSI        ;49
	dw NESSI        ;50
	dw NESSI        ;51
	dw TYROGUE      ;52
	dw DRATINI      ;53
	dw DRATINI      ;54
	dw DRATINI      ;55
	dw DRATINI      ;56
	dw DRATINI      ;57
	dw DRATINI      ;58
	dw CORSOLA      ;59
	dw CORSOLA      ;60
	dw CORSOLA      ;61
	dw SANDSHREW    ;62
	dw SANDSHREW    ;63
	dw SANDSHREW    ;64
	dw SANDSHREW    ;65
	dw EEVEE        ;66
	

EggMoveEggsSaturday:

	; Bellsprout1
	db VINE_WHIP, SWEET_KISS, LEECH_SEED, ENCORE
	
	; Bellsprout2
	db VINE_WHIP, SWEET_KISS, LEECH_LIFE, MORNING_SUN
	
	; Slugma1
	db SMOG, SMOKESCREEN, ENCORE, MAGNITUDE
	
	; Slugma2
	db SMOG, DEFENSE_CURL, ROLLOUT, SNORE
	
	; Slugma3
	db SMOG, EMBER, PSYBEAM, ACID_ARMOR
	
	; Slugma4
	db SMOG, EMBER, IRON_DEFENSE, MIRROR_COAT
	
	; Marill1
	db TACKLE, DEFENSE_CURL, SING, PRESENT
	
	; Marill2
	db TACKLE, DEFENSE_CURL, ENCORE, PERISH_SONG
	
	; Marill3
	db TACKLE, DEFENSE_CURL, SUPERSONIC, BELLY_DRUM
	
	; Marill4
	db TACKLE, DEFENSE_CURL, FORESIGHT, POWERUPPUNCH
	
	; Marill5
	db TACKLE, DEFENSE_CURL, AMNESIA, AURORA_BEAM
	
	; Teddiursa1
	db SCRATCH, LEER, SLAM, MOONLIGHT
	
	; Teddiursa2
	db SCRATCH, LEER, FOCUS_ENERGY, TAKE_DOWN
	
	; Teddiursa3
	db SCRATCH, LEER, BELLY_DRUM, METAL_CLAW
	
	; Teddiursa4
	db SCRATCH, LEER, ENDURE, CROSS_CHOP
	
	; Teddiursa5
	db SCRATCH, LEER, CRUNCH, POWERUPPUNCH
	
	; Togepi1
	db PECK, GROWL, PRESENT, SOFTBOILED
	
	; Togepi2
	db PECK, GROWL, DEFENSE_CURL, ROLLOUT
	
	; Togepi3
	db PECK, GROWL, PSYCH_UP, CONFUSION
	
	; Togepi4
	db PECK, GROWL, ENDURE, MORNING_SUN
	
	; Togepi5
	db PECK, GROWL, FORESIGHT, MIRROR_MOVE
	
	; Togepi6
	db PECK, GROWL, SPARK, SCREECH
	
	; Ledyba1
	db TACKLE, SUPERSONIC, SCREECH, ROLLOUT
	
	; Ledyba2
	db TACKLE, SUPERSONIC, ENDURE, LEECH_LIFE
	
	; Ledyba3
	db TACKLE, SUPERSONIC, HYPNOSIS, FAINT_ATTACK
	
	; Ledyba4
	db TACKLE, SUPERSONIC, PSYBEAM, SWEET_SCENT
	
	; Pineco1
	db TACKLE, PROTECT, DEFENSE_CURL, ROLLOUT
	
	; Pineco2
	db TACKLE, PROTECT, SWEET_SCENT, FLAIL
	
	; Pineco3
	db TACKLE, PROTECT, CONFUSION, STRING_SHOT
	
	; Pineco4
	db TACKLE, PROTECT, MAGNITUDE, REVERSAL
	
	; Cubone1
	db POUND, GROWL, HEX, PERISH_SONG
	
	; Cubone2
	db POUND, GROWL, POWERUPPUNCH, LOW_KICK
	
	; Cubone3
	db POUND, GROWL, ENDURE, FURY_ATTACK
	
	; Cubone4
	db POUND, GROWL, SCREECH, ANCIENTPOWER
	
	; Cubone5
	db POUND, LEER, BELLY_DRUM, DOUBLE_KICK
	
	; Larvitar1
	db BITE, LEER, SPITE, PURSUIT
	
	; Larvitar2
	db BITE, LEER, STOMP, ENDURE
	
	; Larvitar3
	db BITE, LEER, FOCUS_ENERGY, SLAM
	
	; Larvitar4
	db BITE, LEER, RAGE, IRON_DEFENSE
	
	; Larvitar5
	db BITE, LEER, DRAGON_DANCE, ICE_FANG
	
	; Larvitar6
	db BITE, LEER, DOUBLE_KICK, ANCIENTPOWER
	
	; Tentacool1
	db POISON_STING, SUPERSONIC, CONFUSE_RAY, HEX
	
	; Tentacool2
	db POISON_STING, SUPERSONIC, HAZE, AURORA_BEAM
	
	; Tentacool3
	db POISON_STING, SUPERSONIC, SAFEGUARD, MIRROR_COAT
	
	; Tentacool4
	db POISON_STING, SUPERSONIC, POWER_GEM, RAPID_SPIN
	
	; Nessi1
	db WATER_GUN, GROWL, HYPNOSIS, CONFUSION
	
	; Nessi2
	db WATER_GUN, GROWL, FORESIGHT, HORN_DRILL
	
	; Nessi3
	db WATER_GUN, GROWL, ENDURE, ANCIENTPOWER
	
	; Nessi4
	db WATER_GUN, GROWL, SNORE, RECOVER
	
	; Nessi5
	db WATER_GUN, GROWL, PURSUIT, DRAGON_DANCE
	
	; Nessi6
	db WATER_GUN, GROWL, BITE, ICE_SHARD
	
	; Tyrogue1
	db TACKLE, POWERUPPUNCH, RAGE, PURSUIT
	
	; Dratini1
	db WRAP, LEER, MOONLIGHT, PURSUIT
	
	; Dratini2
	db WRAP, LEER, SUPERSONIC, BUBBLEBEAM
	
	; Dratini3
	db WRAP, LEER, RAGE, EXTREMESPEED
	
	; Dratini4
	db WRAP, LEER, HAZE, HYDRO_PUMP
	
	; Dratini5
	db WRAP, LEER, MIST, PSYBEAM
	
	; Dratini6
	db WRAP, LEER, MOONLIGHT, POWER_GEM
	
	; Corsola1
	db TACKLE, HARDEN, SAFEGUARD, SLAM
	
	; Corsola2
	db TACKLE, DEFENSE_CURL, ROLLOUT, SCREECH
	
	; Corsola3
	db TACKLE, HARDEN, CONFUSE_RAY, AMNESIA
	
	; Sandshrew1
	db SCRATCH, DEFENSE_CURL, MUD_SHOT, SUPER_FANG
	
	; Sandshrew2
	db SCRATCH, ENDURE, FLAIL, SLAM
	
	; Sandshrew3
	db SCRATCH, DEFENSE_CURL, SAFEGUARD, METAL_CLAW
	
	; Sandshrew4
	db SCRATCH, DEFENSE_CURL, POISON_JAB, X_SCISSOR
	
	; Eevee4
	db TACKLE, FOCUS_ENERGY, SNORE, MORNING_SUN
	