	object_const_def
	const SIXISLAND_SAILOR

SixIsland_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	def_callbacks
	
.DummyScene0:
	end
	
SixIslandPortScript:
	opentext
	writetext AskIfSailing6I
	promptbutton
	loadmenu RegionChoice_MenuHeader6I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding6I
	
.ContinueToKanto
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland6I
	loadmenu ListSeviiIslands_MenuHeader6I
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .TwoIsland
	ifequal 3, .ThreeIsland
	ifequal 4, .FourIsland
	ifequal 5, .FiveIsland
	ifequal 6, .SevenIsland
	end
	
.OneIsland
	warpfacing RIGHT, ONE_ISLAND, 12, 21
	end

.TwoIsland
	warpfacing RIGHT, TWO_ISLAND, 10, 13
	end

.ThreeIsland
	warpfacing RIGHT, THREE_ISLAND, 10, 51
	end

.FourIsland
	warpfacing RIGHT, FOUR_ISLAND, 8, 33
	end

.FiveIsland
	warpfacing RIGHT, FIVE_ISLAND, 10, 21
	end

.SevenIsland
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding6I:
	writetext ComeAgainText6I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader6I:
	db MENU_SPRITE_ANIMS | MENU_BACKUP_TILES ; flags
	menu_coords 4, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 6 ; # items
	db "One Isle@"
	db "Two Isle@"
	db "Three Isle@"
	db "Four Isle@"
	db "Five Isle@"
	db "Seven Isle@"
	end
	
RegionChoice_MenuHeader6I:
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
	
AskIfSailing6I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText6I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland6I:
	text ""
	line "Which island?"
	done

SixIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	;warp_event 19,  15, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 25, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SixIslandPortScript, -1