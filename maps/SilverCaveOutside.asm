	object_const_def
	const MONDAY_SNORLAX

SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Snorlax

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback
	
.Snorlax:
	checkflag ENGINE_MONDAY_SNORLAX
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Appear
.NoAppear:
	disappear MONDAY_SNORLAX
	endcallback

.Appear:
	appear MONDAY_SNORLAX
	endcallback

MondaySnorlax:
	faceplayer
	cry SNORLAX
	loadwildmon SNORLAX, 40
	startbattle
	disappear MONDAY_SNORLAX
	setflag ENGINE_MONDAY_SNORLAX
	reloadmapafterbattle
	end

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  4, 26, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event  9, 25, SPRITE_BULBASAUR, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MondaySnorlax, EVENT_MONDAY_SNORLAX
