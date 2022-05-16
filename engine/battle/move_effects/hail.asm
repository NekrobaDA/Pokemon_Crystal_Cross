BattleCommand_StartHail:
; starthail

	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jr z, .failed

	ld a, WEATHER_HAIL
	ld [wBattleWeather], a
	ld a, 8
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, HailFallsText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
