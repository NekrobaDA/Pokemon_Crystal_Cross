	object_const_def
	const FOURISLAND_SAILOR
	const FOURISLAND_POKEFAN_M
	const FOURISLAND_GRANNY
	const FOURISLAND_TWIN
	const FOURISLAND_GRAMPS
	const FOUR_ISLAND_ROCK1
	const FOUR_ISLAND_ROCK2

FourIsland_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	def_callbacks
	
.DummyScene0:
	end
	

EggManScript:
	faceplayer
	opentext	
	checkflag ENGINE_YANMA_SWARM
	iftrue .AlreadyGotEggToday
	writetext EggManText_GiveOddEgg
	promptbutton
	closetext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	special GiveEggMoveEgg
	opentext
	writetext EggManText_GotOddEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext EggManText_DescribeOddEgg
	waitbutton
	closetext
	setflag ENGINE_YANMA_SWARM
	end

.PartyFull:
	opentext
	writetext EggManText_PartyFull
	waitbutton
	closetext
	end
	
.AlreadyGotEggToday:
	writetext EggManText_ComeAgain
	waitbutton
	closetext
	end
	
EggManText_ComeAgain:
	text "Come again."
	done
	
EggManText_GotOddEgg:
	text "<PLAYER> received"
	line "ODD EGG!"
	done

EggManText_DescribeOddEgg:
	text "I found that when"
	line "I was caring for"

	para "someone's #MON"
	line "before."

	para "But the trainer"
	line "didn't want the"

	para "EGG, so I'd kept"
	line "it around."
	done

EggManText_PartyFull:
	text "You've no room for"
	line "this."
	done
	
EggManText_GiveOddEgg:
	text "I'm the DAY-CARE"
	line "MAN."

	para "Do you know about"
	line "EGGS?"

	para "I was raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible is"
	line "that?"

	para "Well, wouldn't you"
	line "like this EGG?"

	para "Then fine, this is"
	line "yours to keep!"
	done	
	
	
	
FourIslandPortScript:
	opentext
	writetext AskIfSailing4I
	promptbutton
	loadmenu RegionChoice_MenuHeader4I
	verticalmenu
	closewindow
	ifequal 1, .ContinueToKanto
	ifequal 2, .sevii
	ifequal 3, NotRiding4I
	
.ContinueToKanto
	warpfacing UP, VERMILION_PORT, 8, 11
	end
	
.sevii
	writetext WhichIsland4I
	loadmenu ListSeviiIslands_MenuHeader4I
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .TwoIsland
	ifequal 3, .ThreeIsland
	ifequal 4, .FiveIsland
	ifequal 5, .SixIsland
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

.FiveIsland
	warpfacing RIGHT, FIVE_ISLAND, 10, 21
	end

.SixIsland
	warpfacing RIGHT, SIX_ISLAND, 10, 25
	end

.SevenIsland
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end
	
NotRiding4I:
	writetext ComeAgainText4I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader4I:
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
	db "Five Isle@"
	db "Six Isle@"
	db "Seven Isle@"
	end
	
RegionChoice_MenuHeader4I:
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
	
AskIfSailing4I:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
	
ComeAgainText4I:
	text "We hope to see you"
	line "again!"
	done
	
WhichIsland4I:
	text ""
	line "Which island?"
	done
	
FourIslandRock:
	jumpstd SmashRockScript

FourIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 17, FOUR_ISLAND_POKECENTER_1F, 1
	warp_event 23, 23, FOUR_ISLAND_MART, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 33, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FourIslandPortScript, -1
	object_event  4, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FourIslandRock, -1
	object_event  5, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FourIslandRock, -1
	object_event 20, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EggManScript, -1
