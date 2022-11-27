	object_const_def
	const KINDLE_ROAD_ROCK1
	const KINDLE_ROAD_ROCK2
	const KINDLE_ROAD_ROCK3
	const KINDLE_ROAD_ROCK4
	const KINDLE_ROAD_ROCK5
	const KINDLE_ROAD_ROCK6
	const KINDLE_ROAD_ROCK7
	const KINDLE_ROAD_ROCK8
	const KINDLE_ROAD_ROCK9

KindleRoad_MapScripts:
	def_scene_scripts

	def_callbacks
	
KindleRoadRock:
	jumpstd SmashRockScript

KindleRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 20, 82, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 21, 83, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 11, 79, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 11, 75, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event  9, 74, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 13, 65, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 14, 66, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 12, 53, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
	object_event 11, 51, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KindleRoadRock, -1
