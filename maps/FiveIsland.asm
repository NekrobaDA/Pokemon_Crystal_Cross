	object_const_def
	const FIVEISLAND_SAILOR
	const FIVEISLAND_FISHING_GURU
	const FIVEISLAND_FISHER

FiveIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
FiveIslandPortScript:
	opentext
	writetext AskIfSailing5I
	promptbutton
	loadmenu RegionChoice_MenuHeader5I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding5I
	
.ContinueToKanto
	writetext SetSailText
	waitbutton
	closetext
	special FadeOutPalettes
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland5I
	loadmenu ListSeviiIslands_MenuHeader5I
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .TwoIsland
	ifequal 3, .ThreeIsland
	ifequal 4, .FourIsland
	ifequal 5, .SixIsland
	ifequal 6, .SevenIsland
	sjump CancelScript
	
.OneIsland
	setflag ENGINE_FLYPOINT_ONE
	warpfacing RIGHT, ONE_ISLAND, 12, 21
	end

.TwoIsland
	setflag ENGINE_FLYPOINT_TWO
	warpfacing RIGHT, TWO_ISLAND, 10, 13
	end

.ThreeIsland
	setflag ENGINE_FLYPOINT_THREE
	warpfacing RIGHT, THREE_ISLAND, 10, 51
	end

.FourIsland
	setflag ENGINE_FLYPOINT_FOUR
	warpfacing RIGHT, FOUR_ISLAND, 8, 33
	end

.SixIsland
	setflag ENGINE_FLYPOINT_SIX
	warpfacing RIGHT, SIX_ISLAND, 10, 25
	end

.SevenIsland
	setflag ENGINE_FLYPOINT_SEVEN
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding5I:
	writetext ComeAgainText5I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader5I:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR
	db 6 ; # items
	db "One Isle@"
	db "Two Isle@"
	db "Three Isle@"
	db "Four Isle@"
	db "Six Isle@"
	db "Seven Isle@"
	end
	
RegionChoice_MenuHeader5I:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "KANTO@"
	db "SEVII@"
	db "Cancel@"
	end
	
AskIfSailing5I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText5I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland5I:
	text ""
	line "Which island?"
	done
	
FiveIslandFishermanScript:
	faceplayer
	opentext
	writetext Text_5IFisherman
	waitbutton
	closetext
	end
	
Text_5IFisherman:
	text "It's been getting"
	line "busier around"
	cont "these parts lately."
	done
	
FiveIslandFisherScript:
	faceplayer
	opentext
	writetext Text_5IFisher
	waitbutton
	closetext
	end
	
Text_5IFisher:
	text "There hasn't been"
	line "as many fish since"
	cont "the weird building"
	cont "appeared in the"
	cont "MEADOW."
	done

FiveIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  5, FIVE_ISLAND_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 21, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FiveIslandPortScript, -1
	object_event  4,  8, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, FiveIslandFishermanScript, -1
	object_event 15, 10, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FiveIslandFisherScript, -1
