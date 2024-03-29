; TrainerClassAttributes struct members (see data/trainers/attributes.asm)
	const_def
	const TRNATTR_ITEM1           ; 0
	const TRNATTR_ITEM2           ; 1
	const TRNATTR_BASEMONEY       ; 2
	const TRNATTR_AI_MOVE_WEIGHTS ; 3
	const_skip ; high TRNATTR_AI_MOVE_WEIGHTS byte
	const TRNATTR_AI_ITEM_SWITCH  ; 5
	const_skip ; high TRNATTR_AI_ITEM_SWITCH byte
NUM_TRAINER_ATTRIBUTES EQU const_value

; TRNATTR_AI_MOVE_WEIGHTS bit flags (wEnemyTrainerAIFlags)
; AIScoringPointers indexes (see engine/battle/ai/move.asm)
	const_def
	shift_const AI_BASIC
	shift_const AI_SETUP
	shift_const AI_TYPES
	shift_const AI_OFFENSIVE
	shift_const AI_SMART
	shift_const AI_OPPORTUNIST
	shift_const AI_AGGRESSIVE
	shift_const AI_CAUTIOUS
	shift_const AI_STATUS
	shift_const AI_RISKY
NO_AI EQU 0

; TRNATTR_AI_ITEM_SWITCH bit flags
	const_def
	const SWITCH_OFTEN_F     ; 0
	const SWITCH_RARELY_F    ; 1
	const SWITCH_SOMETIMES_F ; 2
	const_skip               ; 3
	const ALWAYS_USE_F       ; 4
	const UNKNOWN_USE_F      ; 5
	const CONTEXT_USE_F      ; 6

SWITCH_OFTEN       EQU 1 << SWITCH_OFTEN_F
SWITCH_RARELY      EQU 1 << SWITCH_RARELY_F
SWITCH_SOMETIMES   EQU 1 << SWITCH_SOMETIMES_F
ALWAYS_USE         EQU 1 << ALWAYS_USE_F
UNKNOWN_USE        EQU 1 << UNKNOWN_USE_F
CONTEXT_USE        EQU 1 << CONTEXT_USE_F

; TrainerTypes bits (see engine/battle/read_trainer_party.asm)
	const_def
	const TRAINERTYPE_MOVES_F
	const TRAINERTYPE_ITEM_F
	const TRAINERTYPE_STATS_F
	const TRAINERTYPE_NICKNAME_F
	const TRAINERTYPE_DVS_F
	const TRAINERTYPE_STAT_EXP_F

; Trainer party types (see data/trainers/parties.asm)
TRAINERTYPE_NORMAL     EQU 0
TRAINERTYPE_MOVES      EQU 1 << TRAINERTYPE_MOVES_F
TRAINERTYPE_ITEM       EQU 1 << TRAINERTYPE_ITEM_F
TRAINERTYPE_STAT_EXP   EQU 1 << TRAINERTYPE_STAT_EXP_F
TRAINERTYPE_NICKNAME   EQU 1 << TRAINERTYPE_NICKNAME_F
TRAINERTYPE_DVS        EQU 1 << TRAINERTYPE_DVS_F
TRAINERTYPE_ITEM_MOVES EQU TRAINERTYPE_MOVES | TRAINERTYPE_ITEM ;backwards compatibility

;shortcuts
MALE_DVS     EQU $CCDC  ;spd spec, atk def
FEMALE_DVS   EQU $CC3C
SHINY_M_DVS  EQU $AADA
SHINY_F_DVS  EQU $AA3A
F_HP_FIRE    EQU $CD2C

K EQUS "* 1000"
