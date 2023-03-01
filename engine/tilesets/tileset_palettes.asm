LoadSpecialMapPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .not_dark
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr z, .darkness

.not_dark
	ld a, [wMapTileset]
	cp TILESET_POKECOM_CENTER
	jr z, .pokecom_2f
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_ICE_PATH_2
	jr z, .ice_path_2
	cp TILESET_UNDERWATER
	jr z, .underwater
	cp TILESET_HOUSE
	jr z, .house
	cp TILESET_RADIO_TOWER
	jr z, .radio_tower
	cp TILESET_MANSION
	jr z, .mansion_mobile
	cp TILESET_DARK_CAVE
	jr z, .mount_mortar
	cp TILESET_SECRET_BASE
	jr z, .secret_base
	jr .do_nothing

.darkness
	call LoadDarknessPalette
	scf
	ret

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret
	
.ice_path_2
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePath2Palette
	scf
	ret
	
.underwater
	call LoadUnderwaterPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.mansion_mobile
	call LoadMansionPalette
	scf
	ret
	
.mount_mortar
	call LoadMortarPalette
	scf
	ret
	
.secret_base
	call LoadSecretBasePalette
	scf
	ret

.do_nothing
	and a
	ret

LoadDarknessPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DarknessPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

DarknessPalette:
INCLUDE "gfx/tilesets/darkness.pal"

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"	
	
LoadIcePath2Palette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePath2Palette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePath2Palette:
INCLUDE "gfx/tilesets/ice_path_2.pal"

LoadMortarPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MortarPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

MortarPalette:
INCLUDE "gfx/tilesets/mount_mortar.pal"

LoadUnderwaterPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, UnderwaterPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
UnderwaterPalette:
INCLUDE "gfx/tilesets/underwater.pal"
	
LoadSecretBasePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SecretBasePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
SecretBasePalette:
INCLUDE "gfx/tilesets/secret_base.pal"

LoadHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call FarCopyWRAM
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

LoadSpecialNPCPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .not_dark
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr z, .darkness

.not_dark
	jr .do_nothing

.darkness
	call LoadNPCDarknessPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadNPCDarknessPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, NPCDarknessPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

NPCDarknessPalette:
INCLUDE "gfx/overworld/npc_sprites_darkness.pal"

LoadSpecialMapObjectPalette:
	ld a, [wMapTileset]
	cp TILESET_UNDERWATER
	jr z, .underwater
	jr .do_nothing

.underwater
	call LoadUnderwaterObjectPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadUnderwaterObjectPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, UnderwaterObjectPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

UnderwaterObjectPalette:
INCLUDE "gfx/tilesets/underwater_sprites.pal"
