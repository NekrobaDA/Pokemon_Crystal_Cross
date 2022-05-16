BattleCommand_StartRain:
; startrain
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 8
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, DownpourText
	jp StdBattleTextbox
