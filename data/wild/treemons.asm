TreeMons:
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	dbbw  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, SPEAROW,    10
	dbbw 15, SPEAROW,    10
	dbbw 15, SPEAROW,    10
	dbbw 10, AIPOM,      10
	dbbw  5, AIPOM,      10
	dbbw  5, AIPOM,      10
	db -1
; rare
	dbbw 50, SPEAROW,    10
	dbbw 15, HERACROSS,  10
	dbbw 15, HERACROSS,  10
	dbbw 10, AIPOM,      10
	dbbw  5, AIPOM,      10
	dbbw  5, AIPOM,      10
	db -1

TreeMonSet_Town:
; common
	dbbw 50, SPEAROW,    10
	dbbw 15, EKANS,      10
	dbbw 15, SPEAROW,    10
	dbbw 10, AIPOM,      10
	dbbw  5, AIPOM,      10
	dbbw  5, AIPOM,      10
	db -1
; rare
	dbbw 50, SPEAROW,    10
	dbbw 15, HERACROSS,  10
	dbbw 15, HERACROSS,  10
	dbbw 10, AIPOM,      10
	dbbw  5, AIPOM,      10
	dbbw  5, AIPOM,      10
	db -1

TreeMonSet_Route:
; common
	dbbw 50, HOOTHOOT,   10
	dbbw 15, METAPOD,    10
	dbbw 15, LEDYBA,     10
	dbbw 10, KAKUNA,     10
	dbbw  5, HOOTHOOT,   10
	dbbw  5, PINECO,     10
	db -1
; rare
	dbbw 50, HOOTHOOT,   10
	dbbw 15, PINECO,     10
	dbbw 15, PINECO,     10
	dbbw 10, SPINARAK,   10
	dbbw  5, PINECO,     10
	dbbw  5, PINECO,     10
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, SPEAROW,    10
	dbbw 15, METAPOD,    10
	dbbw 15, KAKUNA,     10
	dbbw 10, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	db -1
; rare
	dbbw 50, SPEAROW,    10
	dbbw 15, EKANS,      10
	dbbw 15, EKANS,      10
	dbbw 10, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, HOOTHOOT,   10
	dbbw 15, VENONAT,    10
	dbbw 15, HOOTHOOT,   10
	dbbw 10, METAPOD,    10
	dbbw  5, VENONAT,    10
	dbbw  5, VENONAT,    10
	db -1
; rare
	dbbw 50, HOOTHOOT,   10
	dbbw 15, PINECO,     10
	dbbw 15, PINECO,     10
	dbbw 10, METAPOD,    10
	dbbw  5, VENONAT,    10
	dbbw  5, VENONAT,    10
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, HOOTHOOT,   10
	dbbw 15, PINECO,     10
	dbbw 15, PINECO,     10
	dbbw 10, HOOTHOOT,   10
	dbbw  5, BUTTERFREE, 10
	dbbw  5, BEEDRILL,   10
	db -1
; rare
	dbbw 50, HOOTHOOT,   10
	dbbw 15, CATERPIE,   10
	dbbw 15, WEEDLE,     10
	dbbw 10, HOOTHOOT,   10
	dbbw  5, METAPOD,    10
	dbbw  5, KAKUNA,     10
	db -1

TreeMonSet_Rock:
	dbbw 90, KRABBY,     15
	dbbw 10, SHUCKLE,    15
	db -1
