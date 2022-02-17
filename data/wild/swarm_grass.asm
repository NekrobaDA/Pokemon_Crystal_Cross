; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent;, 4 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 2, ZUBAT
	dbw 3, DUNSPARCE
	dbw 5, DUNSPARCE
	dbw 2, TEDDIURSA
	dbw 4, TEDDIURSA
	dbw 4, GEODUDE
	; nite
	dbw 3, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 2, ZUBAT
	dbw 3, DUNSPARCE
	dbw 5, DUNSPARCE
	dbw 2, GEODUDE
	dbw 4, ZUBAT
	dbw 4, GEODUDE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent;, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 12, PIDGEY
	dbw 14, YANMA
	dbw 14, YANMA
	dbw 14, SNUBBULL
	dbw 10, DITTO
	dbw 10, JIGGLYPUFF
	; nite
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 12, HOOTHOOT
	dbw 14, YANMA
	dbw 14, YANMA
	dbw 14, RATTATA
	dbw 10, MEOWTH
	dbw 10, MURKROW
	
; Vulpix swarm
	map_id ROUTE_37
	db 10 percent, 10 percent;, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 13, VULPIX
	dbw 14, VULPIX
	dbw 13, LEDYBA
	dbw 15, VULPIX
	dbw 16, VULPIX
	dbw 12, CATERPIE
	dbw 15, PIDGEY
	dbw 18, STANTLER
	; nite
	dbw 13, VULPIX
	dbw 14, VULPIX
	dbw 15, SPINARAK
	dbw 16, VULPIX
	dbw 15, VULPIX
	dbw 15, HOOTHOOT
	dbw 15, STANTLER
	dbw 16, VENONAT
	
;ponyta swarm
	map_id KINDLE_ROAD
	db 10 percent, 10 percent
	; morn
	dbw 12, PONYTA
	dbw 35, PONYTA
	dbw 12, SPEAROW
	dbw 14, PONYTA
	dbw 34, PONYTA
	dbw 27, SLOWPOKE
	dbw 34, FEAROW
	dbw 40, KINGLER
	; nite
	dbw 12, PONYTA
	dbw 36, PONYTA
	dbw 14, PSYDUCK
	dbw 15, PONYTA
	dbw 33, PONYTA
	dbw 40, PERSIAN
	dbw 27, GRAVELER
	dbw 34, GOLDUCK

	db -1 ; end
