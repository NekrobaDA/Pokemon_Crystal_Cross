TIME_GROUP EQU 0 ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Goldshore_Old,        .Goldshore_Good,        .Goldshore_Super

.Shore_Old:
	dbbw  70 percent + 1, 10, KRABBY
	dbbw  85 percent + 1, 10, SHELLDER
	dbbw 100 percent,     10, KRABBY
.Shore_Good:
	dbbw  35 percent,     20, SHELLDER
	dbbw  70 percent,     20, KRABBY
	dbbw  90 percent + 1, 20, KRABBY
	dbbw 100 percent,     0, TIME_GROUP ;1
.Shore_Super:
	dbbw  40 percent,     40, KRABBY
	dbbw  70 percent,     1, TIME_GROUP ;2
	dbbw  90 percent + 1, 40, SHELLDER
	dbbw 100 percent,     40, KINGLER

.Ocean_Old:
	dbbw  70 percent + 1, 10, TENTACOOL
	dbbw  85 percent + 1, 10, TENTACOOL
	dbbw 100 percent,     10, TENTACOOL
.Ocean_Good:
	dbbw  35 percent,     20, TENTACOOL
	dbbw  70 percent,     20, TENTACOOL
	dbbw  90 percent + 1, 20, CHINCHOU
	dbbw 100 percent,     2, TIME_GROUP ;3
.Ocean_Super:
	dbbw  40 percent,     40, CHINCHOU
	dbbw  70 percent,     3, TIME_GROUP ;4
	dbbw  90 percent + 1, 40, TENTACRUEL
	dbbw 100 percent,     40, LANTURN

.Lake_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, GOLDEEN
.Lake_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, GOLDEEN
	dbbw  90 percent + 1, 20, GOLDEEN
	dbbw 100 percent,     4, TIME_GROUP ;5
.Lake_Super:
	dbbw  40 percent,     40, GOLDEEN
	dbbw  70 percent,     5, TIME_GROUP ;6
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, SEAKING

.Pond_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, POLIWAG
.Pond_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, POLIWAG
	dbbw  90 percent + 1, 20, POLIWAG
	dbbw 100 percent,     6, TIME_GROUP ;7
.Pond_Super:
	dbbw  40 percent,     40, POLIWAG
	dbbw  70 percent,     7, TIME_GROUP ;8
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, POLIWAG

.Dratini_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Dratini_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, MAGIKARP
	dbbw  90 percent + 1, 20, MAGIKARP
	dbbw 100 percent,     8, TIME_GROUP ;9
.Dratini_Super:
	dbbw  40 percent,     40, MAGIKARP
	dbbw  70 percent,     9, TIME_GROUP ;10
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, DRAGONAIR

.Gyarados_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Gyarados_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, MAGIKARP
	dbbw  90 percent + 1, 20, MAGIKARP
	dbbw 100 percent,     14, TIME_GROUP ;11
.Gyarados_Super:
	dbbw  40 percent,     40, MAGIKARP
	dbbw  70 percent,     15, TIME_GROUP ;12
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, MAGIKARP

.Dratini_2_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Dratini_2_Good:
	dbbw  35 percent,     10, MAGIKARP
	dbbw  70 percent,     10, MAGIKARP
	dbbw  90 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     16, TIME_GROUP ;13
.Dratini_2_Super:
	dbbw  40 percent,     10, MAGIKARP
	dbbw  70 percent,     17, TIME_GROUP ;14
	dbbw  90 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, DRAGONAIR

.WhirlIslands_Old:
	dbbw  70 percent + 1, 10, HORSEA
	dbbw  85 percent + 1, 10, TENTACOOL
	dbbw 100 percent,     10, KRABBY
.WhirlIslands_Good:
	dbbw  35 percent,     20, HORSEA
	dbbw  70 percent,     20, KRABBY
	dbbw  90 percent + 1, 20, TENTACOOL
	dbbw 100 percent,     18, TIME_GROUP ;15
.WhirlIslands_Super:
	dbbw  40 percent,     40, KRABBY
	dbbw  70 percent,     19, TIME_GROUP ;16
	dbbw  90 percent + 1, 40, KINGLER
	dbbw 100 percent,     40, SEADRA

.Qwilfish_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, TENTACOOL
.Qwilfish_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, TENTACOOL
	dbbw  90 percent + 1, 20, TENTACOOL
	dbbw 100 percent,     20, TIME_GROUP ;17
.Qwilfish_Super:
	dbbw  40 percent,     40, TENTACOOL
	dbbw  50 percent,     21, TIME_GROUP ;18
	dbbw  60 percent + 1, 40, TENTACRUEL
	dbbw 100 percent,     40, QWILFISH

.Remoraid_Old:
	dbbw  70 percent + 1, 10, TENTACOOL
	dbbw  85 percent + 1, 10, TENTACOOL
	dbbw 100 percent,     10, TENTACOOL
.Remoraid_Good:
	dbbw  35 percent,     20, TENTACOOL
	dbbw  70 percent,     20, CHINCHOU
	dbbw  90 percent + 1, 20, TENTACOOL
	dbbw 100 percent,     20, TIME_GROUP ;19
.Remoraid_Super:
	dbbw  40 percent,     40, TENTACOOL
	dbbw  70 percent,     21, TIME_GROUP ;20
	dbbw  90 percent + 1, 40, CHINCHOU
	dbbw 100 percent,     40, REMORAID

.Goldshore_Old:
	dbbw  70 percent + 1, 10, TENTACOOL
	dbbw  85 percent + 1, 10, TENTACOOL
	dbbw 100 percent,     10, REMORAID
.Goldshore_Good:
	dbbw  35 percent,     20, TENTACOOL
	dbbw  70 percent,     20, REMORAID
	dbbw  90 percent + 1, 20, TIME_GROUP ;21
	dbbw 100 percent,     20, TENTACRUEL
.Goldshore_Super:
	dbbw  40 percent,     40, TENTACOOL
	dbbw  70 percent,     21, TENTACRUEL
	dbbw  90 percent + 1, 40, TIME_GROUP ;22
	dbbw 100 percent,     40, OCTILLERY

TimeFishGroups:
	;     day             nite
	dbwbw 20, CORSOLA,    20, STARYU     ; 1
	dbwbw 40, CORSOLA,    40, STARYU     ; 2
	dbwbw 20, SHELLDER,   20, SHELLDER   ; 3
	dbwbw 40, SHELLDER,   40, SHELLDER   ; 4
	dbwbw 20, GOLDEEN,    20, GOLDEEN    ; 5
	dbwbw 40, GOLDEEN,    40, GOLDEEN    ; 6
	dbwbw 20, POLIWAG,    20, POLIWAG    ; 7
	dbwbw 40, POLIWAG,    40, POLIWAG    ; 8
	dbwbw 20, DRATINI,    20, DRATINI    ; 9
	dbwbw 40, DRATINI,    40, DRATINI    ; 10
	dbwbw 20, GYARADOS,   20, GYARADOS   ; 11
	dbwbw 40, GYARADOS,   40, GYARADOS   ; 12
	dbwbw 10, DRATINI,    10, DRATINI    ; 13
	dbwbw 10, DRATINI,    10, DRATINI    ; 14
	dbwbw 20, HORSEA,     20, HORSEA     ; 15
	dbwbw 40, HORSEA,     40, HORSEA     ; 16
	dbwbw 20, QWILFISH,   20, QWILFISH   ; 17
	dbwbw 40, QWILFISH,   40, QWILFISH   ; 18
	dbwbw 20, REMORAID,   20, REMORAID   ; 19
	dbwbw 40, REMORAID,   40, REMORAID   ; 20
	dbwbw 20, HORSEA,     20, STARYU     ; 21
	dbwbw 40, HORSEA,     40, STARYU     ; 22
