	object_const_def

WaterPath_MapScripts:
	def_scene_scripts

	def_callbacks

WaterPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 10, PATTERN_BUSH, 1
	warp_event 3, 11, PATTERN_BUSH, 2

	def_coord_events

	def_bg_events

	def_object_events