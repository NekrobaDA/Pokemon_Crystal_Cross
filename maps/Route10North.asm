	object_const_def
	const SUNDAY_ELECTABUZZ

Route10North_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Electabuzz

.Electabuzz:
	checkflag ENGINE_SUNDAY_ELECTABUZZ
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .Appear
.NoAppear:
	disappear SUNDAY_ELECTABUZZ
	endcallback

.Appear:
	appear SUNDAY_ELECTABUZZ
	endcallback

SundayElectabuzz:
	faceplayer
	cry ELECTABUZZ
	loadwildmon ELECTABUZZ, 25
	startbattle
	disappear SUNDAY_ELECTABUZZ
	setflag ENGINE_SUNDAY_ELECTABUZZ
	reloadmapafterbattle
	end

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd PokecenterSignScript

PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  1, ROUTE_10_POKECENTER_1F, 1
	warp_event  3,  9, POWER_PLANT, 1

	def_coord_events

	def_bg_events
	bg_event  5, 11, BGEVENT_READ, PowerPlantSign
	bg_event 12,  1, BGEVENT_READ, Route10PokecenterSign

	def_object_events
	object_event  7, 10, SPRITE_RHYDON, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SundayElectabuzz, EVENT_SUNDAY_ELECTABUZZ
	