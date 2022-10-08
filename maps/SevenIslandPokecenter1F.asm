	object_const_def
	const SEVENPOKECENTER1F_NURSE

SevenIslandPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SevenIslandPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SevenIslandPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SEVEN_ISLAND,  2
	warp_event  4,  7, SEVEN_ISLAND,  2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevenIslandPokecenter1FNurseScript, -1	
	