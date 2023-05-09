GustMoves::
	db GUST
	db RAZOR_WIND
	db AEROBLAST
	db TWISTER
	db SILVER_WIND
	db -1
	
GustMovesMultiplier::
	call GustMovesArray
	ret nc

; If the opponent is Fire-type, the move is SE
	ld hl, wEnemyMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .CheckFireType
	ld hl, wBattleMonType1

.CheckFireType:
	ld a, [hli]
	cp FIRE
	jr z, .SuperEffective
	ld a, [hl]
	cp FIRE
	ret nz
	;fallthrough
.SuperEffective
	ldh a, [hQuotient + 3]
	add a
	ldh [hQuotient + 3], a

	ldh a, [hQuotient + 2]
	rl a
	ldh [hQuotient + 2], a

; Cap at $ffff.
	ret nc

	ld a, $ff
	ldh [hQuotient + 2], a
	ldh [hQuotient + 3], a
	ret

GustMovesArray::
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld hl, GustMoves
	call IsInByteArray
	ret