	object_const_def
	const TWOISLAND_SAILOR
	const TWOISLAND_ROCKER
	const TWOISLAND_LASS
	const TWOISLAND_BUG_CATCHER
	const TWOISLAND_POKEFAN_F

TwoIsland_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	def_callbacks
	
.DummyScene0:
	end
	
TwoIslandPortScript:
	opentext
	writetext AskIfSailing2I
	promptbutton
	loadmenu RegionChoice_MenuHeader2I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding2I
	
.ContinueToKanto
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland2I
	loadmenu ListSeviiIslands_MenuHeader2I
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .ThreeIsland
	ifequal 3, .FourIsland
	ifequal 4, .FiveIsland
	ifequal 5, .SixIsland
	ifequal 6, .SevenIsland
	end
	
.OneIsland
	warpfacing RIGHT, ONE_ISLAND, 12, 21
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

.SixIsland
	warpfacing RIGHT, SIX_ISLAND, 10, 25
	end

.SevenIsland
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding2I:
	writetext ComeAgainText2I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader2I:
	db MENU_SPRITE_ANIMS | MENU_BACKUP_TILES ; flags
	menu_coords 4, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 6 ; # items
	db "One Isle@"
	db "Three Isle@"
	db "Four Isle@"
	db "Five Isle@"
	db "Six Isle@"
	db "Seven Isle@"
	end
	
RegionChoice_MenuHeader2I:
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
	
AskIfSailing2I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText2I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland2I:
	text ""
	line "Which island?"
	done
	
TwoIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, TWO_ISLAND_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 13, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwoIslandPortScript, -1
