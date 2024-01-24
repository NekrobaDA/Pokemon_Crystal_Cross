	object_const_def
	const TWOISLAND_SAILOR
	const TWOISLAND_CLERK
	const TWOISLAND_ROCKER
	const TWOISLAND_LASS
	const TWOISLAND_BUG_CATCHER
	const TWOISLAND_POKEFAN_F

TwoIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
TwoIslandBerryTraderScript:
	opentext
	writetext BerryTraderText
	promptbutton
	loadmenu ItemChoice_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PechaTrade
	ifequal 2, .PersimTrade
	ifequal 3, .ChestoTrade
	ifequal 4, .CheriTrade
	ifequal 5, .AspearTrade
	ifequal 6, .RawstTrade
	sjump CancelScriptBT
	
	.PechaTrade
	checkitem PECHA_BERRY, 99
	iffalse .DontHaveBerries
	
	writetext WillBe99PechaBerries
	yesorno
	iffalse CancelScriptBT
	
	takeitem PECHA_BERRY, 99
	playsound SFX_TRANSACTION
	giveitem PECHA_SCARF
	
	opentext
	writetext HereYouGoText
	promptbutton
	closetext
	end
	
	.PersimTrade
	checkitem PERSIM_BERRY, 99
	iffalse .DontHaveBerries
	
	writetext WillBe99PersimBerries
	yesorno
	iffalse CancelScriptBT
	
	takeitem PERSIM_BERRY, 99
	playsound SFX_TRANSACTION
	giveitem PERSIM_BAND
	
	opentext
	writetext HereYouGoText
	promptbutton
	closetext
	end
	
	.ChestoTrade
	checkitem CHESTO_BERRY, 99
	iffalse .DontHaveBerries
	
	writetext WillBe99ChestoBerries
	yesorno
	iffalse CancelScriptBT
	
	takeitem CHESTO_BERRY, 99
	playsound SFX_TRANSACTION
	giveitem INSOMNISCOPE
	
	opentext
	writetext HereYouGoText
	promptbutton
	closetext
	end
	
	.CheriTrade
	checkitem CHERI_BERRY, 99
	iffalse .DontHaveBerries
	
	writetext WillBe99CheriBerries
	yesorno
	iffalse CancelScriptBT
	
	takeitem CHERI_BERRY, 99
	playsound SFX_TRANSACTION
	giveitem LIMBER_BAND
	
	opentext
	writetext HereYouGoText
	promptbutton
	closetext
	end
	
	.AspearTrade
	checkitem ASPEAR_BERRY, 99
	iffalse .DontHaveBerries
	
	writetext WillBe99AspearBerries
	yesorno
	iffalse CancelScriptBT
	
	takeitem ASPEAR_BERRY, 99
	playsound SFX_TRANSACTION
	giveitem MAGMA_VEST
	
	opentext
	writetext HereYouGoText
	promptbutton
	closetext
	end
	
	.RawstTrade
	checkitem RAWST_BERRY, 99
	iffalse .DontHaveBerries
	
	writetext WillBe99RawstBerries
	yesorno
	iffalse CancelScriptBT
	
	takeitem RAWST_BERRY, 99
	playsound SFX_TRANSACTION
	giveitem FROST_RING
	
	opentext
	writetext HereYouGoText
	promptbutton
	closetext
	end
	
.DontHaveBerries
	opentext
	writetext NotEnoughBerriesText
	waitbutton
	closetext
	end
	
CancelScriptBT:
	opentext
	writetext ComeAgainTextBT
	waitbutton
	closetext
	end
	
HereYouGoText:
	text "Here you go!"
	done
	
NotEnoughBerriesText:
	text "You don't have"
	line "enough berries."
	done
	
WillBe99RawstBerries:
	text "That will be 99"
	line "RAWST berries."
	done
	
WillBe99AspearBerries:
	text "That will be 99"
	line "ASPEAR berries."
	done
	
WillBe99CheriBerries:
	text "That will be 99"
	line "CHERI berries."
	done
	
WillBe99ChestoBerries:
	text "That will be 99"
	line "CHESTO berries."
	done
	
WillBe99PersimBerries:
	text "That will be 99"
	line "PERSIM berries."
	done
	
WillBe99PechaBerries:
	text "That will be 99"
	line "PECHA berries."
	done
	
ComeAgainTextBT:
	text "We hope to see you"
	line "again!"
	done
	
BerryTraderText:
	text "Hello, I am the"
	line "Berry Trader."
	cont "I trade items"
	cont "for berries."
	
	para "Would you like"
	line "to trade?"
	done
	
ItemChoice_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR
	db 6 ; # items
	db "PECHA SCARF@"
	db "PERSIM BAND@"
	db "INSOMNISCOPE@"
	db "LIMBER BAND@"
	db "MAGMA VEST@"
	db "FROST RING@"
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
	writetext SetSailText
	waitbutton
	closetext
	special FadeOutPalettes
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
	sjump CancelScript
	
.OneIsland
	setflag ENGINE_FLYPOINT_ONE
	warpfacing RIGHT, ONE_ISLAND, 12, 21
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
	
NotRiding2I:
	writetext ComeAgainText2I
	waitbutton
	closetext
	end
	
ListSeviiIslands_MenuHeader2I:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR
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
	
TwoIslandRockerScript:
	faceplayer
	opentext
	writetext Text_2IRocker
	waitbutton
	closetext
	end
	
Text_2IRocker:
	text "I moved here"
	line "from CELADON."
	
	para "It's been quite"
	line "the adjustment."
	done
	
TwoIslandLassScript:
	faceplayer
	opentext
	writetext Text_2ILass
	waitbutton
	closetext
	end
	
Text_2ILass:
	text "The shopkeeper's"
	line "brother works at"
	cont "the Game Preserve."
	done
	
TwoIslandBugcatcherScript:
	faceplayer
	opentext
	writetext Text_2IBugcatcher
	waitbutton
	closetext
	end
	
Text_2IBugcatcher:
	text "An old woman"
	line "lives in the house"
	cont "out on the cape."
	
	para "She's knowledgeable,"
	line "but a bit creepy..."
	done
	
TwoIslandPokefanScript:
	faceplayer
	opentext
	writetext Text_2IPokefan
	waitbutton
	closetext
	end
	
Text_2IPokefan:
	text "I like to walk"
	line "here and look out"
	cont "to sea."
	
	para "It's peaceful."
	done
	
TwoIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, TWO_ISLAND_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwoIslandPortScript, -1
	object_event 34,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwoIslandBerryTraderScript, -1
	object_event 39, 13, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_, OBJECTTYPE_SCRIPT, 0, TwoIslandRockerScript, -1
	object_event 28,  8, SPRITE_LASS, SPRITEMOVEDATA_STILL, 0, 1, -1, -1, PAL_NPC_, OBJECTTYPE_SCRIPT, 0, TwoIslandLassScript, -1
	object_event 31, 17, SPRITE_BUGCATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_, OBJECTTYPE_SCRIPT, 0, TwoIslandBugcatcherScript, -1
	object_event 12,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_, OBJECTTYPE_SCRIPT, 0, TwoIslandPokefanScript, -1
	