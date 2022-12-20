	object_const_def
	const SEVENISLAND_SAILOR
	const SEVENISLAND_GRANNY
	const SEVENISLAND_SCIENTIST
	const SEVENISLAND_COOLTRAINER_M

SevenIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
SevenIslandPortScript:
	opentext
	writetext AskIfSailing7I
	promptbutton
	loadmenu RegionChoice_MenuHeader7I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding7I
	
.ContinueToKanto
	writetext SetSailText
	waitbutton
	closetext
	special FadeOutPalettes
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland7I
	loadmenu ListSeviiIslands_MenuHeader7I
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .TwoIsland
	ifequal 3, .ThreeIsland
	ifequal 4, .FourIsland
	ifequal 5, .FiveIsland
	ifequal 6, .SixIsland
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

.FiveIsland
	setflag ENGINE_FLYPOINT_FIVE
	warpfacing RIGHT, FIVE_ISLAND, 10, 21
	end

.SixIsland
	setflag ENGINE_FLYPOINT_SIX
	warpfacing LEFT, SIX_ISLAND, 10, 25
	end
	
NotRiding7I:
	writetext ComeAgainText7I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader7I:
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
	db "Five Isle@"
	db "Six Isle@"
	end
	
RegionChoice_MenuHeader7I:
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
	
AskIfSailing7I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText7I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland7I:
	text ""
	line "Which island?"
	done

SevenIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  3, ROUTE_40_BATTLE_TOWER_GATE, 1
	warp_event 13,  9, SEVEN_ISLAND_POKECENTER_1F, 1
	warp_event  7, 15, SEVEN_ISLAND_MART, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 19, 25, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevenIslandPortScript, -1
