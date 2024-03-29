	object_const_def
	const CHERRYGROVECITY_GRAMPS
	const CHERRYGROVECITY_SILVER
	const CHERRYGROVECITY_TEACHER
	const CHERRYGROVECITY_YOUNGSTER
	const CHERRYGROVECITY_FISHER
	const CHERRYGROVECITY_BIKER
	const CHERRYGROVE_CITY_FRUIT_TREE_1
	const CHERRYGROVE_CITY_FRUIT_TREE_2
	const CHERRYGROVE_CITY_FRUIT_TREE_3
	const CHERRYGROVE_CITY_FRUIT_TREE_4
	const CHERRYGROVE_CITY_FRUIT_TREE_5
	const CHERRYGROVE_CITY_FRUIT_TREE_6
	const CHERRYGROVECITY_FRUIT_TREE_1
	const CHERRYGROVECITY_FRUIT_TREE_2
	const CHERRYGROVECITY_FRUIT_TREE_3
	const CHERRYGROVECITY_FRUIT_TREE_4
	const CHERRYGROVECITY_FRUIT_TREE_5
	const CHERRYGROVECITY_FRUIT_TREE_6
	const CHERRYGROVECITY_MAGIKARP_0
	const CHERRYGROVECITY_MAGIKARP_1
	const CHERRYGROVECITY_MAGIKARP_2
	const CHERRYGROVECITY_MAGIKARP_3
	const CHERRYGROVECITY_PLAYER_M1  ;need to allocate more space in
	const CHERRYGROVECITY_PLAYER_F1  ;wram for map objects, at limit

CherrygroveCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_CHERRYGROVECITY_NOTHING
	scene_script .DummyScene1 ; SCENE_CHERRYGROVECITY_MEET_RIVAL

	def_callbacks
	;callback MAPCALLBACK_NEWMAP, .ResetExitscene ;breaks rival battle, does not appear
	callback MAPCALLBACK_NEWMAP, .FlyPointandDive

.FlyPointandDive:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	divemap DIVE_TEST, 3, 3
	endcallback
	
.ResetExitscene
	setmapscene, CHERRYGROVE_CITY, SCENE_DEFAULT
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	endcallback
	
.DummyScene0:
	end

.DummyScene1:
	end

ExitNorth30Scene2:
	moveobject CHERRYGROVECITY_PLAYER_M1, 23, 5
	moveobject CHERRYGROVECITY_PLAYER_F1, 23, 5
ExitNorth30Scene1:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder
	appear CHERRYGROVECITY_PLAYER_M1
	sjump .HidePlayer
.ShowGirlPlaceholder
	appear CHERRYGROVECITY_PLAYER_F1
.HidePlayer
	applymovement PLAYER, HidePersonMovementCG30
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F1Movement
	applymovement CHERRYGROVECITY_PLAYER_M1, ExitCG30Movement
	sjump .Scenemove
.F1Movement
	applymovement CHERRYGROVECITY_PLAYER_F1, ExitCG30Movement
.Scenemove
	applymovement PLAYER, ShowPersonMovementCG30
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder
	disappear CHERRYGROVECITY_PLAYER_M1
	sjump .HidPlaceholder
.HideGirlPlaceholder
	disappear CHERRYGROVECITY_PLAYER_F1
.HidPlaceholder
	warpfacing UP, ROUTE_30, 6, 49
	end
	
ExitCG30Movement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
ShowPersonMovementCG30:
	show_object
	step_end

HidePersonMovementCG30:
	hide_object
	step_end

CherrygroveCityGuideGent:
	faceplayer
	opentext
	writetext GuideGentIntroText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	writetext GuideGentTourText1
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow CHERRYGROVECITY_GRAMPS, PLAYER
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement1
	opentext
	writetext GuideGentPokecenterText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement2
	turnobject PLAYER, UP
	opentext
	writetext GuideGentMartText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement3
	turnobject PLAYER, UP
	opentext
	writetext GuideGentRoute30Text
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement4
	turnobject PLAYER, LEFT
	opentext
	writetext GuideGentSeaText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement5
	turnobject PLAYER, UP
	pause 60
	turnobject CHERRYGROVECITY_GRAMPS, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext GuideGentGiftText
	promptbutton
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	promptbutton
	writetext GuideGentPokegearText
	waitbutton
	closetext
	stopfollow
	special RestartMapMusic
	turnobject PLAYER, UP
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement6
	playsound SFX_ENTER_DOOR
	disappear CHERRYGROVECITY_GRAMPS
	clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
	waitsfx
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.mapcardname
	db "MAP CARD@"

.No:
	writetext GuideGentNoText
	waitbutton
	closetext
	end

CherrygroveSilverSceneSouth:
	;checkevent EVENT_RIVAL_CHERRYGROVE_CITY
	;iffalse EndScene
	;checkevent EVENT_BEAT_RIVAL_CHERRYGROVE
	;iftrue EndScene
	moveobject CHERRYGROVECITY_SILVER, 47, 9
CherrygroveSilverSceneNorth:
	;checkevent EVENT_RIVAL_CHERRYGROVE_CITY
	;iffalse EndScene
	;checkevent EVENT_BEAT_RIVAL_CHERRYGROVE
	;iftrue EndScene
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear CHERRYGROVECITY_SILVER
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalWalksToYou
	turnobject PLAYER, RIGHT
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext CherrygroveRivalText_Seen
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	setevent EVENT_BEAT_RIVAL_CHERRYGROVE
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouWon
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouLost
	waitbutton
	closetext
.FinishRival:
	playsound SFX_TACKLE
	applymovement PLAYER, CherrygroveCity_RivalPushesYouOutOfTheWay
	turnobject PLAYER, LEFT
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalExitsStageLeft
	disappear CHERRYGROVECITY_SILVER
	setscene SCENE_CHERRYGROVECITY_NOTHING
	special HealParty
	playmapmusic
	end
	
EndScene:
	end
	

CherrygroveTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_MAP_CARD
	iftrue .HaveMapCard
	writetext CherrygroveTeacherText_NoMapCard
	waitbutton
	closetext
	end

.HaveMapCard:
	writetext CherrygroveTeacherText_HaveMapCard
	waitbutton
	closetext
	end

CherrygroveYoungsterScript:
	faceplayer
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .HavePokedex
	writetext CherrygroveYoungsterText_NoPokedex
	waitbutton
	closetext
	end

.HavePokedex:
	writetext CherrygroveYoungsterText_HavePokedex
	waitbutton
	closetext
	end

MysticWaterGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	iftrue .After
	writetext MysticWaterGuyTextBefore
	promptbutton
	verbosegiveitem MYSTIC_WATER
	iffalse .Exit
	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
.After:
	writetext MysticWaterGuyTextAfter
	waitbutton
.Exit:
	closetext
	end
	
BikerGuyScript:
	faceplayer
	opentext
	writetext BikerGuyText
	waitbutton
	closetext
	end

CherrygroveCitySign:
	jumptext CherrygroveCitySignText

GuideGentsHouseSign:
	jumptext GuideGentsHouseSignText

CherrygroveCityPokecenterSign:
	jumpstd PokecenterSignScript

CherrygroveCityMartSign:
	jumpstd MartSignScript

GuideGentMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	turn_head UP
	step_end

GuideGentMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement4:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head LEFT
	step_end

GuideGentMovement5:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

GuideGentMovement6:
	step UP
	step UP
	step UP
	step_end

CherrygroveCity_RivalWalksToYou:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

CherrygroveCity_RivalPushesYouOutOfTheWay:
	big_step LEFT
	big_step DOWN
	turn_head UP
	step_end

CherrygroveCity_UnusedMovementData: ; unreferenced
	step LEFT
	turn_head DOWN
	step_end

CherrygroveCity_RivalExitsStageLeft:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

GuideGentIntroText:
	text "You're a rookie"
	line "trainer, aren't"
	cont "you? I can tell!"

	para "That's OK! Every-"
	line "one is a rookie"
	cont "at some point!"

	para "If you'd like, I"
	line "can teach you a"
	cont "few things."
	done

GuideGentTourText1:
	text "OK, then!"
	line "Follow me!"
	done

GuideGentPokecenterText:
	text "This is a #MON"
	line "CENTER. They heal"

	para "your #MON in no"
	line "time at all."

	para "You'll be relying"
	line "on them a lot, so"

	para "you better learn"
	line "about them."
	done

GuideGentMartText:
	text "This is a #MON"
	line "MART."

	para "They sell BALLS"
	line "for catching wild"

	para "#MON and other"
	line "useful items."
	done

GuideGentRoute30Text:
	text "ROUTE 30 is out"
	line "this way."

	para "Trainers will be"
	line "battling their"

	para "prized #MON"
	line "there."
	done

GuideGentSeaText:
	text "This is the sea,"
	line "as you can see."

	para "Some #MON are"
	line "found only in"
	cont "water."
	done

GuideGentGiftText:
	text "Here…"

	para "It's my house!"
	line "Thanks for your"
	cont "company."

	para "Let me give you a"
	line "small gift."
	done

GotMapCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a MAP!"
	done

GuideGentPokegearText:
	text "#GEAR becomes"
	line "more useful as you"
	cont "add CARDS."

	para "I wish you luck on"
	line "your journey!"
	done

GuideGentNoText:
	text "Oh… It's something"
	line "I enjoy doing…"

	para "Fine. Come see me"
	line "when you like."
	done

CherrygroveRivalText_Seen:
	text "<……> <……> <……>"

	para "You got a #MON"
	line "at the LAB."

	para "What a waste."
	line "A wimp like you."

	para "<……> <……> <……>"

	para "Don't you get what"
	line "I'm saying?"

	para "Well, I too, have"
	line "a good #MON."

	para "I'll show you"
	line "what I mean!"
	done

SilverCherrygroveWinText:
	text "Humph. Are you"
	line "happy you won?"
	done

CherrygroveRivalText_YouLost:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

SilverCherrygroveLossText:
	text "Humph. That was a"
	line "waste of time."
	done

CherrygroveRivalText_YouWon:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

CherrygroveTeacherText_NoMapCard:
	text "Did you talk to"
	line "the old man by the"
	cont "#MON CENTER?"

	para "He'll put a MAP of"
	line "JOHTO on your"
	cont "#GEAR."
	done

CherrygroveTeacherText_HaveMapCard:
	text "When you're with"
	line "#MON, going"
	cont "anywhere is fun."
	done

CherrygroveYoungsterText_NoPokedex:
	text "MR.#MON's house"
	line "is still farther"
	cont "up ahead."
	done

CherrygroveYoungsterText_HavePokedex:
	text "I battled the"
	line "trainers on the"
	cont "road."

	para "My #MON lost."
	line "They're a mess! I"

	para "must take them to"
	line "a #MON CENTER."
	done

MysticWaterGuyTextBefore:
	text "A #MON I caught"
	line "had an item."

	para "I think it's"
	line "MYSTIC WATER."

	para "I don't need it,"
	line "so do you want it?"
	done

MysticWaterGuyTextAfter:
	text "Back to fishing"
	line "for me, then."
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "The City of Cute,"
	line "Fragrant Flowers"
	done

GuideGentsHouseSignText:
	text "GUIDE GENT'S HOUSE"
	done
	
BikerGuyText:
	text "Biking is great."
	
	para "Too bad the BIKE"
	line "SHOP moved town."
	done
	
KarpStatue:
	end
	
KarpText:
	text "TEST"
	done
	
CherrygroveTree:
	opentext
	writetext TreeText
	waitbutton
	closetext
	end
	
TreeText:
	text "TEST"
	done
	
CherrygroveCityFruitTree1:
	fruittree FRUITTREE_CHERRYGROVE_CITY_1
	
CherrygroveCityFruitTree2:
	fruittree FRUITTREE_CHERRYGROVE_CITY_2
	
CherrygroveCityFruitTree3:
	fruittree FRUITTREE_CHERRYGROVE_CITY_3
	
CherrygroveCityFruitTree4:
	fruittree FRUITTREE_CHERRYGROVE_CITY_4
	
CherrygroveCityFruitTree5:
	fruittree FRUITTREE_CHERRYGROVE_CITY_5
	
CherrygroveCityFruitTree6:
	fruittree FRUITTREE_CHERRYGROVE_CITY_6
	
CherrygroveCityFruitTree7:
	fruittree FRUITTREE_CHERRYGROVE_CITY_7
	
CherrygroveCityFruitTree8:
	fruittree FRUITTREE_CHERRYGROVE_CITY_8

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  5, CHERRYGROVE_MART, 2
	warp_event 33,  5, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 35, 13, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 25, 11, GUIDE_GENTS_HOUSE, 1
	warp_event 39,  4, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event 44,  8, ROUTE_29, 2
	warp_event 44,  9, ROUTE_29, 3
	warp_event 22,  5, ROUTE_30, 3
	warp_event 23,  5, ROUTE_30, 4
	warp_event 24, 21, CHERRYGROVE_FERRY, 1
	warp_event 29, 13, CHERRYGROVE_CAFE, 1
	warp_event 44, 32, BUSH_BASE, 1

	def_coord_events
	coord_event 42,  8, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneNorth
	coord_event 42,  9, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneSouth
	;coord_event 22,  5, SCENE_DEFAULT, ExitNorth30Scene1
	;coord_event 23,  5, SCENE_DEFAULT, ExitNorth30Scene2

	def_bg_events
	bg_event 27, 13, BGEVENT_READ, CherrygroveCitySign
	bg_event 24, 12, BGEVENT_READ, GuideGentsHouseSign
	bg_event 28,  5, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 34,  5, BGEVENT_READ, CherrygroveCityPokecenterSign

	def_object_events
	object_event 36,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGuideGent, EVENT_GUIDE_GENT_IN_HIS_HOUSE
	object_event 47,  8, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_CHERRYGROVE_CITY
	object_event 25,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 24,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event 11, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1
	object_event 33, 11, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BikerGuyScript, -1
	object_event 28, 30, SPRITE_CHERRY_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityFruitTree1, -1
	object_event 26, 33, SPRITE_CHERRY_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityFruitTree2, -1
	object_event 35, 30, SPRITE_CHERRY_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityFruitTree3, -1
	object_event 28, 36, SPRITE_CHERRY_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityFruitTree4, -1
	object_event 37, 33, SPRITE_CHERRY_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityFruitTree5, -1
	object_event 35, 36, SPRITE_CHERRY_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityFruitTree6, -1
	object_event 28, 29, SPRITE_CHERRY_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveTree, -1
	object_event 26, 32, SPRITE_CHERRY_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveTree, -1
	object_event 35, 29, SPRITE_CHERRY_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveTree, -1
	object_event 28, 35, SPRITE_CHERRY_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveTree, -1
	object_event 35, 35, SPRITE_CHERRY_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveTree, -1
	object_event 37, 32, SPRITE_CHERRY_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveTree, -1
	object_event 39, 20, SPRITE_MAGIKARP_0, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KarpStatue, -1
	object_event 39, 19, SPRITE_MAGIKARP_1, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KarpStatue, -1
	object_event 34, 20, SPRITE_MAGIKARP_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KarpStatue, -1
	object_event 34, 19, SPRITE_MAGIKARP_3, SPRITEMOVEDATA_OVERLAY, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KarpStatue, -1
	;object_event 22,  5, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	;object_event 22,  5, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
