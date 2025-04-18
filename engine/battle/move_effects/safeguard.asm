BattleCommand_Safeguard:
; safeguard

	ld hl, wPlayerScreens
	ld de, wPlayerSafeguardCount
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemyScreens
	ld de, wEnemySafeguardCount
.ok
	bit SCREENS_SAFEGUARD, [hl]
	jr nz, .failed
	set SCREENS_SAFEGUARD, [hl]
	ld a, 5
	ld [de], a
	
	call CompareMist
	ret z

	call AnimateCurrentMove
	ld hl, CoveredByVeilText
	jp StdBattleTextbox

.failed
	call CompareMist
	ret z

	call AnimateFailedMove
	jp PrintButItFailed

CompareMist:
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_MIST
	ret
