	object_const_def
	const JOHTOSAFARIGATE_CLERK

JohtoSafariGate_MapScripts:
	def_scene_scripts

	def_callbacks
	
JohtoSafariGateClerkScript:
	opentext
	writetext JSGWelcomeText
	yesorno
	iftrue .Yes
.No
	writetext JSGSeeYouAgainText
	waitbutton
	closetext
	applymovement PLAYER, NoEntryMovement
	end	

.Yes
	;readvar VAR_PARTYCOUNT
	;ifgreater 1, JohtoSafari_LeaveTheRestBehind
	;special ContestDropOffMons
	;clearevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
	
JohtoSafari_OkayToProceed
	;setflag ENGINE_BUG_CONTEST_TIMER
	special PlayMapMusic
	writetext JohtoSafariGiveParkBallsText
	promptbutton
	writetext JohtoSafariPlayerReceivedParkBallsText
	playsound SFX_ITEM
	waitsfx
	writetext JohtoSafariExplainsRulesText
	waitbutton
	closetext
	special GiveParkBalls
	
	writetext JSGHaveFunText
	closetext
	applymovement PLAYER, EnterSafariMovement
	special SafariID
	ifequal 0, .Normal
	ifequal 1, .Grass
	ifequal 2, .Fire
	ifequal 3, .Water
	ifequal 4, .Bug
	ifequal 5, .Flying
	ifequal 6, .Poison
	ifequal 7, .Fighting
	ifequal 8, .Electric
	ifequal 9, .Rock
	ifequal 10, .Ground
	ifequal 11, .Psychic
	ifequal 12, .Ice
	ifequal 13, .Dragon 
	ifequal 14, .GhostSteel
	ifequal 15, .Dark

.Normal
	warpfacing UP, JOHTO_SAFARI_NORMAL, 9, 16
	end
	
.Grass
	warpfacing UP, JOHTO_SAFARI_GRASS, 9, 16
	end
	
.Fire
	warpfacing UP, JOHTO_SAFARI_FIRE, 9, 16
	end
	
.Water
	warpfacing UP, JOHTO_SAFARI_WATER, 9, 16
	end
	
.Bug
	warpfacing UP, JOHTO_SAFARI_BUG, 9, 16
	end
	
.Flying
	warpfacing UP, JOHTO_SAFARI_FLYING, 9, 16
	end
	
.Poison
	warpfacing UP, JOHTO_SAFARI_POISON, 9, 16
	end
	
.Fighting
	warpfacing UP, JOHTO_SAFARI_FIGHTING, 9, 16
	end
	
.Electric
	warpfacing UP, JOHTO_SAFARI_ELECTRIC, 9, 16
	end
	
.Rock
	warpfacing UP, JOHTO_SAFARI_ROCK, 9, 16
	end
	
.Ground
	warpfacing UP, JOHTO_SAFARI_GROUND, 9, 16
	end
	
.Psychic
	warpfacing UP, JOHTO_SAFARI_PSYCHIC, 9, 16
	end
	
.Ice
	warpfacing UP, JOHTO_SAFARI_ICE, 9, 16
	end
	
.Dragon
	warpfacing UP, JOHTO_SAFARI_DRAGON, 9, 16
	end
	
.GhostSteel
	warpfacing UP, JOHTO_SAFARI_GHOSTSTEEL, 9, 16
	end
	
.Dark
	warpfacing UP, JOHTO_SAFARI_DARK, 9, 16
	end
	
JohtoSafari_LeaveTheRestBehind:
	readvar VAR_PARTYCOUNT
	ifless PARTY_LENGTH, JohtoSafari_LessThanFullParty
	readvar VAR_BOXSPACE
	ifequal 0, JohtoSafari_NoRoomInBox
	
JohtoSafari_LessThanFullParty:
	special CheckFirstMonIsEgg
	ifequal TRUE, JohtoSafari_FirstMonIsEgg
	writetext JohtoSafariAskToUseFirstMonText
	yesorno
	iffalse JohtoSafari_DeclinedToLeaveMonsBehind
	special ContestDropOffMons
	iftrue JohtoSafari_FirstMonIsFainted
	setevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
	writetext JohtoSafariWellHoldYourMonText
	promptbutton
	writetext JohtoSafariPlayersMonLeftWithHelperText
	playsound SFX_GOT_SAFARI_BALLS
	waitsfx
	promptbutton
	sjump JohtoSafari_OkayToProceed

JohtoSafari_NoRoomInBox:
	writetext JohtoSafariMakeRoomText
	waitbutton
	closetext
	end
	
JohtoSafari_FirstMonIsEgg:
	writetext JohtoSafariEggAsFirstMonText
	waitbutton
	closetext
	end
	
JohtoSafari_DeclinedToLeaveMonsBehind:
	writetext JohtoSafariChooseMonAndComeBackText
	waitbutton
	closetext
	end
	
JohtoSafari_FirstMonIsFainted:
	writetext JohtoSafariFirstMonCantBattleText
	waitbutton
	closetext
	end

NoEntryMovement:
	step RIGHT
	step_end

EnterSafariMovement:	
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step_end
	
JSGWelcomeText:
	text "Welcome to the"
	line "Special Safari."
	
	para "Would you like"
	line "to enter?"
	done

JSGHaveFunText:
	text "Have fun!"
	done

JSGSeeYouAgainText:
	text "Come again!"
	done
	
JohtoSafariAskToUseFirstMonText:
	text "Uh-oh…"

	para "You have more than"
	line "one #MON."

	para "You'll have to use"
	line "@"
	text_ram wStringBuffer3
	text ", the"

	para "first #MON in"
	line "your party."

	para "Is that OK with"
	line "you?"
	done
	
JohtoSafariWellHoldYourMonText:
	text "Fine, we'll hold"
	line "your other #MON"
	cont "while you compete."
	done

JohtoSafariPlayersMonLeftWithHelperText:
	text "<PLAYER>'s #MON"
	line "were left with the"
	cont "safari warden."
	done

JohtoSafariChooseMonAndComeBackText:
	text "Please choose the"
	line "#MON to be used"

	para "in the safari,"
	line "then come see me."
	done
	
JohtoSafariFirstMonCantBattleText:
	text "Uh-oh…"
	line "The first #MON"

	para "in your party"
	line "can't battle."

	para "Please switch it"
	line "with the #MON"

	para "you want to use,"
	line "then come see me."
	done
	
JohtoSafariMakeRoomText:
	text "Uh-oh…"
	line "Both your party"

	para "and your PC BOX"
	line "are full."

	para "You have no room"
	line "to put the bug"
	cont "#MON you catch."

	para "Please make room"
	line "in your party or"

	para "your PC BOX, then"
	line "come see me."
	done

JohtoSafariEggAsFirstMonText:
	text "Uh-oh…"
	line "You have an EGG as"

	para "the first #MON"
	line "in your party."

	para "Please switch it"
	line "with the #MON"

	para "you want to use,"
	line "then come see me."
	done
	
JohtoSafariExplainsRulesText:
	text "You have 20"
	line "minutes."

	para "If you run out of"
	line "PARK BALLS, you're"
	cont "done."

	para "You can keep the"
	line "last #MON you"
	cont "catch as your own."
	done
	
JohtoSafariGiveParkBallsText:
	text "Here are the PARK"
	line "BALLS for the"
	cont "Contest."
	done

JohtoSafariPlayerReceivedParkBallsText:
	text "<PLAYER> received"
	line "20 PARK BALLS."
	done
	
JohtoSafariGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, NEW_BARK_TOWN, 3
	warp_event 10,  5, NEW_BARK_TOWN, 3
	warp_event  1,  1, JOHTO_SAFARI_GATE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JohtoSafariGateClerkScript, -1
