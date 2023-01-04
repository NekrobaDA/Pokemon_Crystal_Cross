	object_const_def

CatalliaTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 

	def_callbacks
	
.DummyScene0:
	end
	
ExitRightCatallia1:
	warpfacing RIGHT, ROUTE_47, 5, 6
	end
	
ExitRightCatallia2:
	warpfacing RIGHT, ROUTE_47, 5, 7
	end

CatalliaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 17, CATALLIA_POKECENTER_1F, 1
	warp_event 13, 17, CATALLIA_MART, 2
	warp_event 20, 16, ROUTE_47, 2
	warp_event 20, 17, ROUTE_47, 3

	def_coord_events

	def_bg_events

	def_object_events
	