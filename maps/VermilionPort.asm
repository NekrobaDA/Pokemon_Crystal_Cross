	object_const_def
	const VERMILIONPORT_SAILOR1
	const VERMILIONPORT_SAILOR2
	const VERMILIONPORT_SUPER_NERD

VermilionPort_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .LeaveFastShip ; SCENE_VERMILIONPORT_LEAVE_SHIP

	def_callbacks
	;callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.LeaveFastShip:
	prioritysjump .LeaveFastShipScript
	end

;.FlyPoint:
	;setflag ENGINE_FLYPOINT_VERMILION
	;endcallback

.LeaveFastShipScript:
	applymovement PLAYER, VermilionPortLeaveFastShipMovement
	appear VERMILIONPORT_SAILOR1
	setscene SCENE_DEFAULT
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	setevent EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	clearevent EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	setevent EVENT_FAST_SHIP_FIRST_TIME
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	blackoutmod VERMILION_CITY
	end

VermilionPortSailorAtGangwayScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	clearevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	clearevent EVENT_BEAT_BURGLAR_COREY
	clearevent EVENT_BEAT_BUG_CATCHER_KEN
	clearevent EVENT_BEAT_GUITARIST_CLYDE
	clearevent EVENT_BEAT_POKEFANM_JEREMY
	clearevent EVENT_BEAT_POKEFANF_GEORGIA
	clearevent EVENT_BEAT_SAILOR_KENNETH
	clearevent EVENT_BEAT_TEACHER_SHIRLEY
	clearevent EVENT_BEAT_SCHOOLBOY_NATE
	clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	appear VERMILIONPORT_SAILOR1
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end
	
VermilionPortSeviiOneAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_ONE
	warpfacing RIGHT, ONE_ISLAND, 12, 21
	end
	
VermilionPortSeviiTwoAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_TWO
	warpfacing RIGHT, TWO_ISLAND, 10, 13
	end
	
VermilionPortSeviiThreeAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_THREE
	warpfacing RIGHT, THREE_ISLAND, 10, 51
	end
	
VermilionPortSeviiFourAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_FOUR
	warpfacing RIGHT, FOUR_ISLAND, 8, 33
	end
	
VermilionPortSeviiFiveAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_FIVE
	warpfacing RIGHT, FIVE_ISLAND, 10, 21
	end
	
VermilionPortSeviiSixAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_SIX
	warpfacing RIGHT, SIX_ISLAND, 10, 25
	end
	
VermilionPortSeviiSevenAtGangwayScript:
	faceplayer
	opentext
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setflag ENGINE_FLYPOINT_SEVEN
	warpfacing LEFT, SEVEN_ISLAND, 18, 21
	end

VermilionPortAlreadyRodeScript:
	writetext VermilionPortCantBoardText
	waitbutton
	closetext
	end

VermilionPortWalkUpToShipScript:
	turnobject VERMILIONPORT_SAILOR2, RIGHT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .skip
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .skip
	turnobject PLAYER, LEFT
	opentext
	writetext VermilionPortAskRegion
	promptbutton
	loadmenu RegionChoice_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ContinueToJohto
	ifequal 2, .sevii
	ifequal 3, VermilionPortNotRidingMoveAwayScript
.ContinueToJohto
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	writetext VermilionPortAskBoardingText
	yesorno
	iffalse VermilionPortNotRidingMoveAwayScript
	writetext VermilionPortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.NextShipWednesday:
	writetext VermilionPortSailMondayText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.NextShipSunday:
	writetext VermilionPortSailSundayText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.skip:
	end
	
.sevii:
	writetext WhichIsland
	loadmenu ListSeviiIslands_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .OneIsland
	ifequal 2, .TwoIsland
	ifequal 3, .ThreeIsland
	ifequal 4, .FourIsland
	ifequal 5, .FiveIsland
	ifequal 6, .SixIsland
	ifequal 7, .SevenIsland
	sjump VermilionPortNotRidingScript
	
.OneIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiOneAtGangwayScript
.TwoIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiTwoAtGangwayScript
.ThreeIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiThreeAtGangwayScript
.FourIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiFourAtGangwayScript
.FiveIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiFiveAtGangwayScript
.SixIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiSixAtGangwayScript
.SevenIsland
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSeviiSevenAtGangwayScript
	
ListSeviiIslands_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING
	db 7 ; # items
	db "One Isle@"
	db "Two Isle@"
	db "Three Isle@"
	db "Four Isle@"
	db "Five Isle@"
	db "Six Isle@"
	db "Seven Isle@"
	
RegionChoice_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "JOHTO@"
	db "SEVII@"
	db "Cancel@"

VermilionPortNotRidingScript:
	writetext VermilionPortComeAgainText
	waitbutton
	closetext
	end

VermilionPortNotRidingMoveAwayScript:
	writetext VermilionPortComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

VermilionPortSailorScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	writetext VermilionPortAskBoardingText
	yesorno
	iffalse VermilionPortNotRidingScript
	writetext VermilionPortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortApproachFastShipRightMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	end

.NextShipWednesday:
	writetext VermilionPortSailMondayText
	waitbutton
	closetext
	end

.NextShipSunday:
	writetext VermilionPortSailSundayText
	waitbutton
	closetext
	end

VermilionPortSuperNerdScript:
	faceplayer
	opentext
	writetext VermilionPortSuperNerdText
	waitbutton
	closetext
	end

VermilionPortHiddenIron:
	hiddenitem IRON, EVENT_VERMILION_PORT_HIDDEN_IRON

VermilionPortEnterFastShipMovement:
	step DOWN
	step_end

VermilionPortLeaveFastShipMovement:
	step UP
	step_end

VermilionPortCannotEnterFastShipMovement:
	step RIGHT
	turn_head LEFT
	step_end

VermilionPortApproachFastShipMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VermilionPortApproachFastShipRightMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VermilionPortDepartingText:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

VermilionPortCantBoardText:
	text "Sorry. You can't"
	line "board now."
	done

VermilionPortAskBoardingText:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done

VermilionPortAskTicketText:
	text "May I see your"
	line "S.S.TICKET?"
	done

VermilionPortComeAgainText:
	text "We hope to see you"
	line "again!"
	done

VermilionPortSSTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "That's it."
	line "Thank you!"
	done

VermilionPortNoTicketText:
	text "<PLAYER> tried to"
	line "show the S.S."
	cont "TICKET…"

	para "…But no TICKET!"

	para "Sorry!"
	line "You may board only"

	para "if you have an"
	line "S.S.TICKET."
	done

VermilionPortSailMondayText:
	text "The FAST SHIP will"
	line "sail on Wednesday."
	done

VermilionPortSailSundayText:
	text "The FAST SHIP will"
	line "sail next Sunday."
	done
	
VermilionPortAskRegion:
	text "Which region are"
	line "you headed to?"
	done
	
WhichIsland:
	;text "Sail to which island?"
	;done
	text ""
	line "Which island?"
	done

VermilionPortSuperNerdText:
	text "You came from"
	line "JOHTO?"

	para "I hear many rare"
	line "#MON live over"
	cont "there."
	done

VermilionPort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, VERMILION_PORT_PASSAGE, 5
	warp_event  7, 17, FAST_SHIP_1F, 1

	def_coord_events
	coord_event  7, 11, SCENE_DEFAULT, VermilionPortWalkUpToShipScript

	def_bg_events
	bg_event 16, 13, BGEVENT_ITEM, VermilionPortHiddenIron

	def_object_events
	object_event  7, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorAtGangwayScript, EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	object_event  6, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorScript, -1
	object_event 11, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSuperNerdScript, -1
