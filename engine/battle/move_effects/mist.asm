BattleCommand_Mist:
; mist

	;ld a, BATTLE_VARS_SUBSTATUS4
	;call GetBattleVarAddr
	;bit SUBSTATUS_MIST, [hl]
	;jr nz, .already_mist
	;set SUBSTATUS_MIST, [hl]
	;call AnimateCurrentMove
	;ld hl, MistText
	;jp StdBattleTextbox

;.already_mist
	;call AnimateFailedMove
	;jp PrintButItFailed

	ld a, BATTLE_VARS_SUBSTATUS5
	call GetBattleVarAddr
	res SUBSTATUS_TOXIC, [hl]
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	ld a, [hl]
	and a
	jp StdBattleTextbox