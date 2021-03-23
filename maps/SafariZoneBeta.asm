	object_const_def
	const THURSDAY_DRAGONAIR

SafariZoneBeta_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Dragonair
	
.Dragonair:
	checkflag ENGINE_THURSDAY_DRAGONAIR
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal THURSDAY, .Appear
.NoAppear:
	disappear THURSDAY_DRAGONAIR
	endcallback

.Appear:
	appear THURSDAY_DRAGONAIR
	endcallback

ThursdayDragonair:
	faceplayer
	cry DRAGONAIR
	loadwildmon DRAGONAIR, 35
	startbattle
	disappear THURSDAY_DRAGONAIR
	setflag ENGINE_THURSDAY_DRAGONAIR
	reloadmapafterbattle
	end

SafariZoneBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 29, SAFARI_ZONE_FUCHSIA_GATE_BETA, 1
	warp_event 10, 29, SAFARI_ZONE_FUCHSIA_GATE_BETA, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15,  4, SPRITE_EKANS, SPRITEMOVEDATA_POKEMON, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ThursdayDragonair, EVENT_THURSDAY_DRAGONAIR
	