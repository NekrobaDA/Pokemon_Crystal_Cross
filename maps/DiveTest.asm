	object_const_def

DiveTest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .DiveMap
	
.DiveMap:
	divemap CHERRYGROVE_CITY, 8, 28
	endcallback	

DiveTest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3,  3, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
