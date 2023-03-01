	object_const_def
	const PLAYER_M147
	const PLAYER_M247
	const PLAYER_F147
	const PLAYER_F247

Route47_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .ResetExitscene
	
.DummyScene0:
	end
	
.ResetExitscene
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	endcallback
	
ExitLeftScene471:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder1
	appear PLAYER_M147
	sjump .HidePlayer1
.ShowGirlPlaceholder1
	appear PLAYER_F147
.HidePlayer1
	applymovement PLAYER, HidePersonMovement47
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F1Movement
	applymovement PLAYER_M147, ExitsceneMovement47
	sjump .Scenemove1
.F1Movement
	applymovement PLAYER_F147, ExitsceneMovement47
.Scenemove1
	applymovement PLAYER, ShowPersonMovement47
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder1
	disappear PLAYER_M147
	sjump .HidPlaceholder1
.HideGirlPlaceholder1
	disappear PLAYER_F147
.HidPlaceholder1
	warpfacing LEFT, CATALLIA_TOWN, 20, 16
	end
	
ExitLeftScene472:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder2
	appear PLAYER_M247
	sjump .HidePlayer2
.ShowGirlPlaceholder2
	appear PLAYER_F247
.HidePlayer2
	applymovement PLAYER, HidePersonMovement47
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F2Movement
	applymovement PLAYER_M247, ExitsceneMovement47
	sjump .Scenemove2
.F2Movement
	applymovement PLAYER_F247, ExitsceneMovement47
.Scenemove2
	applymovement PLAYER, ShowPersonMovement47
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder2
	disappear PLAYER_M247
	sjump .HidPlaceholder2
.HideGirlPlaceholder2
	disappear PLAYER_F247
.HidPlaceholder2
	warpfacing LEFT, CATALLIA_TOWN, 20, 17
	end
	
ExitsceneMovement47:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
ShowPersonMovement47:
	show_object
	step_end

HidePersonMovement47:
	hide_object
	step_end

Route47_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  13, 23, ROCK_BASE, 1
	warp_event 4, 6, CATALLIA_TOWN, 3
	warp_event 4, 7, CATALLIA_TOWN, 4

	def_coord_events
	coord_event  4,  6, SCENE_DEFAULT, ExitLeftScene471
	coord_event  4,  7, SCENE_DEFAULT, ExitLeftScene472

	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExitLeftScene471, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4,  7, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExitLeftScene472, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	object_event  4,  6, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ExitLeftScene471, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	object_event  4,  7, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ExitLeftScene472, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
