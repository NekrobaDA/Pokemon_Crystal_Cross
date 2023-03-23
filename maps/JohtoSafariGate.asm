	object_const_def
	const JOHTOSAFARIGATE_CLERK

JohtoSafariGate_MapScripts:
	def_scene_scripts

	def_callbacks
	
JohtoSafariGateClerkScript:
	opentext
	writetext JSGWelcomeText
	yesorno
	iffalse .No
.Yes
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

.No
	writetext JSGSeeYouAgainText
	waitbutton
	closetext
	applymovement PLAYER, NoEntryMovement
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
