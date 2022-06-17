CheckForHiddenItems:
; Checks to see if there are hidden items on the screen that have not yet been found.  If it finds one, returns carry.
	call GetMapScriptsBank
	ld [wCurMapScriptBank], a
; Get the coordinate of the bottom right corner of the screen, and load it in wBottomRightYCoord/wBottomRightXCoord.
	ld a, [wXCoord]
	add SCREEN_WIDTH / 4
	ld [wBottomRightXCoord], a
	ld a, [wYCoord]
	add SCREEN_HEIGHT / 4
	ld [wBottomRightYCoord], a
; Get the pointer for the first bg_event in the map...
	ld hl, wCurMapBGEventsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; ... before even checking to see if there are any BG events on this map.
	ld a, [wCurMapBGEventCount]
	and a
	jr z, .nobgeventitems
; For i = 1:wCurMapBGEventCount...
.loop
; Store the counter in wRemainingBGEventCount, and store the bg_event pointer in the stack.
	ld [wRemainingBGEventCount], a
	push hl
; Get the Y coordinate of the BG event.
	call .GetFarByte
	ld e, a
; Is the Y coordinate of the BG event on the screen?  If not, go to the next BG event.
	ld a, [wBottomRightYCoord]
	sub e
	jr c, .next
	cp SCREEN_HEIGHT / 2
	jr nc, .next
; Is the X coordinate of the BG event on the screen?  If not, go to the next BG event.
	call .GetFarByte
	ld d, a
	ld a, [wBottomRightXCoord]
	sub d
	jr c, .next
	cp SCREEN_WIDTH / 2
	jr nc, .next
; Is this BG event a hidden item?  If not, go to the next BG event.
	call .GetFarByte
	cp BGEVENT_ITEM
	jr nz, .next
; Has this item already been found?  If not, set off the Itemfinder.
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld d, h
	ld e, l
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .itemnearby

.next
; Restore the bg_event pointer and increment it by the length of a bg_event.
	pop hl
	ld bc, BG_EVENT_SIZE
	add hl, bc
; Restore the BG event counter and decrement it.  If it hits zero, there are no hidden items in range.
	ld a, [wRemainingBGEventCount]
	dec a
	jr nz, .loop

.nobgeventitems
	xor a
	ret

.itemnearby
	pop hl
	scf
	ret

.GetFarByte:
	ld a, [wCurMapScriptBank]
	call GetFarByte
	inc hl
	ret
	
RockItemEncounter:
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	
	cp LANDMARK_KINDLE_ROAD
	jr z, .volcanic
	cp LANDMARK_MT_EMBER
	jr z, .volcanic
	cp LANDMARK_MT_MORTAR
	jr z, .volcanic
	cp LANDMARK_CINNABAR_ISLAND
	jr z, .volcanic
	
	cp LANDMARK_MT_MOON
	jr z, .moon
	
	cp LANDMARK_ICE_PATH
	jr z, .ice
	cp LANDMARK_ICEFALL_CAVE
	jr z, .ice
	
	cp LANDMARK_ROUTE_40
	jr z, .beach
	cp LANDMARK_FOUR_ISLAND
	jr z, .beach
	
	cp LANDMARK_SEVAULT_CANYON
	jr z, .mountain
	
	cp LANDMARK_DRAGONS_DEN
	jr z, .dragon
	
	ld hl, .RockItems
	jr .next
	
.volcanic
	ld hl, RockItemSet_Volcanic
	jr .next
.moon
	ld hl, RockItemSet_Moon
	jr .next
.ice
	ld hl, RockItemSet_Ice
	jr .next
.beach
	ld hl, RockItemSet_Beach
	jr .next
.mountain
	ld hl, RockItemSet_Mountain
	jr .next
.dragon
	ld hl, RockItemSet_Dragon
	
.next	
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.RockItems:
	db 3, FIRE_STONE
	db 3, WATER_STONE
	db 3, THUNDERSTONE
	db 3, LEAF_STONE
	db 3, MOON_STONE
	db 5, NUGGET
	db 6, HELIX_FOSSIL
	db 6, DOME_FOSSIL
	db 7, STAR_PIECE
	db 8, EVERSTONE
	db 8, OLD_AMBER
	db 10, THICK_CLUB
	db 10, STARDUST
	db 10, METAL_POWDER
	db 15, HARD_STONE
	db -1
	
INCLUDE "data/items/rockitems.asm"