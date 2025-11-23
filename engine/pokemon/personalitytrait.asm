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
;	ld a, [hli]  ;0-255
;	ld c, 10
;	call SimpleDivide
;	ld a, b

	ld a, [hli]
	and %11110000
	rlca
	rlca
	rlca
	rlca
	ld d, a    ;0-15 (16 values)
	
	ld a, [hl]
	and %1111
	cp 8
	ret nc
	
	ld a, d
	add 9      ;(0-15 -> 9-24)
	ld d, a	
	ret        ;(consequence: values 9-15 (7 natures), are twice as common as the others)

;trait and nature strings could not be called from here without breaking things
;so now they clutter stats_screen.asm
