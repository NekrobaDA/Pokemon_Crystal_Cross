	object_const_def
	const TOHJOFALLS_POKE_BALL
	const CRYSTAL_ONIX

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Onix
	
.Onix:
	checkevent EVENT_FOUGHT_ONIX
	iftrue .NoAppear

.Appear:
	appear CRYSTAL_ONIX
	endcallback

.NoAppear:
	disappear CRYSTAL_ONIX
	endcallback	

CrystalOnix:
	cry ONIX
	setevent EVENT_FOUGHT_ONIX
	loadwildmon ONIX, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	disappear CRYSTAL_ONIX
	reloadmapafterbattle
	end

TohjoFallsMoonStone:
	itemball MOON_STONE

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 15, ROUTE_27, 2
	warp_event 26,  0, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 27, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event 15,  7, SPRITE_EKANS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CrystalOnix, EVENT_CRYSTAL_ONIX
