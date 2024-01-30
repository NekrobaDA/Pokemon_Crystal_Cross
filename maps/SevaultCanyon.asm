	object_const_def
	const SEVAULT_CANYON_ROCK1
	const SEVAULT_CANYON_ROCK2
	const SEVAULT_CANYON_ROCK3
	const SEVAULT_CANYON_ROCK4
	const SEVAULT_CANYON_ROCK5
	const SEVAULT_CANYON_ROCK6
	const SEVAULT_CANYON_ROCK7

SevaultCanyon_MapScripts:
	def_scene_scripts

	def_callbacks
	
SevaultCanyonRock:
	jumpstd SmashRockScript

SevaultCanyon_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 33, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
	object_event 11, 32, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
	object_event  4, 42, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
	object_event  7, 46, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
	object_event 14, 44, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
	object_event 18, 44, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
	object_event 15, 43, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevaultCanyonRock, -1
