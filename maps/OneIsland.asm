	object_const_def
	const ONEISLAND_SAILOR
	const ONEISLAND_GRAMPS
	const ONEISLAND_GYM_GUIDE

OneIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
OneIslandPortScript:
	opentext
	writetext AskIfSailing1I
	promptbutton
	loadmenu RegionChoice_MenuHeader1I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding1I
	
.ContinueToKanto
	writetext SetSailText
	waitbutton
	closetext
	special FadeOutPalettes
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland1I
	loadmenu ListSeviiIslands_MenuHeader1I
	verticalmenu
	closewindow
	ifequal 1, .TwoIsland
	ifequal 2, .ThreeIsland
	ifequal 3, .FourIsland
	ifequal 4, .FiveIsland
	ifequal 5, .SixIsland
	ifequal 6, .SevenIsland
	sjump CancelScript
	
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
	warpfacing RIGHT, SIX_ISLAND, 10, 25
	end

.SevenIsland
	setflag ENGINE_FLYPOINT_SEVEN
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding1I:
	writetext ComeAgainText1I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader1I:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR; flags
	db 6 ; # items
	db "Two Isle@"
	db "Three Isle@"
	db "Four Isle@"
	db "Five Isle@"
	db "Six Isle@"
	db "Seven Isle@"
	end
	
RegionChoice_MenuHeader1I:
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
	
AskIfSailing1I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText1I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland1I:
	text ""
	line "Which island?"
	done

SetSailText:	
	text "Alright, let's"
	line "set sail."
	done
	
CancelScript:
	writetext ComeAgainText1I
	waitbutton
	closetext
	end
	
OneIslandOldManScript:
	faceplayer
	opentext
	writetext Text_1IOldMan
	waitbutton
	closetext
	end
	
Text_1IOldMan:
	text "That CELIO is a"
	line "brilliant man."
	
	para "He'd make a fine"
	line "husband for my"
	cont "granddaughter."
	done
	
OneIslandDudeScript:
	faceplayer
	opentext
	writetext Text_1IDude
	waitbutton
	closetext
	end
	
Text_1IDude:
	text "Hi, sight-seeing,"
	line "are you? Isn't"
	
	para "the warm climate"
	line "here great?"
	done

OneIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  5, ONE_ISLAND_POKECENTER_1F, 1
	warp_event  9, 11, OLIVINE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 21, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OneIslandPortScript, -1
	object_event 11, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OneIslandOldManScript, -1
	object_event 17, 10, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, OneIslandDudeScript, -1
