; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_JOHTO,        .johto
	dbw TILESET_JOHTO_MODERN, .johto_modern
	dbw TILESET_KANTO,        .kanto
	dbw TILESET_PARK,         .park
	dbw TILESET_FOREST,       .forest
	dbw TILESET_KANJO,		  .kanjo
	dbw TILESET_SEVII,        .sevii
	dbw TILESET_SEVII_FOREST, .sevii_forest
	dbw TILESET_JOHTO_38,     .johto_38
	dbw TILESET_JOHTO_29,     .johto_29
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5b, $3c, 0 ; tree
	db $5f, $3d, 0 ; tree
	db $63, $3f, 0 ; tree
	db $67, $3e, 0 ; tree
	db -1 ; end

.johto_modern:
; facing block, replacement block, animation
	db $03, $02, $01 ; grass
	db $83, $85, 1 ; bush
	db -1 ; end

.kanto:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $32, $6d, 0 ; tree
	db $33, $6c, 0 ; tree
	db $34, $6f, 0 ; tree
	db $35, $4c, 0 ; tree
	db $60, $6e, 0 ; tree
	db $81, $83, 0
	db -1 ; end

.park:
; facing block, replacement block, animation
	db $13, $03, 1 ; grass
	db $03, $04, 1 ; grass
	db -1 ; end

.forest:
; facing block, replacement block, animation
	db $0f, $17, 0
	db -1 ; end
	
.kanjo:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5b, $3c, 0 ; tree
	db $5f, $3d, 0 ; tree
	db $63, $3f, 0 ; tree
	db $67, $3e, 0 ; tree
	db -1 ; end
	
.sevii
; facing block, replacement block, animation
	db $80, $5d, 0 ; tree
	db $81, $3d, 0 ; tree
	db $b7, $9c, 0 ; tree
	db $e9, $e4, 0 ; tree
	db $03, $02, 1 ; grass
	db -1 ; end
	
.sevii_forest
; facing block, replacement block, animation
	db $8a, $90, 0 ; tree
	db $8b, $04, 0 ; tree
	db $8f, $04, 0 ; tree
	db $03, $04, 1 ; grass
	db $91, $92, 1 ; grass
	db $13, $03, 1 ; grass
	db -1 ; end
	
.johto_38
; facing block, replacement block, animation
	db $f4, $3e, 0 ;tree
	db $03, $02, 1 ;grass
	db -1 ; end
	
.johto_29
	db $97, $59, 0 ;tree
	db $b3, $b1, 0 ;tree
	db $b0, $a9, 0 ;tree
	db $03, $02, 1 ;grass
	db $28, $24, 1 ;grass

; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_JOHTO, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $07, $36, 0
	db -1 ; end
	
RockSmashBlockPointers:
	dbw TILESET_JOHTO_29, .johto_29
	
.johto_29
	db $73, $53, 0
	db -1 ; end
