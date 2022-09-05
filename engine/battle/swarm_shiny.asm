GenerateSwarmShiny:
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	cp LANDMARK_DARK_CAVE
	jr z, .dunsparce
	cp LANDMARK_ROUTE_35
	jr z, .yanma
	cp LANDMARK_ROUTE_37
	jr z, .vulpix
	cp LANDMARK_KINDLE_ROAD
	jp z, .ponyta
	cp LANDMARK_ROUTE_39
	jp z, .mareep
	cp LANDMARK_ROUTE_41
	jp z, .horsea
	cp LANDMARK_ROUTE_45
	jp z, .gligar
	cp LANDMARK_ILEX_FOREST
	jp z, .stantler
	cp LANDMARK_SILVER_CAVE
	jp z, .larvitar
	cp LANDMARK_CHERRYGROVE_CITY ;dive_test
	jp z, .dratini
	cp LANDMARK_MT_MORTAR
	jp z, .slugma
	cp LANDMARK_ROUTE_30
	jp z, .marill
	cp LANDMARK_ROUTE_44
	jp z, .sneasel
	cp LANDMARK_SEVAULT_CANYON
	jp z, .phanpy
	cp LANDMARK_BERRY_FOREST
	jp z, .butterfree
	jp .skipshine
	
.dunsparce
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(DUNSPARCE)
	if HIGH(DUNSPARCE) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(DUNSPARCE) == 1
			dec h
		else
			ld a, h
			cp HIGH(DUNSPARCE)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.yanma
	ld hl, wSwarmFlags
	bit SWARMFLAGS_ALT_SWARM_F, [hl]
	jr nz, .murkrow

	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(YANMA)
	if HIGH(YANMA) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(YANMA) == 1
			dec h
		else
			ld a, h
			cp HIGH(YANMA)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.murkrow
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MURKROW)
	if HIGH(MURKROW) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(MURKROW) == 1
			dec h
		else
			ld a, h
			cp HIGH(MURKROW)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.vulpix
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(VULPIX)
	if HIGH(VULPIX) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(VULPIX) == 1
			dec h
		else
			ld a, h
			cp HIGH(VULPIX)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.ponyta
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(PONYTA)
	if HIGH(PONYTA) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(PONYTA) == 1
			dec h
		else
			ld a, h
			cp HIGH(PONYTA)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.mareep
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MAREEP)
	if HIGH(MAREEP) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(MAREEP) == 1
			dec h
		else
			ld a, h
			cp HIGH(MAREEP)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.horsea
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(HORSEA)
	if HIGH(HORSEA) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(HORSEA) == 1
			dec h
		else
			ld a, h
			cp HIGH(HORSEA)
		endc
	endc
	jp nz, .skipshine
	jp .rollshiny
	
.gligar
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(GLIGAR)
	if HIGH(GLIGAR) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(GLIGAR) == 1
			dec h
		else
			ld a, h
			cp HIGH(GLIGAR)
		endc
	endc
	jp nz, .skipshine
	jr .rollshiny
	
.stantler
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(STANTLER)
	if HIGH(STANTLER) == 0
		or h
	else
		jp nz, .skipshine
		if HIGH(STANTLER) == 1
			dec h
		else
			ld a, h
			cp HIGH(STANTLER)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
	
.larvitar
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(LARVITAR)
	if HIGH(LARVITAR) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(LARVITAR) == 1
			dec h
		else
			ld a, h
			cp HIGH(LARVITAR)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
	
.dratini
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(DRATINI)
	if HIGH(DRATINI) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(DRATINI) == 1
			dec h
		else
			ld a, h
			cp HIGH(DRATINI)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
	
.slugma
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(SLUGMA)
	if HIGH(SLUGMA) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(SLUGMA) == 1
			dec h
		else
			ld a, h
			cp HIGH(SLUGMA)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
	
.marill
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MARILL)
	if HIGH(MARILL) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(MARILL) == 1
			dec h
		else
			ld a, h
			cp HIGH(MARILL)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
	
.sneasel
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(SNEASEL)
	if HIGH(SNEASEL) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(SNEASEL) == 1
			dec h
		else
			ld a, h
			cp HIGH(SNEASEL)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
.phanpy
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(PHANPY)
	if HIGH(PHANPY) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(PHANPY) == 1
			dec h
		else
			ld a, h
			cp HIGH(PHANPY)
		endc
	endc
	jr nz, .skipshine
	jr .rollshiny
.butterfree
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(BUTTERFREE)
	if HIGH(BUTTERFREE) == 0
		or h
	else
		jr nz, .skipshine
		if HIGH(BUTTERFREE) == 1
			dec h
		else
			ld a, h
			cp HIGH(BUTTERFREE)
		endc
	endc
	jr nz, .skipshine
	
.rollshiny
	call Random
	cp 7
	jr nc, .trynext
	ld b, ATKDEFDV_SHINY ; $ea
	ld c, SPDSPCDV_SHINY ; $aa
	jr .UpdateDVs
.trynext:
	call Random
	cp 7
	jr nc, .skipshine
	ld b, ATKDEFDV_SHINYF ; $ea
	ld c, SPDSPCDV_SHINY ; $aa
	jr .UpdateDVs

.skipshine:
; Generate new random DVs
	call BattleRandom
	ld b, a
	call BattleRandom
	ld c, a

.UpdateDVs:
; Input DVs in register bc
	ld hl, wEnemyMonDVs
	ld a, b
	ld [hli], a
	ld [hl], c
	ret
	