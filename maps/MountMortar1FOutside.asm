	object_const_def
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL1
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL2
	const MONDAY_MAGMAR

MountMortar1FOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Magmar

.Magmar:
	checkflag ENGINE_MONDAY_MAGMAR
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Appear
.NoAppear:
	disappear MONDAY_MAGMAR
	endcallback

.Appear:
	appear MONDAY_MAGMAR
	endcallback

MondayMagmar:
	faceplayer
	cry MAGMAR
	loadwildmon MAGMAR, 30
	startbattle
	disappear MONDAY_MAGMAR
	setflag ENGINE_MONDAY_MAGMAR
	reloadmapafterbattle
	end

MountMortar1FOutsideEther:
	itemball ETHER

MountMortar1FOutsideRevive:
	itemball REVIVE

MountMortar1FOutsideHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION

MountMortar1FOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, ROUTE_42, 3
	warp_event 17, 33, ROUTE_42, 4
	warp_event 37, 33, ROUTE_42, 5
	warp_event 17,  3, MOUNT_MORTAR_2F_INSIDE, 1
	warp_event 11, 21, MOUNT_MORTAR_1F_INSIDE, 1
	warp_event 29, 21, MOUNT_MORTAR_1F_INSIDE, 2
	warp_event 17, 29, MOUNT_MORTAR_B1F, 2
	warp_event  7, 13, MOUNT_MORTAR_1F_INSIDE, 3
	warp_event 31, 13, MOUNT_MORTAR_1F_INSIDE, 4

	def_coord_events

	def_bg_events
	bg_event 25, 22, BGEVENT_ITEM, MountMortar1FOutsideHiddenHyperPotion

	def_object_events
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideEther, EVENT_MOUNT_MORTAR_1F_OUTSIDE_ETHER
	object_event 31, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideRevive, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
    object_event 10, 13, SPRITE_MAGMAR, SPRITEMOVEDATA_POKEMON, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MondayMagmar, EVENT_MONDAY_MAGMAR
