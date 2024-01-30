	object_const_def
	const SIXISLAND_SAILOR
	const SIXISLAND_HIKER
	const SIXISLAND_COOLTRAINER_M
	const SIXISLAND_TEACHER

SixIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
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
	writetext SetSailText
	waitbutton
	closetext
	special FadeOutPalettes
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

.SevenIsland
	setflag ENGINE_FLYPOINT_SEVEN
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding6I:
	writetext ComeAgainText6I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader6I:
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
	
SixIslandHikerScript:
	faceplayer
	opentext
	writetext Text_6IHiker
	waitbutton
	closetext
	end
	
Text_6IHiker:
	text "Keep going east"
	line "and you'll get to"
	cont "the WATER PATH."
	
	para "you can get to the"
	line "RUIN VALLEY from"
	cont "there."
	done
	
SixIslandCooltrainerScript:
	faceplayer
	opentext
	writetext Text_6ICooltrainer
	waitbutton
	closetext
	end
	
Text_6ICooltrainer:
	text "I've heard rumors"
	line "of a strong #MON"
	cont "living in the"
	cont "canyon."
	done
	
SixIslandTeacherScript:
	faceplayer
	opentext
	writetext Text_6ITeacher
	waitbutton
	closetext
	end
	
Text_6ITeacher:
	text "The sky at night"
	line "is fantastic here"
	cont "away from all the" 
	cont "city lights."
	done

SixIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  9, SIX_ISLAND_POKECENTER_1F, 1
	warp_event 21,  9, SIX_ISLAND_MART, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 25, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SixIslandPortScript, -1
	object_event 18,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, SixIslandHikerScript, -1
	object_event 22, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SixIslandCooltrainerScript, -1
	object_event 14, 15, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SixIslandTeacherScript, -1
