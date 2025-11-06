CheckPartyFullAfterContest:
	ld a, [wContestMonSpecies]
	and a
	jp z, .DidntCatchAnything
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetBaseData
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jp nc, .TryAddToBox
	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wContestMonSpecies]
	ld [hli], a
	ld [wCurSpecies], a
	ld a, -1
	ld [hl], a
	ld hl, wPartyMon1Species
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wContestMon
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOT
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wPlayerName
	call CopyBytes
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	call GiveANickname_YesNo
	jr c, .Party_SkipNickname
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	xor a
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	callfar InitNickname

.Party_SkipNickname:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wMonOrItemNameBuffer
	call CopyBytes
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Level
	call GetPartyLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	call SetCaughtData
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtLocation
	call GetPartyLocation
	ld a, [hl]
	and CAUGHT_GENDER_MASK
	ld b, LANDMARK_NATIONAL_PARK
	or b
	ld [hl], a
	xor a
	ld [wContestMonSpecies], a
	and a ; BUGCONTEST_CAUGHT_MON
	ld [wScriptVar], a
	ret

.TryAddToBox:
	ld a, BANK(sBoxCount)
	call OpenSRAM
	ld hl, sBoxCount
	ld a, [hl]
	cp MONS_PER_BOX
	call CloseSRAM
	jr nc, .BoxFull
	xor a
	ld [wCurPartyMon], a
	ld hl, wContestMon
	ld de, wBufferMon
	ld bc, BOXMON_STRUCT_LENGTH
	call CopyBytes
	ld hl, wPlayerName
	ld de, wBufferMonOT
	ld bc, NAME_LENGTH
	call CopyBytes
	callfar InsertPokemonIntoBox
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	call GiveANickname_YesNo
	ld hl, wStringBuffer1
	jr c, .Box_SkipNickname
	ld a, BOXMON
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	callfar InitNickname
	ld hl, wMonOrItemNameBuffer

.Box_SkipNickname:
	ld a, BANK(sBoxMonNicknames)
	call OpenSRAM
	ld de, sBoxMonNicknames
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	call CloseSRAM

.BoxFull:
	ld a, BANK(sBoxMon1Level)
	call OpenSRAM
	ld a, [sBoxMon1Level]
	ld [wCurPartyLevel], a
	call CloseSRAM
	call SetBoxMonCaughtData
	ld a, BANK(sBoxMon1CaughtLocation)
	call OpenSRAM
	ld hl, sBoxMon1CaughtLocation
	ld a, [hl]
	and CAUGHT_GENDER_MASK
	ld b, LANDMARK_NATIONAL_PARK
	or b
	ld [hl], a
	call CloseSRAM
	xor a
	ld [wContestMon], a
	ld a, BUGCONTEST_BOXED_MON
	ld [wScriptVar], a
	ret

.DidntCatchAnything:
	ld a, BUGCONTEST_NO_CATCH
	ld [wScriptVar], a
	ret

GiveANickname_YesNo:
	ld hl, CaughtAskNicknameText
	call PrintText
	jp YesNoBox

CaughtAskNicknameText:
	text_far _CaughtAskNicknameText
	text_end

SetCaughtData:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtLevel
	call GetPartyLocation
SetBoxmonOrEggmonCaughtData:
;new store caught ball code
	ld a, [wCurItem]
	cp POKE_BALL
	ld [hl], 0
	jr z, .nextcaughtdata	
	cp GREAT_BALL
	ld [hl], 1
	jr z, .nextcaughtdata	
	cp ULTRA_BALL
	ld [hl], 2
	jr z, .nextcaughtdata	
	cp MASTER_BALL
	ld [hl], 3
	jr z, .nextcaughtdata	
	cp FAST_BALL
	ld [hl], 4
	jr z, .nextcaughtdata	
	cp LEVEL_BALL
	ld [hl], 5
	jr z, .nextcaughtdata	
	cp LURE_BALL
	ld [hl], 6
	jr z, .nextcaughtdata
	cp HEAVY_BALL
	ld [hl], 7
	jr z, .nextcaughtdata	
	cp LOVE_BALL
	ld [hl], 8
	jr z, .nextcaughtdata	
	cp FRIEND_BALL
	ld [hl], 9
	jr z, .nextcaughtdata	
	cp MOON_BALL
	ld [hl], 10
	jr z, .nextcaughtdata	
	cp PARK_BALL
	ld [hl], 11
	jr z, .nextcaughtdata
	ld [hl], 15
	
.nextcaughtdata
	inc hl              ;move onto wPartyMon1CaughtLocation
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	cp MAP_POKECENTER_2F
	jr nz, .NotPokecenter2F
	ld a, b
	cp GROUP_POKECENTER_2F
	jr nz, .NotPokecenter2F

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a

.NotPokecenter2F:
	call GetWorldMapLocation
	ld b, a
	ld a, [hTemp]              ;egg hatching check
	cp 2
	jr nz, .proceednormally
	
	ld a, [hl]                 ;hatching eggs already have a gender stored
	ld [wSeerCaughtGender], a  ;so prevent overwriting it
	
.proceednormally	
	ld a, [wSeerCaughtGender]  ;gender of caught pokemon
;	rrca ; shift not needed here as already pre-shifted when generated
	or b
	ld [hl], a
	ret

SetBoxMonCaughtData:
	ld a, BANK(sBoxMon1CaughtLevel)
	call OpenSRAM
	ld hl, sBoxMon1CaughtLevel
	call SetBoxmonOrEggmonCaughtData
	call CloseSRAM
	ret

SetGiftBoxMonCaughtData:
	push bc
	ld a, BANK(sBoxMon1CaughtLevel)
	call OpenSRAM
	ld hl, sBoxMon1CaughtLevel
	pop bc
	call SetGiftMonCaughtData
	call CloseSRAM
	ret

SetGiftPartyMonCaughtData:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtLevel
	push bc
	call GetPartyLocation
	pop bc
SetGiftMonCaughtData:
	xor a
	ld [hli], a
	ld a, LANDMARK_GIFT
	rrc b
	or b
	ld [hl], a
	ret

SetEggMonCaughtData:
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1CaughtLevel
	call GetPartyLocation
	ld a, [wCurPartyLevel]
	push af
	ld a, CAUGHT_EGG_LEVEL
	ld [wCurPartyLevel], a
	ld a, 2
	ld [hTemp], a
	call SetBoxmonOrEggmonCaughtData
	pop af
	ld [wCurPartyLevel], a
	ret
