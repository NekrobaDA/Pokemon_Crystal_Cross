Marts:
; entries correspond to MART_* constants
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartGoldenrod5F5
	dw MartGoldenrod5F6
	dw MartGoldenrod5F7
	dw MartGoldenrod5F8
	dw MartGoldenrod5F9
	dw MartGoldenrod5F10
	dw MartGoldenrod5F11
	dw MartGoldenrod5F12
	dw MartGoldenrod5F13
	dw MartGoldenrod5F14
	dw MartGoldenrod5F15
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	dw MartCatallia
	dw MartCatalliaDex

MartCherrygrove:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartViolet:
	db 7 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 9 ; # items
	db CHARCOAL
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 16 ; # items
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db ICE_STONE
	db MOON_STONE
	db SUN_STONE
	db SHINY_STONE
	db DUSK_STONE
	db METAL_COAT
	db KINGS_ROCK
	db DRAGON_SCALE
	db UP_GRADE
	db TRISTONE
	db RAZOR_FANG
	db RAZOR_CLAW
	db -1 ; end

MartGoldenrod4F:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end

MartGoldenrod5F1:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_RAZOR_WIND
	db -1 ; end

MartGoldenrod5F2:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_RAZOR_WIND
	db TM_HEADBUTT
	db -1 ; end

MartGoldenrod5F3:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_RAZOR_WIND
	;db TM_ROCK_SMASH
	db -1 ; end

MartGoldenrod5F4:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_RAZOR_WIND
	db TM_HEADBUTT
	;db TM_ROCK_SMASH
	db -1 ; end
	
MartGoldenrod5F5:
	db 2
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db -1

MartGoldenrod5F6:
	db 3
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db -1
	
MartGoldenrod5F7:
	db 4
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db -1
	
MartGoldenrod5F8:
	db 5
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_DYNAMICPUNCH
	db -1
	
MartGoldenrod5F9:
	db 5
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_IRON_TAIL
	db -1
	
MartGoldenrod5F10:
	db 5
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_ICY_WIND
	db -1
	
MartGoldenrod5F11:
	db 6
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_DYNAMICPUNCH
	db TM_ICY_WIND
	db -1
	
MartGoldenrod5F12:
	db 6
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_DYNAMICPUNCH
	db TM_IRON_TAIL
	db -1
	
MartGoldenrod5F13:
	db 7
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_DYNAMICPUNCH
	db TM_IRON_TAIL
	db TM_ICY_WIND
	db -1
	
MartGoldenrod5F14:
	db 6
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_IRON_TAIL
	db TM_ICY_WIND
	db -1
	
MartGoldenrod5F15:
	db 8
	db TM_MUD_SLAP
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_SHADOW_BALL
	db TM_DYNAMICPUNCH
	db TM_IRON_TAIL
	db TM_ICY_WIND
	db TM_DRAGONBREATH
	db -1

MartOlivine:
	db 9 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 9 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db SUPER_REPEL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end

MartBlackthorn:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db -1 ; end

MartViridian:
	db 9 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartPewter:
	db 7 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartCerulean:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db SURF_MAIL
	db -1 ; end

MartLavender:
	db 8 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db MAX_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartVermilion:
	db 8 ; # items
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 17 ; # items
	db TM_DYNAMICPUNCH ; bf
	db TM_HEADBUTT     ; c0
	db TM_CURSE        ; c1
	;db TM_ROLLOUT      ; c2
	db TM_ROAR         ; c4
	db TM_TOXIC        ; c5
	db TM_ZAP_CANNON   ; c6
	;db TM_ROCK_SMASH   ; c7
	;db TM_PSYCH_UP     ; c8
	db TM_HIDDEN_POWER ; c9
	db TM_SUNNY_DAY    ; ca
	;db TM_SWEET_SCENT  ; cb
	db TM_ICE_BEAM     ; cc
	db TM_BLIZZARD     ; cd
	db TM_HYPER_BEAM   ; ce
	db TM_ICY_WIND     ; cf
	db TM_PROTECT      ; d0
	db -1 ; end

MartCeladon2F2:
	db 17 ; # items
	db TM_RAIN_DANCE   ; d1
	db TM_GIGA_DRAIN   ; d2
	db TM_THUNDERBOLT  ; d3
	;db TM_FRUSTRATION  ; d4
	db TM_SOLARBEAM    ; d5
	db TM_IRON_TAIL    ; d6
	db TM_DRAGONBREATH ; d7
	db TM_THUNDER      ; d8
	db TM_EARTHQUAKE   ; d9
	db TM_RETURN       ; da
	db TM_DIG          ; db
	db TM_PSYCHIC_M    ; dd
	db TM_SHADOW_BALL  ; de
	db TM_MUD_SLAP     ; df
	db TM_DOUBLE_TEAM  ; e0
	db TM_ICE_PUNCH    ; e1
	db TM_SWAGGER      ; e2
	db -1 ; end

MartCeladon3F:
	db 16 ; # items
	db TM_SLEEP_TALK   ; e3
	db TM_SLUDGE_BOMB  ; e4
	db TM_SANDSTORM    ; e5
	db TM_FIRE_BLAST   ; e6
	db TM_RAZOR_WIND   ; e7
	db TM_FLAMETHROWER ; e8
	db TM_THUNDERPUNCH ; e9
	db TM_DREAM_EATER  ; ea
	db TM_ROCK_SLIDE   ; eb
	db TM_REST         ; ec
	db TM_ATTRACT      ; ed
	db TM_THIEF        ; ee
	db TM_STEEL_WING   ; ef
	db TM_FIRE_PUNCH   ; f0
	db TM_FURY_CUTTER  ; f1
	db TM_NIGHTMARE
	db -1 ; end

MartCeladon4F:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F1:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db SUPER_REPEL
	db MAX_REPEL
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db -1 ; end

MartCeladon5F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartFuchsia:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartSaffron:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartMtMoon:
	db 6 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end
	
MartCatallia:
	db 4 ; # items
	db RARE_CANDY
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCatalliaDex:
	db 12 ; # items
	db MUSCLE_BAND
	db WISE_GLASSES
	db WIDE_LENS
	db SWIFT_BOOTS
	db LIGHT_ARMOR
	db PSY_SHIELD
	db RARE_CANDY
	db PERSIM_BERRY
	db CHESTO_BERRY
	db CHERI_BERRY
	db ASPEAR_BERRY
	db RAWST_BERRY
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
