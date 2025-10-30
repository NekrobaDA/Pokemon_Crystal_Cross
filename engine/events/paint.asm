NUM_PAINTS EQU 7

KurtGranddaughterPaintScript:
	call LoadStandardMenuHeader
	ld c, $1
	xor a
	ld [wMenuScrollPosition], a

	ld a, c
	ld [wMenuSelection], a
	call SelectPaint
	ld a, c
	ld [wScriptVar], a
	and a
	jr z, .done
	ld [wSeerCaughtLevel], a  ;using as temp
	
	call CloseWindow
	call UpdateSprites
	
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call Textbox
	hlcoord 1, 14
	ld de, PaintAccentString
	call PlaceString	
	
	call YesNoBox
	push af
	ldh a, [hJoyLast]
	ld b, a
	bit B_BUTTON_F, b
	jr nz, .cancel
.continuepaint
	pop af
	ld a, 1
	jr c, .no
	ld a, 0
.no
	ld [wSeerCaughtGender], a ;using as temp
	call PaintBall
	jr .done
.cancel
	pop af
	call CloseText
	xor a ; FALSE
	ld [wScriptVar], a
.done
	ret
	
PaintAccentString:
	db "Paint accents too?@"
	
SelectPaint:
	ld hl, .MenuHeader
	call CopyMenuHeader
	ld a, [wMenuSelection]
	ld [wMenuCursorPosition], a
	xor a
	ldh [hBGMapMode], a
	call InitScrollingMenu
	call UpdateSprites
	call ScrollingMenu
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .nope
	ld a, [wMenuSelection]
	cp -1
	jr nz, .done

.nope
	xor a ; FALSE

.done
	ld c, a
	ret
	
.MenuHeader
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, 9, SCREEN_HEIGHT - 2
	dw .MenuData
	db 1 ; default option
	
	db 0

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS
	db 8, 0
	db SCROLLINGMENU_ITEMS_NORMAL
	dba .paintnumber
	dba .paintname
	;dba NULL
	
.paintnumber
	db NUM_PAINTS
x = 1
rept NUM_PAINTS
	db x
x = x + 1
endr
	db -1
	
.paintname                 ;this is not the correct way to do this
	ld de, rubystring      ;however it is the 'easy' way to do this
	hlcoord 2, 2
	call PlaceString
	ld de, sapphirestring
	hlcoord 2, 4
	call PlaceString
	ld de, emeraldstring
	hlcoord 2, 6
	call PlaceString
	ld de, goldstring
	hlcoord 2, 8
	call PlaceString
	ld de, silverstring
	hlcoord 2, 10
	call PlaceString
	ld de, amethyststring
	hlcoord 2, 12
	call PlaceString
	ld de, onyxstring
	hlcoord 2, 14
	call PlaceString
	
	ld de, whichcolorstring
	hlcoord 12, 14
	call PlaceString
	ret
	
CleanBallScript:
	xor a
	ld [wSeerCaughtLevel], a
	ld [wSeerCaughtGender], a
;fallthrough
	
PaintBall:
;paint color
	ld hl, wPartyMon1CaughtLevel
	push hl
;color here, 1-7, 0 = unchanged
	ld a, [wSeerCaughtLevel]
	rlca
	rlca
	rlca
	rlca
;	and CAUGHTBALL_DYE_MASK     ;these are apparently not needed here
	ld b, a
;accent here, 0 = no accent
	ld a, [wSeerCaughtGender]
	rrca
;	and CAUGHTBALL_ACCENT_MASK
	ld c, a
;merge
	ld a, c
	or b
	ld b, a
;apply to caughtball
	ld a, [wPartyMon1CaughtLevel]
	and CAUGHT_BALL_MASK
	or b
	pop hl
	ld [hl], a
	ret
;add happiness gain to customized partymon?

rubystring:
	db "RUBY@"
sapphirestring:
	db "SAPPHIRE@"
emeraldstring:
	db "EMERALD@"
goldstring:
	db "GOLD@"
silverstring:
	db "SILVER@"
amethyststring:
	db "AMETHYST@"
onyxstring:
	db "ONYX@"
	
whichcolorstring:
	db   "Which"
	next "color?@"
