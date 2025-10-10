	const_def
	const SEER_INTRO
	const SEER_CANT_TELL
	const SEER_MET_AT
	const SEER_HIDDEN_POWER
	const SEER_TRADED
	const SEER_CANCEL
	const SEER_EGG
	const SEER_EVENT_ONLY

	const_def
	const SEERACTION_MET
	const SEERACTION_TRADED
	const SEERACTION_CANT_TELL_1
	const SEERACTION_CANT_TELL_2
	const SEERACTION_LEVEL_ONLY

PokeSeer:
	ld a, SEER_INTRO
	call PrintSeerText
	call JoyWaitAorB

	ld b, PARTY_LENGTH
	farcall SelectMonFromParty
	jr c, .cancel
	
	ld a, [wCurPartyMon]
	ld [wTempMon], a

	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg

	call IsAPokemon
	jr c, .no_mon

	call ReadCaughtData
	call SeerAction
	ret

.cancel
	ld a, SEER_CANCEL
	call PrintSeerText
	ret

.no_mon
	ret

.egg
	ld a, SEER_EGG
	call PrintSeerText
	ret

SeerAction:
	ld a, [wSeerAction]
	ld hl, SeerActions
	rst JumpTable
	ret

SeerActions:
	dw SeerAction0
	dw SeerAction1
	dw SeerAction2
	dw SeerAction3
	dw SeerAction4

SeerAction0:
	ld a, SEER_MET_AT
	call PrintSeerText
	ld a, SEER_HIDDEN_POWER
	call PrintSeerText
	call SeerAdvice
	ret

SeerAction1:
	call GetCaughtOT
	ld a, SEER_TRADED
	call PrintSeerText
	ld a, SEER_HIDDEN_POWER
	call PrintSeerText
	call SeerAdvice
	ret

SeerAction2:
SeerAction3:
	ld a, SEER_CANT_TELL
	call PrintSeerText
	ld a, SEER_HIDDEN_POWER
	call PrintSeerText
	call SeerAdvice
	ret

SeerAction4:
	ld a, SEER_EVENT_ONLY
	call PrintSeerText
	ld a, SEER_HIDDEN_POWER
	call PrintSeerText
	call SeerAdvice
	ret

ReadCaughtData:
	ld a, MON_CAUGHTDATA
	call GetPartyParamLocation
	ld a, [hli]
	ld [wSeerCaughtData], a
	ld a, [hld]
	ld [wSeerCaughtGender], a
	or [hl]
	jr z, .error

	ld a, SEERACTION_TRADED
	ld [wSeerAction], a

	ld a, MON_ID
	call GetPartyParamLocation
	ld a, [wPlayerID]
	cp [hl]
	jr nz, .traded

	inc hl
	ld a, [wPlayerID + 1]
	cp [hl]
	jr nz, .traded

	ld a, SEERACTION_MET
	ld [wSeerAction], a

.traded
	call GetCaughtOT
	call GetCaughtName
	call GetCaughtLocation
	call GetHiddenPower
	and a
	ret

.error
	ld a, SEERACTION_CANT_TELL_1
	ld [wSeerAction], a
	ret

GetCaughtName:
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call AddNTimes
	ld de, wSeerNickname
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	ret

UnknownCaughtData:
	ld hl, .unknown
	ld bc, NAME_LENGTH
	call CopyBytes
	ret

.unknown
	db "Unknown@"

GetCaughtLocation:
	ld a, [wSeerCaughtGender]
	and CAUGHT_LOCATION_MASK
	jr z, .Unknown
	cp LANDMARK_EVENT
	jr z, .event
	cp LANDMARK_GIFT
	jr z, .fail
	ld e, a
	farcall GetLandmarkName
	ld hl, wStringBuffer1
	ld de, wSeerCaughtLocation
	ld bc, 17
	call CopyBytes
	and a
	ret

.Unknown:
	ld de, wSeerCaughtLocation
	jp UnknownCaughtData

.event
	ret

.fail
	ld a, SEERACTION_CANT_TELL_2
	ld [wSeerAction], a
	scf
	ret

GetCaughtOT:
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOT
	ld bc, NAME_LENGTH
	call AddNTimes
	ld de, wSeerOTName
	ld bc, NAME_LENGTH
	call CopyBytes
	ret

PrintSeerText:
	ld e, a
	ld d, 0
	ld hl, SeerTexts
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	ret

SeerTexts:
	dw SeerSeeAllText
	dw SeerCantTellAThingText
	dw SeerNameLocationText
	dw SeerHiddenPowerText
	dw SeerTradeText
	dw SeerDoNothingText
	dw SeerEggText
	dw SeerNoLocationText

SeerSeeAllText:
	text_far _SeerSeeAllText
	text_end

SeerCantTellAThingText:
	text_far _SeerCantTellAThingText
	text_end

SeerNameLocationText:
	text_far _SeerNameLocationText
	text_end

SeerHiddenPowerText:
	text_far _SeerHiddenPowerText
	text_end

SeerTradeText:
	text_far _SeerTradeText
	text_end

SeerNoLocationText:
	text_far _SeerNoLocationText
	text_end

SeerEggText:
	text_far _SeerEggText
	text_end

SeerDoNothingText:
	text_far _SeerDoNothingText
	text_end

SeerAdvice:
	ld a, MON_ATK_EXP
	call GetPartyParamLocation
	ld a, [hl]

	ld hl, SeerAdviceTexts
	ld de, 3
.next
	cp [hl]
	jr c, .print
	jr z, .print
	add hl, de
	jr .next

.print
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	ret

SeerAdviceTexts:
; exp, text
	dbw 50,  SeerMoreCareText
	dbw 100, SeerMoreConfidentText
	dbw 150, SeerMuchStrengthText
	dbw 200, SeerMightyText
	dbw 255, SeerImpressedText

SeerMoreCareText:
	text_far _SeerMoreCareText
	text_end

SeerMoreConfidentText:
	text_far _SeerMoreConfidentText
	text_end

SeerMuchStrengthText:
	text_far _SeerMuchStrengthText
	text_end

SeerMightyText:
	text_far _SeerMightyText
	text_end

SeerImpressedText:
	text_far _SeerImpressedText
	text_end

GetCaughtGender:
	ld hl, MON_CAUGHTGENDER
	add hl, bc

	ld a, [hl]
	and CAUGHT_LOCATION_MASK
	jr z, .genderless
	cp LANDMARK_EVENT
	jr z, .genderless

	ld a, [hl]
	and CAUGHT_GENDER_MASK
	jr nz, .male
	ld c, CAUGHT_BY_GIRL
	ret

.male
	ld c, CAUGHT_BY_BOY
	ret

.genderless
	ld c, CAUGHT_BY_UNKNOWN
	ret
	
GetHiddenPower:
	ld a, [wTempMon]
	ld [wCurPartyMon], a
	
	ld hl, wPartyMon1DVs
	call GetPartyLocation

	; Def & 3
	ld a, [hl]
	and %0011
	ld b, a

	; + (Atk & 3) << 2
	ld a, [hl]
	and %0011 << 4
	swap a
	add a
	add a
	or b

; Skip Normal
	inc a

; Skip Bird
	cp BIRD
	jr c, .done
	inc a

; Skip unused types
	cp UNUSED_TYPES
	jr c, .done
	add UNUSED_TYPES_END - UNUSED_TYPES

.done
	ld [wNamedObjectIndex], a
	predef GetTypeName
	ret
	