; Maps that roaming monsters can be on, and possible maps they can jump to.
; Notably missing are Route 40 and Route 41, which are water routes.

roam_map: MACRO
	map_id \1
	db _NARG - 1
rept _NARG - 1
	map_id \2
	shift
endr
	db 0
ENDM

RoamMaps:
; there are NUM_ROAMMON_MAPS entries
	; start map, ...other maps
	roam_map ROUTE_29, ROUTE_30, ROUTE_46
	roam_map ROUTE_30, ROUTE_29, ROUTE_31
	roam_map ROUTE_31, ROUTE_30, ROUTE_32, ROUTE_36
	roam_map ROUTE_32, ROUTE_36, ROUTE_31, ROUTE_33
	roam_map ROUTE_33, ROUTE_32
	roam_map ROUTE_35, ROUTE_36
	roam_map ROUTE_36, ROUTE_35, ROUTE_31, ROUTE_32, ROUTE_37
	roam_map ROUTE_37, ROUTE_36, ROUTE_38, ROUTE_42
	roam_map ROUTE_38, ROUTE_37, ROUTE_39, ROUTE_42
	roam_map ROUTE_39, ROUTE_38
	roam_map ROUTE_42, ROUTE_43, ROUTE_44, ROUTE_37, ROUTE_38
	roam_map ROUTE_43, ROUTE_42, ROUTE_44
	roam_map ROUTE_44, ROUTE_42, ROUTE_43, ROUTE_45
	roam_map ROUTE_45, ROUTE_44, ROUTE_46
	roam_map ROUTE_46, ROUTE_45, ROUTE_29
	db -1 ; end
	
RoamMapsK:
; there are NUM_ROAMMON_MAPS entries
	; start map, ...other maps
	roam_map ROUTE_4, ROUTE_24, ROUTE_9, ROUTE_5
	roam_map ROUTE_5, ROUTE_6, ROUTE_7, ROUTE_8, ROUTE_9, ROUTE_4, ROUTE_24
	roam_map ROUTE_6, ROUTE_7, ROUTE_8, ROUTE_11
	roam_map ROUTE_7, ROUTE_5, ROUTE_6, ROUTE_8
	roam_map ROUTE_8, ROUTE_5, ROUTE_6, ROUTE_7, ROUTE_16
	roam_map ROUTE_9, ROUTE_4, ROUTE_5, ROUTE_10_NORTH, ROUTE_24
	roam_map ROUTE_10_NORTH, ROUTE_9
	roam_map ROUTE_11, ROUTE_6, ROUTE_13
	roam_map ROUTE_13, ROUTE_11, ROUTE_14
	roam_map ROUTE_14, ROUTE_13, ROUTE_15
	roam_map ROUTE_15, ROUTE_13, ROUTE_18
	roam_map ROUTE_16, ROUTE_8, ROUTE_17
	roam_map ROUTE_17, ROUTE_16, ROUTE_18
	roam_map ROUTE_18, ROUTE_15, ROUTE_17
	roam_map ROUTE_24, ROUTE_4, ROUTE_5, ROUTE_9, ROUTE_25
	roam_map ROUTE_25, ROUTE_24
	db -1 ; end
	