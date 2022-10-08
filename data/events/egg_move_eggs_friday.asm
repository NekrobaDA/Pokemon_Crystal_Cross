probfri: MACRO
prob_totalfri = prob_totalfri + (\1)
	dw prob_totalfri * $ffff / 100
ENDM

EggMoveEggProbabilitiesFriday:
prob_totalfri = 0
; Eevee
	probfri 5
; Growlithe
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Totodile
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Kangaskid
	probfri 2
	probfri 1
	probfri 1
	probfri 2
; Sentret
	probfri 2
	probfri 2
	probfri 1
	probfri 2
; Doduo 
	probfri 2
	probfri 1
	probfri 1
	probfri 2
; Paras 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 1
	probfri 1
; Skarmory 
	probfri 2
	probfri 2
	probfri 1
	probfri 2
; Murkrow 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 1
	probfri 1
; Spinarak 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Delibird 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Horsea
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Natu 
	probfri 2
	probfri 2
	probfri 1
	probfri 2
; Shuckle
	probfri 2
	probfri 2
	probfri 2
; Phanpy
	probfri 2
	probfri 2
	probfri 1
	probfri 2
	
	
; poison, dark, bug
EggMoveEggSpeciesFriday:
	dw EEVEE      ;1
	dw GROWLITHE  ;2
	dw GROWLITHE  ;3
	dw GROWLITHE  ;4
	dw GROWLITHE  ;5
	dw GROWLITHE  ;6
	dw TOTODILE   ;7
	dw TOTODILE   ;8
	dw TOTODILE   ;9
	dw TOTODILE   ;10
	dw TOTODILE   ;11
	dw KANGASKID  ;12
	dw KANGASKID  ;13
	dw KANGASKID  ;14
	dw KANGASKID  ;15
	dw SENTRET    ;16
	dw SENTRET    ;17
	dw SENTRET    ;18
	dw SENTRET    ;19
	dw DODUO      ;20
	dw DODUO      ;21
	dw DODUO      ;22
	dw DODUO      ;23
	dw PARAS      ;24
	dw PARAS      ;25
	dw PARAS      ;26
	dw PARAS      ;27
	dw PARAS      ;28
	dw PARAS      ;29
	dw SKARMORY   ;30
	dw SKARMORY   ;31
	dw SKARMORY   ;32
	dw SKARMORY   ;33
	dw MURKROW    ;34
	dw MURKROW    ;35
	dw MURKROW    ;36
	dw MURKROW    ;37
	dw MURKROW    ;38
	dw MURKROW    ;39
	dw SPINARAK   ;40
	dw SPINARAK   ;41
	dw SPINARAK   ;42
	dw SPINARAK   ;43
	dw SPINARAK   ;44
	dw DELIBIRD   ;45
	dw DELIBIRD   ;46
	dw DELIBIRD   ;47
	dw DELIBIRD   ;48
	dw DELIBIRD   ;49
	dw HORSEA     ;50
	dw HORSEA     ;51
	dw HORSEA     ;52
	dw HORSEA     ;53
	dw HORSEA     ;54
	dw NATU       ;55
	dw NATU       ;56
	dw NATU       ;57
	dw NATU       ;58
	dw SHUCKLE    ;59
	dw SHUCKLE    ;60
	dw SHUCKLE    ;61
	dw PHANPY     ;62
	dw PHANPY     ;63
	dw PHANPY     ;64
	dw PHANPY     ;65
	

EggMoveEggsFriday:

	; Eevee3
	db TACKLE, TAIL_WHIP, SAFEGUARD, SLAM
	
	; Growlithe1
	db EMBER, LEER, ENDURE, SLAM
	
	; Growlithe2
	db EMBER, LEER, GROWL, THRASH
	
	; Growlithe3
	db EMBER, LEER, CHARM, SNORE
	
	; Growlithe4
	db EMBER, LEER, SAFEGUARD, FIRE_SPIN
	
	; Growlithe5
	db EMBER, LEER, DOUBLE_KICK, MORNING_SUN
	
	; Totodile1
	db SCRATCH, LEER, DRAGON_DANCE, SLAM
	
	; Totodile2
	db SCRATCH, LEER, ENDURE, LOW_KICK
	
	; Totodile3
	db SCRATCH, LEER, MUD_SHOT, METAL_CLAW
	
	; Totodile4
	db SCRATCH, LEER, POWERUPPUNCH, TAKE_DOWN
	
	; Totodile5
	db SCRATCH, LEER, ANCIENTPOWER, DRAGON_DANCE
	
	; Kangaskid1
	db TACKLE, LEER, SAFEGUARD, DOUBLE_KICK
	
	; Kangaskid2
	db TACKLE, LEER, STOMP, FOCUS_ENERGY
	
	; Kangaskid3
	db TACKLE, LEER, DISABLE, FAINT_ATTACK
	
	; Kangaskid4
	db TACKLE, LEER, PURSUIT, FORESIGHT
	
	; Sentret1
	db SCRATCH, FORESIGHT, CONFUSION, SLASH
	
	; Sentret2
	db SCRATCH, FORESIGHT, FOCUS_ENERGY, THRASH
	
	; Sentret3
	db SCRATCH, FORESIGHT, REVERSAL, POWERUPPUNCH
	
	; Sentret4
	db SCRATCH, FORESIGHT, CHARM, SUPER_FANG

	; Doduo1
	db PECK, GROWL, SCREECH, LOW_KICK
	
	; Doduo2
	db PECK, GROWL, ENDURE, MIRROR_MOVE
	
	; Doduo3
	db PECK, GROWL, SUPERSONIC, SKY_ATTACK
	
	; Doduo4
	db PECK, GROWL, HAZE, FAINT_ATTACK
	
	; Paras1
	db SCRATCH, STUN_SPORE, AGILITY, PSYBEAM
	
	; Paras2
	db SCRATCH, STUN_SPORE, SCREECH, FLAIL
	
	; Paras3
	db SCRATCH, STUN_SPORE, SWEET_SCENT, X_SCISSOR
	
	; Paras4
	db SCRATCH, STUN_SPORE, MOONLIGHT, SLUDGE
	
	; Paras5
	db SCRATCH, STUN_SPORE, COTTON_SPORE, METAL_CLAW
	
	; Paras6
	db SCRATCH, STUN_SPORE, CROSS_CHOP, PURSUIT
	
	; Skarmory1
	db PECK, LEER, ENDURE, MIRROR_MOVE
	
	; Skarmory2
	db PECK, LEER, FORESIGHT, SKY_ATTACK
	
	; Skarmory3
	db PECK, LEER, HAZE, PURSUIT
	
	; Skarmory4
	db PECK, LEER, HARDEN, SKY_ATTACK
	
	; Murkrow1
	db PECK, SPITE, ASTONISH, PERISH_SONG
	
	; Murkrow2
	db PECK, SPITE, SCREECH, BEAT_UP
	
	; Murkrow3
	db PECK, SPITE, FEATHERDANCE, FURY_ATTACK
	
	; Murkrow4
	db PECK, SPITE, WHIRLWIND, SKY_ATTACK
	
	; Murkrow5
	db PECK, SPITE, CONFUSE_RAY, QUICK_ATTACK
	
	; Murkrow6
	db PECK, SPITE, DRILL_PECK, PSYCH_UP
	
	; Spinarak1
	db POISON_STING, STRING_SHOT, DISABLE, PSYBEAM
	
	; Spinarak2
	db POISON_STING, STRING_SHOT, GROWTH, SLASH
	
	; Spinarak3
	db POISON_STING, STRING_SHOT, X_SCISSOR, BATON_PASS
	
	; Spinarak4
	db POISON_STING, STRING_SHOT, SONICBOOM, PURSUIT
	
	; Spinarak5
	db POISON_STING, STRING_SHOT, TWINEEDLE, FLAIL
	
	; Delibird1
	db POUND, GROWL, CONFUSION, BATON_PASS
	
	; Delibird2
	db POUND, GROWL, ENDURE, SKY_ATTACK
	
	; Delibird3
	db POUND, GROWL, AURORA_BEAM, RAPID_SPIN
	
	; Delibird4
	db POUND, GROWL, QUICK_ATTACK, SLAM
	
	; Delibird5
	db POUND, GROWL, ICE_SHARD, WATER_GUN
	
	; Horsea1
	db BUBBLE, SMOKESCREEN, SMOG, MUD_SHOT
	
	; Horsea2
	db BUBBLE, SMOKESCREEN, HAZE, OCTAZOOKA
	
	; Horsea3
	db BUBBLE, SMOKESCREEN, DRAGON_RAGE, FLAIL
	
	; Horsea4
	db BUBBLE, SMOKESCREEN, DISABLE, POWDER_SNOW
	
	; Horsea5
	db BUBBLE, SMOKESCREEN, CONFUSE_RAY, AURORA_BEAM
	
	; Natu1
	db PECK, LEER, GUST, FAINT_ATTACK
	
	; Natu2
	db PECK, LEER, FIRE_SPIN, HAZE
	
	; Natu3
	db PECK, LEER, SAND_ATTACK, DRILL_PECK
	
	; Natu4
	db PECK, LEER, QUICK_ATTACK, FEATHERDANCE
	
	; Shuckle1
	db WRAP, HARDEN, MIST, MIRROR_COAT
	
	; Shuckle2
	db WRAP, SWEET_SCENT, MUD_SHOT, SLUDGE
	
	; Shuckle3
	db WRAP, STRING_SHOT, MAGNITUDE, ENDURE
	
	; Phanpy1
	db TACKLE, GROWL, WATER_GUN, MUD_SHOT
	
	; Phanpy2
	db TACKLE, SAND_ATTACK, SNORE, REVERSAL
	
	; Phanpy3
	db TACKLE, GROWL, FOCUS_ENERGY, ICE_SHARD
	
	; Phanpy4
	db TACKLE, GROWL, ANCIENTPOWER, POWDER_SNOW
	