	object_const_def
	const ROUTE29_COOLTRAINER_M1
	const ROUTE29_YOUNGSTER
	const ROUTE29_TEACHER1
	const ROUTE29_FRUIT_TREE
	const ROUTE29_FISHER
	const ROUTE29_COOLTRAINER_M2
	const ROUTE29_TUSCANY
	const ROUTE29_POKE_BALL
	const PLAYER_M1
	const PLAYER_M2
	const PLAYER_F1
	const PLAYER_F2

Route29_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_ROUTE29_NOTHING
	scene_script .DummyScene1 ; SCENE_ROUTE29_CATCH_TUTORIAL

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Tuscany
	callback MAPCALLBACK_NEWMAP, .ResetExitscene

.DummyScene0:
	end

.DummyScene1:
	end

.Tuscany:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .DoesTuscanyAppear

.TuscanyDisappears:
	disappear ROUTE29_TUSCANY
	endcallback

.DoesTuscanyAppear:
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .TuscanyDisappears
	appear ROUTE29_TUSCANY
	endcallback
	
.ResetExitscene
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	endcallback
	
ExitLeftScene1:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder1
	appear PLAYER_M1
	sjump .HidePlayer1
.ShowGirlPlaceholder1
	appear PLAYER_F1
.HidePlayer1
	applymovement PLAYER, HidePersonMovement
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F1Movement
	applymovement PLAYER_M1, ExitsceneMovement
	sjump .Scenemove1
.F1Movement
	applymovement PLAYER_F1, ExitsceneMovement
.Scenemove1
	applymovement PLAYER, ShowPersonMovement
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder1
	disappear PLAYER_M1
	sjump .HidPlaceholder1
.HideGirlPlaceholder1
	disappear PLAYER_F1
.HidPlaceholder1
	warpfacing LEFT, CHERRYGROVE_CITY, 41, 8
	end
	
ExitLeftScene2:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder2
	appear PLAYER_M2
	sjump .HidePlayer2
.ShowGirlPlaceholder2
	appear PLAYER_F2
.HidePlayer2
	applymovement PLAYER, HidePersonMovement
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F2Movement
	applymovement PLAYER_M2, ExitsceneMovement
	sjump .Scenemove2
.F2Movement
	applymovement PLAYER_F2, ExitsceneMovement
.Scenemove2
	applymovement PLAYER, ShowPersonMovement
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder2
	disappear PLAYER_M2
	sjump .HidPlaceholder2
.HideGirlPlaceholder2
	disappear PLAYER_F2
.HidPlaceholder2
	warpfacing LEFT, CHERRYGROVE_CITY, 41, 9
	end


Route29Tutorial1:
	turnobject ROUTE29_COOLTRAINER_M1, UP
	showemote EMOTE_SHOCK, ROUTE29_COOLTRAINER_M1, 15
	applymovement ROUTE29_COOLTRAINER_M1, DudeMovementData1a
	turnobject PLAYER, LEFT
	setevent EVENT_DUDE_TALKED_TO_YOU
	opentext
	writetext CatchingTutorialIntroText
	yesorno
	iffalse Script_RefusedTutorial1
	closetext
	follow ROUTE29_COOLTRAINER_M1, PLAYER
	applymovement ROUTE29_COOLTRAINER_M1, DudeMovementData1b
	stopfollow
	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	turnobject ROUTE29_COOLTRAINER_M1, UP
	opentext
	writetext CatchingTutorialDebriefText
	waitbutton
	closetext
	setscene SCENE_ROUTE29_NOTHING
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

Route29Tutorial2:
	turnobject ROUTE29_COOLTRAINER_M1, UP
	showemote EMOTE_SHOCK, ROUTE29_COOLTRAINER_M1, 15
	applymovement ROUTE29_COOLTRAINER_M1, DudeMovementData2a
	turnobject PLAYER, LEFT
	setevent EVENT_DUDE_TALKED_TO_YOU
	opentext
	writetext CatchingTutorialIntroText
	yesorno
	iffalse Script_RefusedTutorial2
	closetext
	follow ROUTE29_COOLTRAINER_M1, PLAYER
	applymovement ROUTE29_COOLTRAINER_M1, DudeMovementData2b
	stopfollow
	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	turnobject ROUTE29_COOLTRAINER_M1, UP
	opentext
	writetext CatchingTutorialDebriefText
	waitbutton
	closetext
	setscene SCENE_ROUTE29_NOTHING
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

Script_RefusedTutorial1:
	writetext CatchingTutorialDeclinedText
	waitbutton
	closetext
	applymovement ROUTE29_COOLTRAINER_M1, DudeMovementData1b
	setscene SCENE_ROUTE29_NOTHING
	end

Script_RefusedTutorial2:
	writetext CatchingTutorialDeclinedText
	waitbutton
	closetext
	applymovement ROUTE29_COOLTRAINER_M1, DudeMovementData2b
	setscene SCENE_ROUTE29_NOTHING
	end

CatchingTutorialDudeScript:
	faceplayer
	opentext
	readvar VAR_BOXSPACE
	ifequal 0, .BoxFull
	checkevent EVENT_LEARNED_TO_CATCH_POKEMON
	iftrue .BoxFull
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse .BoxFull
	writetext CatchingTutorialRepeatText
	yesorno
	iffalse .Declined
	closetext
	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext CatchingTutorialDebriefText
	waitbutton
	closetext
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

.BoxFull:
	writetext CatchingTutorialBoxFullText
	waitbutton
	closetext
	end

.Declined:
	writetext CatchingTutorialDeclinedText
	waitbutton
	closetext
	end

Route29YoungsterScript:
	jumptextfaceplayer Route29YoungsterText

Route29TeacherScript:
	jumptextfaceplayer Route29TeacherText

Route29FisherScript:
	jumptextfaceplayer Route29FisherText

Route29CooltrainerMScript:
	faceplayer
	opentext
	checktime DAY
	iftrue .day_morn
	checktime NITE
	iftrue .nite
.day_morn
	writetext Route29CooltrainerMText_WaitingForNight
	waitbutton
	closetext
	end

.nite
	writetext Route29CooltrainerMText_WaitingForMorning
	waitbutton
	closetext
	end

TuscanyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PINK_BOW_FROM_TUSCANY
	iftrue TuscanyTuesdayScript
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, TuscanyNotTuesdayScript
	checkevent EVENT_MET_TUSCANY_OF_TUESDAY
	iftrue .MetTuscany
	writetext MeetTuscanyText
	promptbutton
	setevent EVENT_MET_TUSCANY_OF_TUESDAY
.MetTuscany:
	writetext TuscanyGivesGiftText
	promptbutton
	verbosegiveitem PINK_BOW
	iffalse TuscanyDoneScript
	setevent EVENT_GOT_PINK_BOW_FROM_TUSCANY
	writetext TuscanyGaveGiftText
	waitbutton
	closetext
	end

TuscanyTuesdayScript:
	writetext TuscanyTuesdayText
	waitbutton
TuscanyDoneScript:
	closetext
	end

TuscanyNotTuesdayScript:
	writetext TuscanyNotTuesdayText
	waitbutton
	closetext
	end

Route29Sign1:
	jumptext Route29Sign1Text

Route29Sign2:
	jumptext Route29Sign2Text

Route29FruitTree:
	fruittree FRUITTREE_ROUTE_29

Route29Potion:
	itemball POTION
	
ExitsceneMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
ShowPersonMovement:
	show_object
	step_end

HidePersonMovement:
	hide_object
	step_end

DudeMovementData1a:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

DudeMovementData2a:
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

DudeMovementData1b:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

DudeMovementData2b:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end

CatchingTutorialBoxFullText:
	text "#MON hide in"
	line "the grass. Who"

	para "knows when they'll"
	line "pop out…"
	done

CatchingTutorialIntroText:
	text "I've seen you a"
	line "couple times. How"

	para "many #MON have"
	line "you caught?"

	para "Would you like me"
	line "to show you how to"
	cont "catch #MON?"
	done

CatchingTutorialDebriefText:
	text "That's how you do"
	line "it."

	para "If you weaken them"
	line "first, #MON are"
	cont "easier to catch."
	done

CatchingTutorialDeclinedText:
	text "Oh. Fine, then."

	para "Anyway, if you"
	line "want to catch"

	para "#MON, you have"
	line "to walk a lot."
	done

CatchingTutorialRepeatText:
	text "Huh? You want me"
	line "to show you how to"
	cont "catch #MON?"
	done

Route29YoungsterText:
	text "Yo. How are your"
	line "#MON?"

	para "If they're weak"
	line "and not ready for"

	para "battle, keep out"
	line "of the grass."
	done

Route29TeacherText:
	text "See those ledges?"
	line "It's scary to jump"
	cont "off them."

	para "But you can go to"
	line "NEW BARK without"

	para "walking through"
	line "the grass."
	done

Route29FisherText:
	text "I wanted to take a"
	line "break, so I saved"

	para "to record my"
	line "progress."
	done

Route29CooltrainerMText_WaitingForDay: ; unreferenced
	text "I'm waiting for"
	line "#MON that"

	para "appear only in the"
	line "daytime."
	done

Route29CooltrainerMText_WaitingForNight:
	text "I'm waiting for"
	line "#MON that"

	para "appear only at"
	line "night."
	done

Route29CooltrainerMText_WaitingForMorning:
	text "I'm waiting for"
	line "#MON that"

	para "appear only in the"
	line "morning."
	done

MeetTuscanyText:
	text "TUSCANY: I do be-"
	line "lieve that this is"

	para "the first time"
	line "we've met?"

	para "Please allow me to"
	line "introduce myself."

	para "I am TUSCANY of"
	line "Tuesday."
	done

TuscanyGivesGiftText:
	text "By way of intro-"
	line "duction, please"

	para "accept this gift,"
	line "a PINK BOW."
	done

TuscanyGaveGiftText:
	text "TUSCANY: Wouldn't"
	line "you agree that it"
	cont "is most adorable?"

	para "It strengthens"
	line "normal-type moves."

	para "I am certain it"
	line "will be of use."
	done

TuscanyTuesdayText:
	text "TUSCANY: Have you"
	line "met MONICA, my"
	cont "older sister?"

	para "Or my younger"
	line "brother, WESLEY?"

	para "I am the second of"
	line "seven children."
	done

TuscanyNotTuesdayText:
	text "TUSCANY: Today is"
	line "not Tuesday. That"
	cont "is unfortunate…"
	done

Route29Sign1Text:
	text "ROUTE 29"

	para "CHERRYGROVE CITY -"
	line "NEW BARK TOWN"
	done

Route29Sign2Text:
	text "ROUTE 29"

	para "CHERRYGROVE CITY -"
	line "NEW BARK TOWN"
	done

Route29_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 39,  3, ROUTE_29_ROUTE_46_GATE, 3
	warp_event  4,  8, CHERRYGROVE_CITY, 6
	warp_event  4,  9, CHERRYGROVE_CITY, 7

	def_coord_events
	coord_event 59, 16, SCENE_ROUTE29_CATCH_TUTORIAL, Route29Tutorial1
	coord_event 59, 17, SCENE_ROUTE29_CATCH_TUTORIAL, Route29Tutorial2
	coord_event  4,  8, SCENE_DEFAULT, ExitLeftScene1
	coord_event  4,  9, SCENE_DEFAULT, ExitLeftScene2

	def_bg_events
	bg_event 54,  9, BGEVENT_READ, Route29Sign1
	bg_event  5,  7, BGEVENT_READ, Route29Sign2

	def_object_events
	object_event 52, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CatchingTutorialDudeScript, -1
	object_event 13,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29YoungsterScript, -1
	object_event 17, 15, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29TeacherScript, -1
	object_event 15,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route29FruitTree, -1
	object_event 46,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route29FisherScript, -1
	object_event 33,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29CooltrainerMScript, -1
	object_event 31,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TuscanyScript, EVENT_ROUTE_29_TUSCANY_OF_TUESDAY
	object_event 51,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route29Potion, EVENT_ROUTE_29_POTION
	object_event  4,  8, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExitLeftScene1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4,  9, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExitLeftScene2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	object_event  4,  8, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ExitLeftScene1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	object_event  4,  9, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ExitLeftScene2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
