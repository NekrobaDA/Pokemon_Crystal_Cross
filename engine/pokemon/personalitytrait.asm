GeneratePersonalityTrait:
; repurpose hidden power's old damage formula
	ld hl, wTempMonDVs

; Take the top bit from each stat

	; Attack
	ld a, [hl]
	swap a
	and %1000

	; Defense
	ld b, a
	ld a, [hli]
	and %1000
	srl a
	or b

	; Speed
	ld b, a
	ld a, [hl]
	swap a
	and %1000
	srl a
	srl a
	or b

	; Special
	ld b, a
	ld a, [hl]
	and %1000
	srl a
	srl a
	srl a
	or b

; Multiply by 5
	ld b, a
	add a
	add a
	add b

; Add Special & 3
	ld b, a
	ld a, [hld]
	and %0011
	add b

; Divide by 2 and add 30 + 1
	srl a
;	add 30
;	inc a

	ld d, a
	ret
	
GetNature:
	ld hl, wTempMonDVs
	
; Attack
	ld a, [hl]  ;0-255
	ld c, 10
	call SimpleDivide
	ld a, b
	
	ld d, a
	
;check if defense is less than  or equal to 9, and if so, add to get final 9 natures ?
;	add ;some number to catch the remaining 9 natures
	ret


;trait strings could not be called from here without breaking things,
;so nature strings will likely be the same
