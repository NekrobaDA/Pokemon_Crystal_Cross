; AutomaticWeatherEffects indexes
	const_def 1
	const AUTOMATIC_SUN
	const AUTOMATIC_RAIN
	const AUTOMATIC_SANDSTORM
	const AUTOMATIC_HAIL

AutomaticWeatherMaps:
auto_weather_map: MACRO
	map_id \1 ; map
	db \2 ; AUTOMATIC_* weather index
ENDM
	auto_weather_map TIN_TOWER_ROOF, AUTOMATIC_SUN
	auto_weather_map ROUTE_43, AUTOMATIC_RAIN
	auto_weather_map LAKE_OF_RAGE, AUTOMATIC_RAIN
	auto_weather_map MAHOGANY_GYM, AUTOMATIC_HAIL
	auto_weather_map PEWTER_GYM, AUTOMATIC_SANDSTORM
	auto_weather_map CERULEAN_GYM, AUTOMATIC_RAIN
	auto_weather_map CELADON_GYM, AUTOMATIC_SUN
	auto_weather_map SEAFOAM_GYM, AUTOMATIC_SUN
	auto_weather_map VIRIDIAN_GYM, AUTOMATIC_SANDSTORM
	auto_weather_map SILVER_CAVE_OUTSIDE, AUTOMATIC_HAIL
	auto_weather_map ROUTE_28, AUTOMATIC_HAIL
	;auto_weather_map ROUTE_45, AUTOMATIC_SANDSTORM
	db 0 ; end

AutomaticWeatherEffects:
; entries correspond to AUTOMATIC_* constants
auto_weather_effect: MACRO
	db \1 ; battle weather
	dw \2 ; animation
	dw \3 ; text
ENDM
	auto_weather_effect WEATHER_SUN, SUNNY_DAY, SunGotBrightText
	auto_weather_effect WEATHER_RAIN, RAIN_DANCE, DownpourText
	auto_weather_effect WEATHER_SANDSTORM, ANIM_IN_SANDSTORM, SandstormBrewedText
	auto_weather_effect WEATHER_HAIL, HAIL, HailFallsText
	;does this work with spikes/screens?
	