	object_const_def
	const THREEISLAND_SAILOR
	const THREEISLAND_RECEPTIONIST
	const THREEISLAND_YOUNGSTER
	const THREEISLAND_BEAUTY
	const THREEISLAND_BIKER

ThreeIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
ThreeIslandPortScript:
	opentext
	writetext AskIfSailing3I
	promptbutton
	loadmenu RegionChoice_MenuHeader3I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding3I
	
.ContinueToKanto
	writetext SetSailText
	waitbutton
	closetext
	special FadeOutPalettes
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland3I
	loadmenu ListSeviiIslands_MenuHeader3I
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .TwoIsland
	ifequal 3, .FourIsland
	ifequal 4, .FiveIsland
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
	warpfacing RIGHT, SIX_ISLAND, 10, 25
	end

.SevenIsland
	setflag ENGINE_FLYPOINT_SEVEN
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding3I:
	writetext ComeAgainText3I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader3I:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR
	db 6 ; # items
	db "One Isle@"
	db "Two Isle@"
	db "Four Isle@"
	db "Five Isle@"
	db "Six Isle@"
	db "Seven Isle@"
	end
	
RegionChoice_MenuHeader3I:
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
	
AskIfSailing3I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText3I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland3I:
	text ""
	line "Which island?"
	done

ThreeIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 25, THREE_ISLAND_POKECENTER_1F, 1
	warp_event 17, 11, THREE_ISLAND_MART, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 51, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThreeIslandPortScript, -1
