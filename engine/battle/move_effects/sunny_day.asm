BattleCommand_StartSun:
; startsun
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 8
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox
