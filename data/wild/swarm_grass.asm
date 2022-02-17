; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent;, 4 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, GEODUDE
	dbw 3, DUNSPARCE
	dbw 2, ZUBAT
	dbw 3, DUNSPARCE
	dbw 2, GEODUDE
	dbw 2, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 4, DUNSPARCE
	; nite
	dbw 3, GEODUDE
	dbw 3, DUNSPARCE
	dbw 2, ZUBAT
	dbw 3, DUNSPARCE
	dbw 2, GEODUDE
	dbw 2, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent;, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 12, PIDGEY
	dbw 14, YANMA
	dbw 14, SNUBBULL
	dbw 14, RATTATA
	dbw 10, DITTO
	dbw 10, JIGGLYPUFF
	; nite
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 12, HOOTHOOT
	dbw 14, YANMA
	dbw 14, MEOWTH
	dbw 14, RATTATA
	dbw 10, DITTO
	dbw 10, MURKROW
	
; Vulpix swarm
	map_id ROUTE_37
	db 10 percent, 10 percent;, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 13, VULPIX
	dbw 14, VULPIX
	dbw 13, LEDYBA
	dbw 15, VULPIX
	dbw 16, STANTLER
	dbw 12, CATERPIE
	dbw 15, PIDGEY
	dbw 18, PIDGEOTTO
	; nite
	dbw 13, VULPIX
	dbw 14, VULPIX
	dbw 15, SPINARAK
	dbw 16, VULPIX
	dbw 15, STANTLER
	dbw 15, HOOTHOOT
	dbw 15, VENONAT
	dbw 16, VENONAT

	db -1 ; end
