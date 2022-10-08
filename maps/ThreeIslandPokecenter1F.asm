	object_const_def
	const THREEPOKECENTER1F_NURSE

ThreeIslandPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ThreeIslandPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

ThreeIslandPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, THREE_ISLAND, 1
	warp_event  4,  7, THREE_ISLAND, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThreeIslandPokecenter1FNurseScript, -1	
	