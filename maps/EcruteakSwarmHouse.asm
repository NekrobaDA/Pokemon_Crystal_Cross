	object_const_def
	const ECRUTEAKSWARMHOUSE_GRAMPS

EcruteakSwarmHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakSwarmHouseGrampsScript:
	;jumptextfaceplayer EcruteakSwarmHouseGrampsText
	faceplayer
	opentext
	checkflag ENGINE_SWARM
	iftrue .skiprandomswarm
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .extraswarms
	random 7
	ifequal 0, .dunsparce
	ifequal 1, .yanma
	ifequal 2, .vulpix
	ifequal 3, .mareep
	ifequal 4, .stantler
	ifequal 5, .slugma
	ifequal 6, .marill
	
.extraswarms
	random 15
	ifequal 0, .dunsparce
	ifequal 1, .yanma
	ifequal 2, .vulpix
	ifequal 3, .mareep
	ifequal 4, .stantler
	ifequal 5, .slugma
	ifequal 6, .marill
	ifequal 7, .ponyta
	ifequal 8, .horsea
	ifequal 9, .gligar
	ifequal 10, .larvitar
	ifequal 11, .dratini
	ifequal 12, .sneasel
	ifequal 13, .phanpy
	ifequal 14, .butterfree

.dunsparce
	setflag ENGINE_SWARM
	swarm DARK_CAVE_VIOLET_ENTRANCE
	writetext SwarmDunsparceText
	waitbutton
	closetext
	end

.yanma
	setflag ENGINE_SWARM
	swarm ROUTE_35
	writetext SwarmYanmaText
	waitbutton
	closetext
	end

.vulpix
	setflag ENGINE_SWARM
	swarm ROUTE_37
	writetext SwarmVulpixText
	waitbutton
	closetext
	end

.mareep
	setflag ENGINE_SWARM
	swarm ROUTE_39
	writetext SwarmMareepText
	waitbutton
	closetext
	end

.stantler
	setflag ENGINE_SWARM
	swarm ILEX_FOREST
	writetext SwarmStantlerText
	waitbutton
	closetext
	end

.slugma
	setflag ENGINE_SWARM
	swarm MOUNT_MORTAR_1F_OUTSIDE
	writetext SwarmSlugmaText
	waitbutton
	closetext
	end
	
.marill
	setflag ENGINE_SWARM
	swarm ROUTE_30
	writetext SwarmMarillText
	waitbutton
	closetext
	end
	
.ponyta
	setflag ENGINE_SWARM
	swarm KINDLE_ROAD
	writetext SwarmPonytaText
	waitbutton
	closetext
	end

.horsea
	setflag ENGINE_SWARM
	swarm ROUTE_41
	writetext SwarmHorseaText
	waitbutton
	closetext
	end

.gligar
	setflag ENGINE_SWARM
	swarm ROUTE_45
	writetext SwarmGligarText
	waitbutton
	closetext
	end

.larvitar
	setflag ENGINE_SWARM
	swarm SILVER_CAVE_ROOM_1
	writetext SwarmLarvitarText
	waitbutton
	closetext
	end

.dratini
	setflag ENGINE_SWARM
	swarm DIVE_TEST
	writetext SwarmDratiniText
	waitbutton
	closetext
	end

.sneasel
	setflag ENGINE_SWARM
	swarm ROUTE_44
	writetext SwarmSneaselText
	waitbutton
	closetext
	end

.phanpy
	setflag ENGINE_SWARM
	swarm SEVAULT_CANYON
	writetext SwarmPhanpyText
	waitbutton
	closetext
	end

.butterfree
	setflag ENGINE_SWARM
	swarm BERRY_FOREST
	writetext SwarmButterfreeText
	waitbutton
	closetext
	end
	
.skiprandomswarm
	writetext EcruteakSkipSwarmText
	waitbutton
	closetext
	end


SwarmHouseRadio:
	jumpstd Radio2Script


SwarmMarillText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of MARILL"
	cont "on ROUTE 30."
	done
	
SwarmDunsparceText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of DUNSPARCE"
	cont "at DARK CAVE."
	done
	
SwarmYanmaText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of YANMA"
	cont "on ROUTE 35."
	done
	
SwarmVulpixText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of VULPIX"
	cont "on ROUTE 37."
	done
	
SwarmMareepText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of MAREEP"
	cont "on ROUTE 39."
	done
	
SwarmStantlerText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of STANTLER"
	cont "at ILEX FOREST."
	done
	
SwarmSlugmaText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of SLUGMA"
	cont "at MT MORTAR."
	done
	
SwarmPonytaText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of PONYTA"
	cont "on KINDLE ROAD."
	done
	
SwarmHorseaText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of HORSEA"
	cont "on ROUTE 41."
	done
	
SwarmGligarText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of GLIGAR"
	cont "on ROUTE 45."
	done
	
SwarmLarvitarText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of LARVITAR"
	cont "at MT SILVER."
	done
	
SwarmDratiniText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of DRATINI"
	cont "on the SEAFLOOR." ;dive_test
	done
	
SwarmSneaselText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of SNEASEL"
	cont "on ROUTE 44."
	done
	
SwarmPhanpyText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of PHANPY"
	cont "at SEVAULT CANYON."
	done
	
SwarmButterfreeText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of BUTTERFREE"
	cont "at BERRY FOREST."
	done

EcruteakSkipSwarmText:
	text "Often #MON"
	line "of unusual colors"

	para "are reported in"
	line "swarms."
	done

EcruteakSwarmHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ECRUTEAK_CITY, 16
	warp_event  3,  7, ECRUTEAK_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, SwarmHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakSwarmHouseGrampsScript, -1
