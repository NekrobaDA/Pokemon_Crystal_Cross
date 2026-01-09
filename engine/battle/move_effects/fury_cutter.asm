BattleCommand_FuryCutter:
; furycutter

	ld hl, wPlayerFuryCutterCount
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld hl, wEnemyFuryCutterCount

.go
	ld a, [wAttackMissed]
	and a
	jp nz, ResetFuryCutterCount

	inc [hl]

; Damage capped at 5 turns' worth (16x).
	ld a, [hl]
	ld b, a
	cp 6
	jr c, .checkdouble
	ld b, 5

.checkdouble
	dec b
	ret z

;CalcConsecutiveDamage
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_FLAME_WHEEL
	jr z, .calcflamewheel

; Double the damage
	ld hl, wCurDamage + 1
	sla [hl]
	dec hl
	rl [hl]
	jr nc, .checkdouble
; No overflow
	ld a, $ff
	ld [hli], a
	ld [hl], a
	ret
	
.calcflamewheel          ;do 1.5x damage for Flame Wheel instead
	ld a, [wCurDamage]
	ld h, a
	ld d, a
	ld a, [wCurDamage + 1]
	ld l, a
	ld e, a              ;likely bug, using flame wheel, echoed voice, or fury cutter
                         ;in succession will probably increment damage for all three
	srl d                ;so you could alternate between moves and still keep the multiplier
	rr e                 ;but I don't care enough to stop anyone from doing that

	add hl, de
	jr nc, .Update
	ld hl, $ffff

.Update	
	ld a, h
	ld [wCurDamage], a
	ld a, l
	ld [wCurDamage + 1], a
	jr .checkdouble

ResetFuryCutterCount:
	push hl

	ld hl, wPlayerFuryCutterCount
	ldh a, [hBattleTurn]
	and a
	jr z, .reset
	ld hl, wEnemyFuryCutterCount

.reset
	xor a
	ld [hl], a

	pop hl
	ret
