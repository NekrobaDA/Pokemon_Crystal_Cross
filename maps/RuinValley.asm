	object_const_def
	const RUINVALLEY_ROCK1
	const RUINVALLEY_ROCK2
	const RUINVALLEY_ROCK3
	const RUINVALLEY_ROCK4
	const RUINVALLEY_ROCK5
	const RUINVALLEY_ROCK6
	const RUINVALLEY_ROCK7
	const RUINVALLEY_ROCK8
	const RUINVALLEY_ROCK9
	const RUINVALLEY_ROCK10
	const RUINVALLEY_ROCK11
	const RUINVALLEY_ROCK12
	const RUINVALLEY_ZAPDOS

RuinValley_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Zapdos

.Zapdos:
	checkevent EVENT_FOUGHT_ZAPDOSG
	iftrue .NoAppear

.Appear:
	appear RUINVALLEY_ZAPDOS
	endcallback

.NoAppear:
	disappear RUINVALLEY_ZAPDOS
	endcallback

Zapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOSG
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS_GALARIAN, 70
	startbattle
	disappear RUINVALLEY_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaaas!"
	done
	
RuinValleyRock:
	jumpstd SmashRockScript

RuinValley_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 35, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event  8, 39, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 15, 27, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 14, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 19, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 24, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 40, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 48, 38, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 30, 38, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 38, 24, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 34, 18, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 41, 29, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinValleyRock, -1
	object_event 30, 27, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Zapdos, EVENT_RUIN_VALLEY_ZAPDOS
