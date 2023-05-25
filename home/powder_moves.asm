PowderMoves::
	db POISONPOWDER
	db SLEEP_POWDER
	db SPORE
	db COTTON_SPORE
	db STUN_SPORE
	db -1
	
PowderMovesArray::
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld hl, PowderMoves
	call IsInByteArray
	ret
	
BattleCommand_CheckPowder2::
; Checks if the move is powder/spore-based and 
; if the opponent is Grass-type
	call PowderMovesArray
	ret nc

; If the opponent is Grass-type, the move fails.
	ld hl, wEnemyMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .CheckGrassType
	ld hl, wBattleMonType1

.CheckGrassType:
	ld a, [hli]
	cp GRASS
	jr z, .Immune
	ld a, [hl]
	cp GRASS
	ret nz
	;fallthrough
.Immune:
	ld a, 1
	ld [wAttackMissed], a
	ret	
	