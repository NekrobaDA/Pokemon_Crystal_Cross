	object_const_def
	const THREEMART_CLERK

ThreeIslandMart_MapScripts:
	def_scene_scripts

	def_callbacks
	
ThreeIslandClerkScript:
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

ThreeIslandMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, THREE_ISLAND, 2
	warp_event  3,  7, THREE_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThreeIslandClerkScript, -1
	