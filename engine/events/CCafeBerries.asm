NUM_BERRIES EQU 10

CherrygroveCafeBerryScript:
	
	call LoadStandardMenuHeader
	ld c, $1
	xor a
	ld [wMenuScrollPosition], a

	ld a, c
	ld [wMenuSelection], a
	call SelectBerry
	ld a, c
	ld [wScriptVar], a
	and a
	jr z, .done
	ld [wCurItem], a
	
.done
	ret
	
SelectBerry:
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
	menu_coords 1, 1, 16, 9
	dw .MenuData
	db 1 ; default option
	
	db 0

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS
	db 4, 0
	db SCROLLINGMENU_ITEMS_NORMAL
	dba .berrynumber
	dba .berryname
	;dba NULL
	
.berrynumber
	db NUM_BERRIES
x = 1
rept NUM_BERRIES
	db x
x = x + 1
endr
	db -1
	
.berryname
	ld a, [wMenuSelection]
	call GetBerry
	ld a, [hl]
	push de
	ld [wNamedObjectIndex], a
	call GetItemName
	pop hl
	call PlaceString
	ret
	
GetBerry:
	dec a
	ld hl, BerryMenuItems
	ld b, 0
	ld c, a
	add hl, bc
	ret
	
BerryMenuItems:
	db ASPEAR_BERRY
	db CHERI_BERRY
	db CHESTO_BERRY
	db LEPPA_BERRY
	db LUM_BERRY
	db ORAN_BERRY
	db PECHA_BERRY
	db PERSIM_BERRY
	db RAWST_BERRY
	db SITRUS_BERRY
	