	object_const_def
	const TWOMART_CLERK

TwoIslandMart_MapScripts:
	def_scene_scripts

	def_callbacks
	
TwoIslandClerkScript:
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .PokeBallsInStock
	pokemart MARTTYPE_STANDARD, MART_CATALLIA
	closetext
	end
	
.PokeBallsInStock:
	pokemart MARTTYPE_STANDARD, MART_CATALLIA_DEX
	closetext
	end

TwoIslandMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CATALLIA_TOWN, 2
	warp_event  3,  7, CATALLIA_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwoIslandClerkScript, -1
	