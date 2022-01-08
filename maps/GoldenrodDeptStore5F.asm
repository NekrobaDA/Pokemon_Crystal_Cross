	object_const_def
	const GOLDENRODDEPTSTORE5F_CLERK
	const GOLDENRODDEPTSTORE5F_CLERK2
	const GOLDENRODDEPTSTORE5F_LASS
	const GOLDENRODDEPTSTORE5F_MIKE
	const GOLDENRODDEPTSTORE5F_POKEFAN_M
	const GOLDENRODDEPTSTORE5F_CARRIE

GoldenrodDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks
	
GoldenrodDeptStore5FClerk2Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .dragonbreath
	checkevent EVENT_BEAT_WHITNEY
	iftrue .checkmorty
	sjump .default
	
.checkmorty
	checkevent EVENT_BEAT_MORTY
	iftrue .checkchuck
	sjump .attract
	
.checkchuck
	checkevent EVENT_BEAT_CHUCK
	iftrue .check1
.jasmine
	checkevent EVENT_BEAT_JASMINE
	iftrue .check2
.pryce1
	checkevent EVENT_BEAT_PRYCE
	iftrue .icywind
	sjump .shadowball

.check1
	checkevent EVENT_BEAT_JASMINE
	iftrue .beatjasmine
	checkevent EVENT_BEAT_PRYCE
	iftrue .pryceonly
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_8 ;dynamicpunch only
	closetext
	end
	
.pryceonly
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_11 ; dynamicpunch icy wind
	closetext
	end

.beatjasmine
	checkevent EVENT_BEAT_PRYCE
	iftrue .beatjasminepryce
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_12 ;dynamicpunch iron tail
	closetext
	end
	
.beatjasminepryce
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_13 ; dynamicpunch iron tail icy wind
	closetext
	end

.check2
	checkevent EVENT_BEAT_PRYCE
	iftrue .pryce
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_9 ;iron tail only
	closetext
	end
	
.pryce
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_14 ; iron tail icy wind
	closetext
	end
	
.icywind
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_10 ;only icy wind
	closetext
	end
	
.attract
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_6
	closetext
	end
	
.shadowball
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_7
	closetext
	end
	
.dragonbreath
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_15
	closetext
	end
	
.default
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_5
	closetext
	end

GoldenrodDeptStore5FClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM02_HEADBUTT
	iftrue .headbutt
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iftrue .onlyrocksmash
	sjump .neither

.headbutt
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iftrue .both
	sjump .onlyheadbutt

.neither
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_1
	closetext
	end

.onlyheadbutt
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_2
	closetext
	end

.onlyrocksmash
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_3
	closetext
	end

.both
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F_4
	closetext
	end

Carrie:
	faceplayer
	opentext
	special GameboyCheck
	ifnotequal GBCHECK_CGB, .NotGBC ; This is a dummy check from Gold/Silver
	writetext GoldenrodDeptStore5FCarrieMysteryGiftExplanationText
	waitbutton
	closetext
	special UnlockMysteryGift
	end

.NotGBC:
	writetext GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText
	waitbutton
	closetext
	end

GoldenrodDeptStore5FLassScript:
	jumptextfaceplayer GoldenrodDeptStore5FLassText

Mike:
	faceplayer
	opentext
	trade NPC_TRADE_MIKE
	waitbutton
	closetext
	end

GoldenrodDeptStore5FPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStore5FPokefanMText

GoldenrodDeptStore5FDirectory:
	jumptext GoldenrodDeptStore5FDirectoryText

GoldenrodDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore5FCarrieMysteryGiftExplanationText:
	text "MYSTERY GIFT."

	para "With just a"
	line "little beep, you"
	cont "get a gift."
	done

GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText:
	text "The MYSTERY GIFT"
	line "option requires a"
	cont "Game Boy Color."
	done

GoldenrodDeptStore5FLassText:
	text "On Sundays, a lady"
	line "comes to check out"
	cont "#MON."

	para "She even gives"
	line "away TMs!"
	done

GoldenrodDeptStore5FPokefanMText:
	text "You can't rename a"
	line "#MON you get in"
	cont "a trade."

	para "The name is a re-"
	line "flection of the"

	para "original trainer's"
	line "feelings for it."
	done

GoldenrodDeptStore5FDirectoryText:
	text "Customize Your"
	line "#MON"

	para "5F TM CORNER"
	done

GoldenrodDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_4F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_6F, 1
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore5FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore5FElevatorButton

	def_object_events
	object_event  8,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FClerkScript, -1
	object_event  7,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FClerk2Script, -1
	object_event  3,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FLassScript, -1
	object_event  6,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Mike, -1
	object_event 13,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FPokefanMScript, -1
	object_event  9,  1, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Carrie, -1
