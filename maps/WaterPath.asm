	object_const_def

WaterPath_MapScripts:
	def_scene_scripts

	def_callbacks

WaterPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 10, PATTERN_BUSH, 1
	warp_event  5, 11, PATTERN_BUSH, 2
	warp_event 13, 19, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events