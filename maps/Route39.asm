	object_const_def
	const ROUTE39_SAILOR
	const ROUTE39_POKEFAN_M
	const ROUTE39_POKEFAN_F1
	const ROUTE39_MILTANK1
	const ROUTE39_MILTANK2
	const ROUTE39_MILTANK3
	const ROUTE39_MILTANK4
	const ROUTE39_PSYCHIC_NORMAN
	const ROUTE39_FRUIT_TREE
	const ROUTE39_POKEFAN_F2
	const FRIDAY_RAPIDASH
	const PLAYER_M1_39
	const PLAYER_M2_39
	const PLAYER_F1_39
	const PLAYER_F2_39

Route39_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Rapidash
	callback MAPCALLBACK_NEWMAP, .ResetExitscene
	
.DummyScene0:
	end
	
.ResetExitscene
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	endcallback

.Rapidash:
	checkflag ENGINE_FRIDAY_RAPIDASH
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .Appear
.NoAppear:
	disappear FRIDAY_RAPIDASH
	endcallback

.Appear:
	appear FRIDAY_RAPIDASH
	endcallback

FridayRapidash:
	faceplayer
	cry RAPIDASH
	loadwildmon RAPIDASH, 40
	startbattle
	disappear FRIDAY_RAPIDASH
	setflag ENGINE_FRIDAY_RAPIDASH
	reloadmapafterbattle
	end

Route39Miltank:
	opentext
	writetext Route39MiltankText
	cry MILTANK
	waitbutton
	closetext
	end
	
ExitDown391:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder1
	appear PLAYER_M1_39
	sjump .HidePlayer1
.ShowGirlPlaceholder1
	appear PLAYER_F1_39
.HidePlayer1
	applymovement PLAYER, HidePersonMovement39
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F1Movement
	applymovement PLAYER_M1_39, ExitsceneMovement39
	sjump .Scenemove1
.F1Movement
	applymovement PLAYER_F1_39, ExitsceneMovement39
.Scenemove1
	applymovement PLAYER, ShowPersonMovement39
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder1
	disappear PLAYER_M1_39
	sjump .HidPlaceholder1
.HideGirlPlaceholder1
	disappear PLAYER_F1_39
.HidPlaceholder1
	warpfacing DOWN, OLIVINE_CITY, 19, 6
	end
	
ExitDown392:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder2
	appear PLAYER_M2_39
	sjump .HidePlayer2
.ShowGirlPlaceholder2
	appear PLAYER_F2_39
.HidePlayer2
	applymovement PLAYER, HidePersonMovement39
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .F2Movement
	applymovement PLAYER_M2_39, ExitsceneMovement39
	sjump .Scenemove2
.F2Movement
	applymovement PLAYER_F2_39, ExitsceneMovement39
.Scenemove2
	applymovement PLAYER, ShowPersonMovement39
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder2
	disappear PLAYER_M2_39
	sjump .HidPlaceholder2
.HideGirlPlaceholder2
	disappear PLAYER_F2_39
.HidPlaceholder2
	warpfacing DOWN, OLIVINE_CITY, 20, 6
	end
	
ExitsceneMovement39:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
ShowPersonMovement39:
	show_object
	step_end

HidePersonMovement39:
	hide_object
	step_end

TrainerPokefanmDerek:
	trainer POKEFANM, DEREK1, EVENT_BEAT_POKEFANM_DEREK, PokefanmDerekSeenText, PokefanmDerekBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_POKEFANM_DEREK
	endifjustbattled
	opentext
	checkflag ENGINE_DEREK_HAS_NUGGET
	iftrue .HasNugget
	checkcellnum PHONE_POKEFANM_DEREK
	iftrue .NumberAccepted
	checkpoke PIKACHU
	iffalse .WantsPikachu
	checkevent EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PokefanMDerekText_NotBragging
	promptbutton
	setevent EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEFANM_DEREK
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK1
	scall .RegisteredNumber
	sjump .NumberAccepted

.HasNugget:
	scall .Gift
	verbosegiveitem NUGGET
	iffalse .NoRoom
	clearflag ENGINE_DEREK_HAS_NUGGET
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.WantsPikachu:
	writetext PokefanMDerekPikachuIsItText
	waitbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

TrainerPokefanfRuth:
	trainer POKEFANF, RUTH, EVENT_BEAT_POKEFANF_RUTH, PokefanfRuthSeenText, PokefanfRuthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanfRuthAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorEugene:
	trainer SAILOR, EUGENE, EVENT_BEAT_SAILOR_EUGENE, SailorEugeneSeenText, SailorEugeneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorEugeneAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicNorman:
	trainer PSYCHIC_T, NORMAN, EVENT_BEAT_PSYCHIC_NORMAN, PsychicNormanSeenText, PsychicNormanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicNormanAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanfJaime:
	faceplayer
	opentext
	checktime NITE
	iffalse .NotNight
	checkevent EVENT_BEAT_POKEFANF_JAIME
	iftrue .Beaten
	writetext PokefanfJaimeSeenText
	waitbutton
	closetext
	winlosstext PokefanfJaimeBeatenText, 0
	loadtrainer POKEFANF, JAIME
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_POKEFANF_JAIME
	closetext
	end

.Beaten:
	writetext PokefanfJaimeAfterBattleText
	waitbutton
	closetext
	end

.NotNight:
	writetext PokefanfJaimeHopeItGetsDarkText
	waitbutton
	closetext
	end

Route39Sign:
	jumptext Route39SignText

MoomooFarmSign:
	jumptext MoomooFarmSignText

Route39TrainerTips:
	jumptext Route39TrainerTipsText

Route39FruitTree:
	fruittree FRUITTREE_ROUTE_39

Route39HiddenNugget:
	hiddenitem NUGGET, EVENT_ROUTE_39_HIDDEN_NUGGET

Route39MiltankText:
	text "MILTANK: Mooo!"
	done

SailorEugeneSeenText:
	text "I just got back to"
	line "OLIVINE."

	para "So how about a"
	line "#MON battle?"
	done

SailorEugeneBeatenText:
	text "Awaaargh!"
	done

SailorEugeneAfterBattleText:
	text "My #MON were"
	line "caught and raised"
	cont "overseas."

	para "They're my compan-"
	line "ions on those long"
	cont "voyages."
	done

PokefanmDerekSeenText:
	text "This is a good"
	line "time to brag about"
	cont "my PIKACHU!"
	done

PokefanmDerekBeatenText:
	text "I had no time to"
	line "show off PIKACHU…"
	done

PokefanMDerekText_NotBragging:
	text "I'm not listening"
	line "to your bragging!"

	para "We # FANS have"
	line "a policy of not"

	para "listening to other"
	line "people brag!"
	done

PokefanfRuthSeenText:
	text "Such darling"
	line "#MON."

	para "Let's show our"
	line "#MON together"
	cont "at the same time."
	done

PokefanfRuthBeatenText:
	text "I don't mind"
	line "losing."
	done

PokefanfRuthAfterBattleText:
	text "Do you know about"
	line "baby #MON?"

	para "I bet they're just"
	line "adorable!"
	done

PokefanMDerekPikachuIsItText:
	text "PIKACHU is it!"
	line "Don't you agree?"
	done

PsychicNormanSeenText:
	text "Let me see what"
	line "your #MON are"
	cont "capable of."
	done

PsychicNormanBeatenText:
	text "Ooh, your #MON"
	line "have potential."
	done

PsychicNormanAfterBattleText:
	text "You know how #-"
	line "MON have different"
	cont "abilities?"

	para "People are like"
	line "that too. Every-"
	cont "one has different"
	cont "potential."
	done

PokefanfJaimeHopeItGetsDarkText:
	text "Ufufufu… I hope it"
	line "gets dark soon."
	done

PokefanfJaimeSeenText:
	text "You came at just"
	line "the right time."

	para "Let's battle."
	done

PokefanfJaimeBeatenText:
	text "Oh, how disap-"
	line "pointing…"
	done

PokefanfJaimeAfterBattleText:
	text "I met my MEOWTH at"
	line "night, right here"
	cont "on ROUTE 39."

	para "I'm not sure why,"
	line "but it seems to"

	para "like it when I"
	line "train here."

	para "It seems to become"
	line "friendlier by"

	para "training here than"
	line "anywhere else."
	done

Route39SignText:
	text "ROUTE 39"

	para "OLIVINE CITY -"
	line "ECRUTEAK CITY"
	done

MoomooFarmSignText:
	text "MOOMOO FARM"

	para "Enjoy Our Fresh"
	line "and Tasty Milk"
	done

Route39TrainerTipsText:
	text "TRAINER TIPS"

	para "Use HEADBUTT on"
	line "trees to shake"
	cont "#MON out."

	para "Different kinds of"
	line "#MON drop out"
	cont "of trees."

	para "Use HEADBUTT on"
	line "any tree you see!"
	done

Route39_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, ROUTE_39_BARN, 1
	warp_event 11,  5, ROUTE_39_FARMHOUSE, 1
	warp_event 14, 34, OLIVINE_CITY, 12
	warp_event 15, 34, OLIVINE_CITY, 13

	def_coord_events
	coord_event 14, 34, SCENE_DEFAULT, ExitDown391
	coord_event 15, 34, SCENE_DEFAULT, ExitDown392

	def_bg_events
	bg_event  6, 32, BGEVENT_READ, Route39TrainerTips
	bg_event  6,  7, BGEVENT_READ, MoomooFarmSign
	bg_event 20,  8, BGEVENT_READ, Route39Sign
	bg_event 10, 18, BGEVENT_ITEM, Route39HiddenNugget

	def_object_events
	object_event 12, 28, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSailorEugene, -1
	object_event 15, 24, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmDerek, -1
	object_event 12, 14, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanfRuth, -1
	object_event  6, 12, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event  9, 13, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event  6, 16, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event 10, 16, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event 19, 12, SPRITE_STANDING_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicNorman, -1
	object_event 17,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route39FruitTree, -1
	object_event  5, 23, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerPokefanfJaime, -1
	object_event  3,  4, SPRITE_RAPIDASH, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FridayRapidash, EVENT_FRIDAY_RAPIDASH
	object_event 14, 34, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExitDown391, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 15, 34, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExitDown392, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	object_event 14, 34, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ExitDown391, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	object_event 15, 34, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ExitDown392, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	