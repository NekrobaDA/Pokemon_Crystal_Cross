	object_const_def
	const MEWTWOCAVE_MEWTWO

MewtwoCave_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Mewtwo

.Mewtwo:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear MEWTWOCAVE_MEWTWO
	endcallback

.NoAppear:
	disappear MEWTWOCAVE_MEWTWO
	endcallback

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 70
	startbattle
	disappear MEWTWOCAVE_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Gyaaas!"
	done

MewtwoCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, CERULEAN_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  5, SPRITE_LUGIA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_MEWTWO_CAVE_MEWTWO
