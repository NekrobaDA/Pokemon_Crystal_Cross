;RockItem indexes	
	const_def
	const ROCKITEM_SET_BEACH
	const ROCKITEM_SET_SEAFLOOR
	const ROCKITEM_SET_FOREST
	const ROCKITEM_SET_ICE
	const ROCKITEM_SET_VOLCANIC
	const ROCKITEM_SET_MOON
	const ROCKITEM_SET_CAVE
	const ROCKITEM_SET_URBAN
	const ROCKITEM_SET_PLAINS
	const ROCKITEM_SET_MOUNTAIN
	const ROCKITEM_SET_DRAGON
NUM_ROCKITEM_SETS EQU const_value

RockItems:
; entries correspond to ROCKITEM_SET_* constants
	dw RockItemSet_Beach
	dw RockItemSet_Seafloor
	dw RockItemSet_Forest
	dw RockItemSet_Ice
	dw RockItemSet_Volcanic
	dw RockItemSet_Moon
	dw RockItemSet_Cave
	dw RockItemSet_Urban
	dw RockItemSet_Plains
	dw RockItemSet_Mountain
	dw RockItemSet_Dragon

RockItemSet_Beach:
; common
	db  5, NUGGET
	db 10, KINGS_ROCK
	db 10, STAR_PIECE
	db 15, WATER_STONE
	db 15, SOFT_SAND
	db 20, PEARL
	db 25, HARD_STONE
	db -1

RockItemSet_Seafloor:
; common
	db  5, BIG_PEARL
	db 10, EVERSTONE
	db 10, WATER_STONE
	db 15, DOME_FOSSIL
	db 15, HELIX_FOSSIL
	db 20, PEARL
	db 25, SOFT_SAND
	db -1

RockItemSet_Forest:
; common
	db  5, ENERGY_ROOT
	db 10, EVERSTONE
	db 10, MOON_STONE
	db 15, LEAF_STONE
	db 15, OLD_AMBER
	db 20, STARDUST
	db 25, HARD_STONE
	db -1

RockItemSet_Ice:
; common
	db  5, EVERSTONE
	db 10, DUSK_STONE
	db 10, STAR_PIECE
	db 15, ICE_STONE
	db 15, THICK_CLUB
	db 20, STARDUST
	db 25, NEVERMELTICE
	db -1

RockItemSet_Volcanic:
; common
	db  5, NUGGET
	db 10, EVERSTONE
	db 10, STAR_PIECE
	db 15, FIRE_STONE
	db 15, METAL_POWDER
	db 20, STARDUST
	db 25, HARD_STONE
	db -1

RockItemSet_Moon:
; common
	db  5, STAR_PIECE
	db  5, STAR_PIECE
	db 15, MOON_STONE
	db 15, DOME_FOSSIL
	db 15, HELIX_FOSSIL
	db 20, HARD_STONE
	db 25, STARDUST
	db -1
	
RockItemSet_Cave:
; common
	db  5, NUGGET
	db 10, MOON_STONE
	db 10, STAR_PIECE
	db 15, DUSK_STONE
	db 15, THICK_CLUB
	db 20, STARDUST
	db 25, HARD_STONE
	db -1
	
RockItemSet_Urban:
; common
	db  5, NUGGET
	db 10, METAL_COAT
	db 10, STAR_PIECE
	db 15, SHINY_STONE
	db 15, METAL_POWDER
	db 20, STARDUST
	db 25, HARD_STONE
	db -1
	
RockItemSet_Plains:
; common
	db  5, NUGGET
	db 10, EVERSTONE
	db 10, STAR_PIECE
	db 15, SUN_STONE
	db 15, SOFT_SAND
	db 20, STARDUST
	db 25, HARD_STONE
	db -1
	
RockItemSet_Mountain:
; common
	db  5, NUGGET
	db 10, EVERSTONE
	db 10, STAR_PIECE
	db 15, THUNDERSTONE
	db 15, METAL_POWDER
	db 20, STARDUST
	db 25, HARD_STONE
	db -1
	
RockItemSet_Dragon:
; common
	db  5, STAR_PIECE
	db 10, EVERSTONE
	db 10, NUGGET
	db 15, DRAGON_SCALE
	db 15, PEARL
	db 20, STARDUST
	db 25, HARD_STONE
	db -1
