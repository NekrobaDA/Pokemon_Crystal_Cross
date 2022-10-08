prob1: MACRO
prob_total1 = prob_total1 + (\1)
	dw prob_total1 * $ffff / 100
ENDM

EggMoveEggProbabilities:
prob_total1 = 0
; Bulbasaur
	prob1 25
; Charmander
	prob1 25
;Squirtle
	prob1 25
;Eevee
	prob1 25

	
EggMoveEggSpecies:
	dw BULBASAUR  ;1
	dw CHARMANDER  ;2
	dw SQUIRTLE  ;3
	dw EEVEE
	

EggMoveEggs:

	; Bulbasaur
	db TACKLE, GROWL, AMNESIA, SLUDGE

	; Charmander
	db SCRATCH, GROWL, ANCIENTPOWER, BITE
	
	; Squirtle
	db TACKLE, HARDEN, MIRROR_COAT, HAZE
	
	; eevee
	db TACKLE, TAIL_WHIP, MIST, DIG
