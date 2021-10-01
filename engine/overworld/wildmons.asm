LoadWildMonData:
	call _GrassWildmonLookup
	jr c, .copy
	ld hl, wMornEncounterRate
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .done_copy

.copy
	inc hl
	inc hl
	ld de, wMornEncounterRate
	ld bc, 3
	call CopyBytes
	ld a, [wNiteEncounterRate]
	ld [wEveEncounterRate], a
.done_copy
	call _WaterWildmonLookup
	ld a, 0
	jr nc, .no_copy
	inc hl
	inc hl
	ld a, [hl]
.no_copy
	ld [wWaterEncounterRate], a
	ret
	
GetTimeOfDayNotEve:
	ld a, [wTimeOfDay]
	cp EVE_F
	ret nz
	ld a, NITE_F ; ld a, DAY_F to make evening use day encounters
	ret

FindNest:
; Parameters:
; e: 0 = Johto, 1 = Kanto
; wNamedObjectIndex: species
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call ByteFill
	ld a, [wNamedObjectIndex]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld a, e
	and a
	jr nz, .kanto
	decoord 0, 0
	ld hl, JohtoGrassWildMons
	call .FindGrass
	ld hl, JohtoWaterWildMons
	call .FindWater
	call .RoamMon1
	call .RoamMon2
	ret

.kanto
	decoord 0, 0
	ld hl, KantoGrassWildMons
	call .FindGrass
	ld hl, KantoWaterWildMons
	call .FindWater
	call .RoamMon3
	call .RoamMon4
	call .RoamMon5
	ret

.FindGrass:
	ld a, [hl]
	cp -1
	ret z
	push bc
	push hl
	; use the math buffers as storage, since we're not doing any math
	ld a, [hli]
	ldh [hMathBuffer], a
	ld a, [hli]
	ldh [hMathBuffer + 1], a
	inc hl
	inc hl
	inc hl
	ld a, NUM_GRASSMON * 3
	call .SearchMapForMon
	jr nc, .next_grass
	ld [de], a
	inc de

.next_grass
	pop hl
	ld bc, GRASS_WILDDATA_LENGTH
	add hl, bc
	pop bc
	jr .FindGrass

.FindWater:
	ld a, [hl]
	cp -1
	ret z
	push bc
	push hl
	; use the math buffers as storage, since we're not doing any math
	ld a, [hli]
	ldh [hMathBuffer], a
	ld a, [hli]
	ldh [hMathBuffer + 1], a
	inc hl
	ld a, NUM_WATERMON
	call .SearchMapForMon
	jr nc, .next_water
	ld [de], a
	inc de

.next_water
	pop hl
	ld bc, WATER_WILDDATA_LENGTH
	add hl, bc
	pop bc
	jr .FindWater

.SearchMapForMon:
	inc hl
.ScanMapLoop:
	push af
	ld a, [hli]
	cp c
	ld a, [hli]
	jr nz, .next_mon
	cp b
	jr z, .found
.next_mon
	inc hl
	pop af
	dec a
	jr nz, .ScanMapLoop
	and a
	ret

.found
	pop af
	ldh a, [hMathBuffer]
	ld b, a
	ldh a, [hMathBuffer + 1]
	ld c, a

.AppendNest:
	push de
	call GetWorldMapLocation
	ld c, a
	hlcoord 0, 0
	ld de, SCREEN_WIDTH * SCREEN_HEIGHT
.AppendNestLoop:
	ld a, [hli]
	cp c
	jr z, .found_nest
	dec de
	ld a, e
	or d
	jr nz, .AppendNestLoop
	ld a, c
	pop de
	scf
	ret

.found_nest
	pop de
	and a
	ret

.RoamMon1:
	ld a, [wRoamMon1Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon1MapGroup]
	ld b, a
	ld a, [wRoamMon1MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret

.RoamMon2:
	ld a, [wRoamMon2Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon2MapGroup]
	ld b, a
	ld a, [wRoamMon2MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret

.RoamMon3:
	ld a, [wRoamMon3Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon3MapGroup]
	ld b, a
	ld a, [wRoamMon3MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret
	
.RoamMon4:
	ld a, [wRoamMon4Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon4MapGroup]
	ld b, a
	ld a, [wRoamMon4MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret
	
.RoamMon5:
	ld a, [wRoamMon5Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon5MapGroup]
	ld b, a
	ld a, [wRoamMon5MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret
	
TryWildEncounter::
; Try to trigger a wild encounter.
	call .EncounterRate
	jr nc, .no_battle
	call ChooseWildEncounter
	jr nz, .no_battle
	call CheckRepelEffect
	jr nc, .no_battle
	xor a
	ret

.no_battle
	xor a ; BATTLETYPE_NORMAL
	ld [wTempWildMonSpecies], a
	ld [wBattleType], a
	ld a, 1
	and a
	ret

.EncounterRate:
	call GetMapEncounterRate
	call ApplyMusicEffectOnEncounterRate
	call ApplyCleanseTagEffectOnEncounterRate
	call Random
	cp b
	ret

GetMapEncounterRate:
	ld hl, wMornEncounterRate
	call CheckOnWater
	ld a, wWaterEncounterRate - wMornEncounterRate
	jr z, .ok
	ld a, [wTimeOfDay]
.ok
	ld c, a
	ld b, 0
	add hl, bc
	ld b, [hl]
	ret

ApplyMusicEffectOnEncounterRate::
; Pokemon March and Ruins of Alph signal double encounter rate.
; Pokemon Lullaby halves encounter rate.
	ld a, [wMapMusic]
	cp MUSIC_POKEMON_MARCH
	jr z, .double
	cp MUSIC_RUINS_OF_ALPH_RADIO
	jr z, .double
	cp MUSIC_POKEMON_LULLABY
	ret nz
	srl b
	ret

.double
	sla b
	ret

ApplyCleanseTagEffectOnEncounterRate::
; Cleanse Tag halves encounter rate.
	ld hl, wPartyMon1Item
	ld de, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	ld c, a
.loop
	ld a, [hl]
	cp CLEANSE_TAG
	jr z, .cleansetag
	add hl, de
	dec c
	jr nz, .loop
	ret

.cleansetag
	srl b
	ret

ChooseWildEncounter:
	call LoadWildMonDataPointer
	jp nc, .nowildbattle
	call CheckEncounterRoamMon
	;call CheckEncounterRoamMonK
	jp c, .startwildbattle

	inc hl
	inc hl
	inc hl
	call CheckOnWater
	ld de, WaterMonProbTable
	jr z, .watermon
	inc hl
	inc hl
	call GetTimeOfDayNotEve
	ld bc, NUM_GRASSMON * 3
	call AddNTimes
	ld de, GrassMonProbTable

.watermon
; hl contains the pointer to the wild mon data, let's save that to the stack
	push hl
.randomloop
	call Random
	cp 100
	jr nc, .randomloop
	inc a ; 1 <= a <= 100
	ld b, a
	ld h, d
	ld l, e
; This next loop chooses which mon to load up.
.prob_bracket_loop
	ld a, [hli]
	cp b
	jr nc, .got_it
	inc hl
	jr .prob_bracket_loop

.got_it
	ld c, [hl]
	ld b, 0
	pop hl
	add hl, bc ; this selects our mon
	ld a, [hli]
	ld b, a
; If the Pokemon is encountered by surfing, we need to give the levels some variety.
	call CheckOnWater
	jr nz, .ok
; Check if we buff the wild mon, and by how much.
	call Random
	cp 35 percent
	jr c, .ok
	inc b
	cp 65 percent
	jr c, .ok
	inc b
	cp 85 percent
	jr c, .ok
	inc b
	cp 95 percent
	jr c, .ok
	inc b
; Store the level
.ok
	ld a, b
	ld [wCurPartyLevel], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call ValidateTempWildMonSpecies
	jr c, .nowildbattle

	ld a, l
	sub LOW(UNOWN)
	jr nz, .done
	if HIGH(UNOWN) > 1
		ld a, h
		cp HIGH(UNOWN)
	elif HIGH(UNOWN) == 1
		ld a, h
		dec a
	else
		or h
	endc
	jr nz, .done

	ld a, [wUnlockedUnowns]
	and a
	jr z, .nowildbattle

.done
	call GetPokemonIDFromIndex
	ld [wTempWildMonSpecies], a

.startwildbattle
	xor a
	ret
	
.nowildbattle
	ld a, 1
	and a
	ret

INCLUDE "data/wild/probabilities.asm"

CheckRepelEffect::
; If there is no active Repel, there's no need to be here.
	ld a, [wRepelEffect]
	and a
	jr z, .encounter
; Get the first Pokemon in your party that isn't fainted.
	ld hl, wPartyMon1HP
	ld bc, PARTYMON_STRUCT_LENGTH - 1
.loop
	ld a, [hli]
	or [hl]
	jr nz, .ok
	add hl, bc
	jr .loop

.ok
; to PartyMonLevel
rept 4
	dec hl
endr

	ld a, [wCurPartyLevel]
	cp [hl]
	jr nc, .encounter
	and a
	ret

.encounter
	scf
	ret

LoadWildMonDataPointer:
	call CheckOnWater
	jr z, _WaterWildmonLookup

_GrassWildmonLookup:
    ld hl, SwarmGrassWildMons
    ld bc, GRASS_WILDDATA_LENGTH
    call _SwarmWildmonCheck
    ret c
    ld hl, wJohtoBadges
    bit FOGBADGE, [hl]
    jp nz, .JohtoGrass4Badge
    ld hl, JohtoGrassWildMons
    ld de, KantoGrassWildMons
    call _JohtoWildmonCheck
    ld bc, GRASS_WILDDATA_LENGTH
    jp _NormalWildmonOK
 
.JohtoGrass4Badge
	ld hl, wJohtoBadges
    bit RISINGBADGE, [hl]
    jp nz, .JohtoGrass8Badge
    ld hl, JohtoGrassWildMons4Badge
    ld de, KantoGrassWildMons
    call _JohtoWildmonCheck
    ld bc, GRASS_WILDDATA_LENGTH
    jr _NormalWildmonOK
 
.JohtoGrass8Badge
    ld hl, JohtoGrassWildMons8Badge
    ld de, KantoGrassWildMons
    call _JohtoWildmonCheck
    ld bc, GRASS_WILDDATA_LENGTH
    jr _NormalWildmonOK

_WaterWildmonLookup:
	ld hl, SwarmWaterWildMons
	ld bc, WATER_WILDDATA_LENGTH
	call _SwarmWildmonCheck
	ret c
	ld hl, JohtoWaterWildMons
	ld de, KantoWaterWildMons
	call _JohtoWildmonCheck
	ld bc, WATER_WILDDATA_LENGTH
	jr _NormalWildmonOK

_JohtoWildmonCheck:
	call IsInJohto
	and a
	ret z
	ld h, d
	ld l, e
	ret

_SwarmWildmonCheck:
	call CopyCurrMapDE
	push hl
	ld hl, wSwarmFlags
	bit SWARMFLAGS_DUNSPARCE_SWARM_F, [hl]
	pop hl
	jr z, .CheckYanma
	ld a, [wDunsparceMapGroup]
	cp d
	jr nz, .CheckYanma
	ld a, [wDunsparceMapNumber]
	cp e
	jr nz, .CheckYanma
	call LookUpWildmonsForMapDE
	jr nc, _NoSwarmWildmon
	scf
	ret

.CheckYanma:
	push hl
	ld hl, wSwarmFlags
	bit SWARMFLAGS_YANMA_SWARM_F, [hl]
	pop hl
	jr z, _NoSwarmWildmon
	ld a, [wYanmaMapGroup]
	cp d
	jr nz, _NoSwarmWildmon
	ld a, [wYanmaMapNumber]
	cp e
	jr nz, _NoSwarmWildmon
	call LookUpWildmonsForMapDE
	jr nc, _NoSwarmWildmon
	scf
	ret

_NoSwarmWildmon:
	and a
	ret

_NormalWildmonOK:
	call CopyCurrMapDE
	jr LookUpWildmonsForMapDE

CopyCurrMapDE:
	ld a, [wMapGroup]
	ld d, a
	ld a, [wMapNumber]
	ld e, a
	ret
	
LookUpGrassJohtoWildmons::
	ld hl, JohtoGrassWildMons
	ld bc, GRASS_WILDDATA_LENGTH

LookUpWildmonsForMapDE:
.loop
	push hl
	ld a, [hl]
	inc a
	jr z, .nope
	ld a, d
	cp [hl]
	jr nz, .next
	inc hl
	ld a, e
	cp [hl]
	jr z, .yup

.next
	pop hl
	add hl, bc
	jr .loop

.nope
	pop hl
	and a
	ret

.yup
	pop hl
	scf
	ret

InitRoamMons:
; initialize wRoamMon structs

; species
	ld hl, RAIKOU
	call GetPokemonIDFromIndex
	ld [wRoamMon1Species], a
	ld hl, ENTEI
	call GetPokemonIDFromIndex
	ld [wRoamMon2Species], a

; level
	ld a, 40
	ld [wRoamMon1Level], a
	ld [wRoamMon2Level], a

; raikou starting map
	ld a, GROUP_ROUTE_38
	ld [wRoamMon1MapGroup], a
	ld a, MAP_ROUTE_38
	ld [wRoamMon1MapNumber], a

; entei starting map
	ld a, GROUP_ROUTE_42
	ld [wRoamMon2MapGroup], a
	ld a, MAP_ROUTE_42
	ld [wRoamMon2MapNumber], a

; hp
	xor a ; generate new stats
	ld [wRoamMon1HP], a
	ld [wRoamMon2HP], a

	ret
	
InitRoamMonsKanto:
; initialize wRoamMon structs

; species
	ld hl, ARTICUNO
	call GetPokemonIDFromIndex
	ld [wRoamMon3Species], a
	ld hl, ZAPDOS
	call GetPokemonIDFromIndex
	ld [wRoamMon4Species], a
	ld hl, MOLTRES
	call GetPokemonIDFromIndex
	ld [wRoamMon5Species], a

; level
	ld a, 40
	ld [wRoamMon3Level], a
	ld [wRoamMon4Level], a
	ld [wRoamMon5Level], a

; articuno starting map
	ld a, GROUP_ROUTE_15
	ld [wRoamMon3MapGroup], a
	ld a, MAP_ROUTE_15
	ld [wRoamMon3MapNumber], a
	
; zapdos starting map
	ld a, GROUP_ROUTE_10_NORTH
	ld [wRoamMon4MapGroup], a
	ld a, MAP_ROUTE_10_NORTH
	ld [wRoamMon4MapNumber], a
	
; moltres starting map
	ld a, GROUP_ROUTE_6
	ld [wRoamMon5MapGroup], a
	ld a, MAP_ROUTE_6
	ld [wRoamMon5MapNumber], a

; hp
	xor a ; generate new stats
	ld [wRoamMon3HP], a
	ld [wRoamMon4HP], a
	ld [wRoamMon5HP], a

	ret

CheckEncounterRoamMon:
	push hl
; Don't trigger an encounter if we're on water.
	call CheckOnWater
	jp z, .DontEncounterRoamMon
; Load the current map group and number to de
	call CopyCurrMapDE
; Randomly select a beast.
	call Random
	cp 150 ; 25/64 chance
	jr nc, .DontEncounterRoamMon
	and %00000011 ; Of that, a 3/4 chance.  Running total: 75/256, or around 29.3%.
	jr z, .DontEncounterRoamMon
	dec a ; 1/3 chance that it's Entei, 1/3 chance that it's Raikou
; Compare its current location with yours
	ld hl, wRoamMon1MapGroup
	ld c, a
	ld b, 0
	ld a, 7 ; length of the roam_struct
	call AddNTimes
	ld a, d
	cp [hl]
	jr nz, .DontEncounterRoamMon
	inc hl
	ld a, e
	cp [hl]
	jr nz, .DontEncounterRoamMon

; We've decided to take on a beast, so stage its information for battle.
	dec hl
	dec hl
	dec hl
	ld a, [hli]
	ld [wTempWildMonSpecies], a
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, BATTLETYPE_ROAMING
	ld [wBattleType], a

	pop hl
	scf
	ret

.DontEncounterRoamMon:
	pop hl
	and a
	ret

UpdateRoamMons:
	ld a, [wRoamMon1MapGroup]
	cp GROUP_N_A
	jr z, .SkipRaikou
	ld b, a
	ld a, [wRoamMon1MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon1MapGroup], a
	ld a, c
	ld [wRoamMon1MapNumber], a

.SkipRaikou:
	ld a, [wRoamMon2MapGroup]
	cp GROUP_N_A
	jr z, .Finished
	ld b, a
	ld a, [wRoamMon2MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon2MapGroup], a
	ld a, c
	ld [wRoamMon2MapNumber], a

.Finished:
	jp _BackUpMapIndices

.Update:
	ld hl, RoamMaps
.loop
; Are we at the end of the table?
	ld a, [hl]
	cp -1
	ret z
; Is this the correct entry?
	ld a, b
	cp [hl]
	jr nz, .next
	inc hl
	ld a, c
	cp [hl]
	jr z, .yes
; We don't have the correct entry yet, so let's continue.  A 0 terminates each entry.
.next
	ld a, [hli]
	and a
	jr nz, .next
	jr .loop

; We have the correct entry now, so let's choose a random map from it.
.yes
	inc hl
	ld d, h
	ld e, l
.update_loop
	ld h, d
	ld l, e
; Choose which map to warp to.
	call Random
	and %00011111 ; 1/8n chance it moves to a completely random map, where n is the number of roaming connections from the current map.
	jr z, JumpRoamMon
	and %11
	cp [hl]
	jr nc, .update_loop ; invalid index, try again
	inc hl
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [wRoamMons_LastMapGroup]
	cp [hl]
	jr nz, .done
	inc hl
	ld a, [wRoamMons_LastMapNumber]
	cp [hl]
	jr z, .update_loop
	dec hl

.done
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ret

JumpRoamMons:
	ld a, [wRoamMon1MapGroup]
	cp GROUP_N_A
	jr z, .SkipRaikou
	call JumpRoamMon
	ld a, b
	ld [wRoamMon1MapGroup], a
	ld a, c
	ld [wRoamMon1MapNumber], a

.SkipRaikou:
	ld a, [wRoamMon2MapGroup]
	cp GROUP_N_A
	jr z, .Finished
	call JumpRoamMon
	ld a, b
	ld [wRoamMon2MapGroup], a
	ld a, c
	ld [wRoamMon2MapNumber], a

.Finished:
	jp _BackUpMapIndices

JumpRoamMon:
.loop
	ld hl, RoamMaps
.innerloop1
	; 0-15 are all valid indexes into RoamMaps,
	; so this retry loop is unnecessary
	; since NUM_ROAMMON_MAPS happens to be 16
	call Random
	maskbits NUM_ROAMMON_MAPS
	cp NUM_ROAMMON_MAPS
	jr nc, .innerloop1
	inc a
	ld b, a
.innerloop2 ; Loop to get hl to the address of the chosen roam map.
	dec b
	jr z, .ok
.innerloop3 ; Loop to skip the current roam map, which is terminated by a 0.
	ld a, [hli]
	and a
	jr nz, .innerloop3
	jr .innerloop2
; Check to see if the selected map is the one the player is currently in.  If so, try again.
.ok
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .done
	inc hl
	ld a, [wMapNumber]
	cp [hl]
	jr z, .loop
	dec hl
; Return the map group and number in bc.
.done
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ret
	
UpdateRoamMonsKanto:
	ld a, [wRoamMon3MapGroup]
	cp GROUP_N_A
	jr z, .SkipArticuno
	ld b, a
	ld a, [wRoamMon3MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon3MapGroup], a
	ld a, c
	ld [wRoamMon3MapNumber], a

.SkipArticuno:
	ld a, [wRoamMon4MapGroup]
	cp GROUP_N_A
	jr z, .SkipZapdos
	ld b, a
	ld a, [wRoamMon4MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon4MapGroup], a
	ld a, c
	ld [wRoamMon4MapNumber], a

.SkipZapdos:
	ld a, [wRoamMon5MapGroup]
	cp GROUP_N_A
	jr z, .Finished
	ld b, a
	ld a, [wRoamMon5MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon5MapGroup], a
	ld a, c
	ld [wRoamMon5MapNumber], a

.Finished:
	jp _BackUpMapIndices

.Update:
	ld hl, RoamMapsK
.loop
; Are we at the end of the table?
	ld a, [hl]
	cp -1
	ret z
; Is this the correct entry?
	ld a, b
	cp [hl]
	jr nz, .next
	inc hl
	ld a, c
	cp [hl]
	jr z, .yes
; We don't have the correct entry yet, so let's continue.  A 0 terminates each entry.
.next
	ld a, [hli]
	and a
	jr nz, .next
	jr .loop

; We have the correct entry now, so let's choose a random map from it.
.yes
	inc hl
	ld d, h
	ld e, l
.update_loop
	ld h, d
	ld l, e
; Choose which map to warp to.
	call Random
	and %00011111 ; 1/8n chance it moves to a completely random map, where n is the number of roaming connections from the current map.
	jp z, JumpRoamMonKanto
	and %11
	cp [hl]
	jr nc, .update_loop ; invalid index, try again
	inc hl
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [wRoamMons_LastMapGroup]
	cp [hl]
	jr nz, .done
	inc hl
	ld a, [wRoamMons_LastMapNumber]
	cp [hl]
	jr z, .update_loop
	dec hl

.done
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ret

JumpRoamMonsKanto:
	ld a, [wRoamMon3MapGroup]
	cp GROUP_N_A
	jr z, .SkipArticuno
	call JumpRoamMonKanto
	ld a, b
	ld [wRoamMon3MapGroup], a
	ld a, c
	ld [wRoamMon3MapNumber], a

.SkipArticuno:
	ld a, [wRoamMon4MapGroup]
	cp GROUP_N_A
	jr z, .SkipZapdos
	call JumpRoamMonKanto
	ld a, b
	ld [wRoamMon4MapGroup], a
	ld a, c
	ld [wRoamMon4MapNumber], a

.SkipZapdos:
	ld a, [wRoamMon5MapGroup]
	cp GROUP_N_A
	jr z, .Finished
	call JumpRoamMonKanto
	ld a, b
	ld [wRoamMon5MapGroup], a
	ld a, c
	ld [wRoamMon5MapNumber], a

.Finished:
	jp _BackUpMapIndices

JumpRoamMonKanto:
.loop
	ld hl, RoamMapsK
.innerloop1								; This loop happens to be unnecessary.
	call Random         		    	; Choose a random number.
	maskbits NUM_ROAMMON_MAPS_K		; Mask the number to limit it between 0 and 20.
	cp NUM_ROAMMON_MAPS_K    	   	; If the number is not less than 21, try again.
	jr nc, .innerloop1      		  	; I'm sure you can guess why this check is bogus.
	inc a
	ld b, a
.innerloop2 ; Loop to get hl to the address of the chosen roam map.
	dec b
	jr z, .ok
.innerloop3 ; Loop to skip the current roam map, which is terminated by a 0.
	ld a, [hli]
	and a
	jr nz, .innerloop3
	jr .innerloop2
; Check to see if the selected map is the one the player is currently in.  If so, try again.
.ok
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .done
	inc hl
	ld a, [wMapNumber]
	cp [hl]
	jr z, .loop
	dec hl
; Return the map group and number in bc.
.done
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ret
	
_BackUpMapIndices:
	ld a, [wRoamMons_CurMapNumber]
	ld [wRoamMons_LastMapNumber], a
	ld a, [wRoamMons_CurMapGroup]
	ld [wRoamMons_LastMapGroup], a
	ld a, [wMapNumber]
	ld [wRoamMons_CurMapNumber], a
	ld a, [wMapGroup]
	ld [wRoamMons_CurMapGroup], a
	ret

INCLUDE "data/wild/roammon_maps.asm"

ValidateTempWildMonSpecies:
	ld a, h
	or l
	scf
	ret z
	ld a, h
	if LOW(NUM_POKEMON) == $FF
		cp HIGH(NUM_POKEMON) + 1
	else
		cp HIGH(NUM_POKEMON)
		ccf
		ret nz
		ld a, l
		cp LOW(NUM_POKEMON) + 1
	endc
	ccf
	ret

GetCallerRouteWildGrassMons:
	farcall GetCallerLocation
	ld d, b
	ld e, c
	ld hl, JohtoGrassWildMons
	ld bc, GRASS_WILDDATA_LENGTH
	call LookUpWildmonsForMapDE
	jr c, .found
	ld hl, KantoGrassWildMons
	call LookUpWildmonsForMapDE
	ret nc ; no carry = no grass wild mons for that route
.found
	ld bc, 5 ; skip the map ID and encounter rates
	add hl, bc
	call GetTimeOfDayNotEve
	ld bc, NUM_GRASSMON * 3
	call AddNTimes
	scf
	ret

; Finds a rare wild Pokemon in the route of the trainer calling, then checks if it's been Seen already.
; The trainer will then tell you about the Pokemon if you haven't seen it.
RandomUnseenWildMon:
	call GetCallerRouteWildGrassMons
	jr nc, .done
	push hl
.randloop1
	call Random
	and %11
	jr z, .randloop1
	ld bc, 10 ; skip three mons plus the level of the fourth
	add hl, bc
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	; We now have the pointer to one of the last (rarest) three wild Pokemon found in that area.
	; Load the species index of this rare Pokemon
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	inc hl ; Species index of the most common Pokemon on that route
	ld b, 4
.loop2
	ld a, [hli]
	cp e ; Compare this common Pokemon with the rare one stored in de.
	ld a, [hli]
	jr nz, .next
	cp d
	jr z, .done
.next
	inc hl
	dec b
	jr nz, .loop2
; This Pokemon truly is rare.
	push de
	call CheckSeenMonIndex
	pop bc
	jr nz, .done
; Since we haven't seen it, have the caller tell us about it.
	ld de, wStringBuffer1
	call CopyName1
	ld h, b
	ld l, c
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, .JustSawSomeRareMonText
	call PrintText
	xor a
	ld [wScriptVar], a
	ret

.done
	ld a, $1
	ld [wScriptVar], a
	ret

.JustSawSomeRareMonText:
	text_far _JustSawSomeRareMonText
	text_end

RandomPhoneWildMon:
	call GetCallerRouteWildGrassMons
	call Random
	and %11
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer4
	ld bc, MON_NAME_LENGTH
	jp CopyBytes

RandomPhoneMon:
; Get a random monster owned by the trainer who's calling.
	farcall GetCallerLocation
	ld hl, TrainerGroups
	ld a, d
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, BANK(TrainerGroups)
	call GetFarByte
	ld [wTrainerGroupBank], a
	inc hl
	ld a, BANK(TrainerGroups)
	call GetFarWord

.skip_trainer
	dec e
	jr z, .skipped
.skip
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	cp -1
	jr nz, .skip
	jr .skip_trainer
.skipped

.skip_name
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	cp "@"
	jr nz, .skip_name

	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	ld c, a
; TRAINERTYPE_NICKNAME has uneven length, so always use the first mon
	bit TRAINERTYPE_NICKNAME_F, c
	jr nz, .got_mon
	ld a, 2
	bit TRAINERTYPE_ITEM_F, c
	jr z, .no_item
	inc a
.no_item
	bit TRAINERTYPE_MOVES_F, c
	jr z, .no_moves
	add a, NUM_MOVES
.no_moves
	ld c, a
	ld b, 0

	ld e, b
	push hl
.count_mon
	inc e
	add hl, bc
	ld a, [wTrainerGroupBank]
	call GetFarByte
	cp -1
	jr nz, .count_mon
	pop hl

.rand
	call Random
	maskbits PARTY_LENGTH
	cp e
	jr nc, .rand

	inc a
.get_mon
	dec a
	jr z, .got_mon
	add hl, bc
	jr .get_mon
.got_mon

	inc hl ; species
	ld a, [wTrainerGroupBank]
	call GetFarByte
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer4
	ld bc, MON_NAME_LENGTH
	jp CopyBytes

INCLUDE "data/wild/johto_grass.asm"
INCLUDE "data/wild/johto_grass_4badge.asm"
INCLUDE "data/wild/johto_grass_8badge.asm"
INCLUDE "data/wild/johto_water.asm"
INCLUDE "data/wild/kanto_grass.asm"
INCLUDE "data/wild/kanto_water.asm"
INCLUDE "data/wild/swarm_grass.asm"
INCLUDE "data/wild/swarm_water.asm"
