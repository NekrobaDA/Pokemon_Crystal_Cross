; MailGFXPointers indexes
; LoadMailPalettes.MailPals indexes (see gfx/mail/mail.pal)
	const_def
	const PORTRAITMAIL_INDEX ; 3

ReadPartyMonMail:
	ld a, [wCurPartyMon]
	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
ReadAnyMail:
	push de
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD
	call LoadFontsExtra
	pop de
	push de
	ld a, BANK(sPartyMail)
	ld de, StandardEnglishFont

.got_font
	ld hl, vTiles1
	lb bc, BANK(StandardEnglishFont), $80
	call Get1bpp
	pop de
	call .LoadGFX
	call EnableLCD
	call WaitBGMap
	ld a, [wCurMailIndex]
	ld e, a
	farcall LoadMailPalettes
	call SetPalettes
	xor a
	ldh [hJoyPressed], a
	call .loop
	call ClearBGPalettes
	call DisableLCD
	call LoadStandardFont
	jp EnableLCD

.loop
	call GetJoypad
	ldh a, [hJoyPressed]
	and A_BUTTON | B_BUTTON
	jr z, .loop
	ret

.LoadGFX:
	ld h, d
	ld l, e
	push hl
	ld a, BANK(sPartyMail)
	call OpenSRAM
	ld de, sPartyMon1MailAuthorID - sPartyMon1Mail
	add hl, de
	ld a, [hli] ; author id
	ld [wCurMailAuthorID], a
	ld a, [hli]
	ld [wCurMailAuthorID + 1], a
	ld a, [hli] ; species
	ld [wCurPartySpecies], a
	ld b, [hl] ; type
	call CloseSRAM
	ld hl, MailGFXPointers
	ld c, 0
.loop2
	ld a, [hli]
	cp b
	jr z, .got_pointer
	cp -1
	jr z, .invalid
	inc c
	inc hl
	inc hl
	jr .loop2

.invalid
	ld hl, MailGFXPointers
	inc hl

.got_pointer
	ld a, c
	ld [wCurMailIndex], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	pop bc
	push de
	jp hl
.done
	ret

MailGFXPointers:
; entries correspond to *MAIL_INDEX constants
	dbw PORTRAITMAIL, LoadPortraitMailGFX
	db -1 ; end

LovelyEonMail_PlaceIcons:
	ld a, $3d
	hlcoord 2, 2
	call Mail_Draw2x2Graphic
	hlcoord 16, 2
	call Mail_Draw2x2Graphic
	hlcoord 9, 4
	call Mail_Draw2x2Graphic
	hlcoord 2, 11
	call Mail_Draw2x2Graphic
	hlcoord 6, 12
	call Mail_Draw2x2Graphic
	hlcoord 12, 11
	call Mail_Draw2x2Graphic
	ld a, $41
	hlcoord 5, 4
	ld [hl], a
	hlcoord 6, 2
	ld [hl], a
	hlcoord 12, 4
	ld [hl], a
	hlcoord 14, 2
	ld [hl], a
	hlcoord 3, 13
	ld [hl], a
	hlcoord 9, 11
	ld [hl], a
	hlcoord 16, 12
	ld [hl], a
	ret

LoadPortraitMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, PortraitMailBorderGFX
	ld c, 5 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, PortraitMailUnderlineGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld hl, vTiles2 tile $3d
	ld de, PortraitMailLargePokeballGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, PortraitMailSmallPokeballGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2

	call DrawMailBorder2
	hlcoord 8, 15
	ld a, $36
	ld b, $a
	call Mail_DrawRowLoop
	call LovelyEonMail_PlaceIcons
	ld a, $1
	ld [wUnownLetterOrGenderVariant], a
	hlcoord 1, 10
	call PrepMonFrontpic
	pop hl
	jp MailGFX_PlaceMessage

MailGFX_GenerateMonochromeTilesColor2:
.loop
	xor a
	ld [hli], a
	ld a, $ff
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

MailGFX_PlaceMessage:
	ld bc, MAIL_STRUCT_LENGTH
	ld de, wTempMail
	ld a, BANK(sPartyMail)
	call OpenSRAM
	call CopyBytes
	call CloseSRAM
	ld hl, wTempMailAuthor
	ld de, wMonOrItemNameBuffer
	ld bc, NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [wTempMailAuthor], a
	ld [wMonOrItemNameBuffer + NAME_LENGTH - 1], a
	ld de, wTempMailMessage
	hlcoord 2, 7
	call PlaceString
	ld de, wMonOrItemNameBuffer
	ld a, [de]
	and a
	ret z
	ld a, [wCurMailIndex]
	hlcoord 8, 14
	cp PORTRAITMAIL_INDEX
	jr z, .place_author
	hlcoord 5, 14

.place_author
	jp PlaceString

DrawMailBorder2:
	hlcoord 0, 0
	ld a, $31
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	ld [hl], $31
	inc hl
	inc a
	call Mail_DrawLeftRightBorder
	ld [hl], $31
	inc hl
	inc a
	call Mail_DrawTopBottomBorder
	hlcoord 19, 1
	ld a, $35
	call Mail_DrawLeftRightBorder
	ld [hl], $31
	ret

Mail_DrawTopBottomBorder:
	ld b, SCREEN_WIDTH - 2
	jr Mail_DrawRowLoop

Mail_DrawRowLoop:
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

Mail_DrawLeftRightBorder:
	ld b, SCREEN_HEIGHT - 2
	ld de, SCREEN_WIDTH
.loop
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	ret

Mail_Draw2x2Graphic:
	push af
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	pop af
	ret

LoadMailGFX_Color1:
.loop
	ld a, [de]
	inc de
	ld [hli], a
	xor a
	ld [hli], a
	dec c
	jr nz, .loop
	ret

LoadMailGFX_Color2:
.loop
	xor a
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .loop
	ret

INCLUDE "gfx/mail.asm"

ItemIsMail:
	ld a, d
	ld hl, MailItems
	ld de, 1
	jp IsInArray

INCLUDE "data/items/mail_items.asm"
