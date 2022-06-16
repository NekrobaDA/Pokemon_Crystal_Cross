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
	;dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	dbbw  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, METAPOD
	dbbw 15, 10, KAKUNA
	dbbw 10, 10, PINECO
	dbbw  5, 10, PINECO
	dbbw  5, 10, SPEAROW
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, PINECO
	dbbw  5, 10, KAKUNA
	dbbw  5, 10, METAPOD
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, PIDGEY
	dbbw 15, 10, METAPOD
	dbbw 15, 10, KAKUNA
	dbbw 10, 10, PINECO
	dbbw  5, 10, PINECO
	dbbw  5, 10, METAPOD
	db -1
; rare
	dbbw 50, 10, PIDGEY
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, PINECO
	dbbw  5, 10, KAKUNA
	dbbw  5, 10, METAPOD
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, METAPOD
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, KAKUNA
	dbbw  5, 10, PINECO
	dbbw  5, 10, PINECO
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, BEEDRILL
	dbbw 10, 10, KAKUNA
	dbbw  5, 10, BEEDRILL
	dbbw  5, 10, PINECO
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, METAPOD
	dbbw 15, 10, KAKUNA
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, YANMA
	dbbw 15, 10, PIDGEY
	dbbw 10, 10, METAPOD
	dbbw  5, 10, PINECO
	dbbw  5, 10, PINECO
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, METAPOD
	dbbw  5, 10, VENONAT
	dbbw  5, 10, VENONAT
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, KAKUNA
	dbbw 10, 10, METAPOD
	dbbw  5, 10, BUTTERFREE
	dbbw  5, 10, BEEDRILL
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, KAKUNA
	dbbw 15, 10, BEEDRILL
	dbbw 10, 10, PINECO
	dbbw  5, 10, METAPOD
	dbbw  5, 10, KAKUNA
	db -1

TreeMonSet_Rock:
	dbbw 90, 15, KRABBY
	dbbw 10, 15, SHUCKLE
	db -1
