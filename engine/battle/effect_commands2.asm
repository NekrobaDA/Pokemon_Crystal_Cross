;Effect Commands 2 because 1 is out of space
	
BattleCommand_EffectSporeStatusChance2:
	farcall BattleCommand_EffectChance
	; 1/2 chance of each status
	call BattleRandom
	swap a
	and %01
	jr z, .paralyze
	farcall BattleCommand_PoisonTarget
	jr .end
.paralyze
	farcall BattleCommand_ParalyzeTarget
.end
	ret
	
BattleCommand_AccuracyDownPoisonChance2:
	ld a, [wAttackMissed]
	and a
	jr nz, .end

	; 1/2 chance of poison
	call BattleRandom
	swap a
	and %01
	jr z, .end
	farcall BattleCommand_PoisonTarget
.end
	ret
	
BattleCommand_ElementFangChance2:
	farcall BattleCommand_EffectChance
	; 1/2 chance of each status
	call BattleRandom
	swap a
	and %01
	jr z, .checkfang
	farcall BattleCommand_FlinchTarget
	jr .end
.checkfang
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_THUNDER_FANG
	jr z, .paralyze
	cp EFFECT_FIRE_FANG
	jr z, .burn
	;EFFECT_ICE_FANG
	farcall BattleCommand_FreezeTarget
	jr .end
.paralyze
	farcall BattleCommand_ParalyzeTarget
	jr .end
.burn
	farcall BattleCommand_BurnTarget
.end
	ret
	
BattleCommand_AuroraVeil2:	
	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jr nz, .failed
; screen
	ld hl, wPlayerScreens
	ld bc, wPlayerLightScreenCount
	ldh a, [hBattleTurn]
	and a
	jr z, .got_screens_pointer
	ld hl, wEnemyScreens
	ld bc, wEnemyLightScreenCount	
.got_screens_pointer
	bit SCREENS_LIGHT_SCREEN, [hl]
	jr nz, .failed
	bit SCREENS_REFLECT, [hl]
	jr nz, .failed
; set screens
	set SCREENS_LIGHT_SCREEN, [hl]
	set SCREENS_REFLECT, [hl]
	ld a, 5
	ld [bc], a
	inc bc
	ld [bc], a
.good
	farcall AnimateCurrentMove
	ld hl, AuroraVeilEffectText
	call StdBattleTextbox
	ret
.failed
	farcall AnimateFailedMove
	ld hl, ButItFailedText
	call StdBattleTextbox
	ret
	
BattleCommand_WeatherBall2:
	ld a, [wAttackMissed]
	and a
	ret nz
	
	call SetPowerTo80CheckWeather
	cp WEATHER_NONE              ;and a is probably cheaper, but this is more readable
	jr z, .noweather

	cp WEATHER_HAIL
	ld b, ICE
	jr z, .finish
	
	cp WEATHER_SUN
	ld b, FIRE
	jr z, .finish
	
	cp WEATHER_RAIN
	ld b, WATER
	jr z, .finish
	
	cp WEATHER_SANDSTORM
	ld b, ROCK
	jr z, .finish
	
	cp WEATHER_ACID_RAIN
	ld a, POISON
	jr z, .finish

.noweather	
	ld a, 50
	ld d, a
	ld a, NORMAL
	jr .finishnoweather

.finish
	ld a, b
.finishnoweather
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	or SPECIAL
	ld [hl], a                     ;load type into hl
	
	ld a, d
	push af
	farcall BattleCommand_DamageStats
	pop af
	ld d, a                        ;load power into d
	ret

SetPowerTo80CheckWeather:
	ld a, 80
	ld d, a
	ld a, [wBattleWeather]
	ret

MurkrowPickpocketChance:
	xor a
	ldh [hTemp], a
	ld hl, MURKROW
	call GetPokemonIDFromIndex
	ld [wTempSpecies], a
	ld hl, wPartyMons
	ld a, [wPartyCount]
.partyMonLoopPP
	push af
	push hl
	ld a, [wTempSpecies]
	cp [hl]
	jr nz, .loopMonPP
	ld bc, MON_ITEM
	add hl, bc
	ld a, [hl]
	cp NO_ITEM
	jr z, .pickpocket_table

.loopMonPP
	pop hl
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop af
	dec a
	jr nz, .partyMonLoopPP
.donePP
	ldh a, [hTemp]
	and a
	jr z, .no_fanfarePP
	farcall Play_SFX_ConvertSuccess
.no_fanfarePP
	xor a
	ld [wTempSpecies], a
	ret

.pickpocket_table
;	call Random
;	cp 1 out_of 2 ; 12.5% chance
;	jr nc, .extrachancefailPP
	push hl
	call DeterminePickpocketItemSet
	
.nextPP	
	call Random
.loopPP
	sub [hl]
	jr c, .okPP
	inc hl
	inc hl
	jr .loopPP

.okPP
	ld a, [hli]
	inc a
	jr z, .endPP
	ld a, [hli]
.endPP
	pop hl
	
.endpickpocket
	cp NO_ITEM
	jr z, .extrachancefailPP
	ld [hl], a
	ld a, 1          ;so sfx only triggers once
	ldh [hTemp], a   ;even if there are multiple conversions

.extrachancefailPP
	jr .loopMonPP	

DeterminePickpocketItemSet:
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	ld b, a     ; current location in b
	
	ld hl, PickpocketMaps
.loop_itemset
	ld a, [hli] ; landmark -> itemset number
	cp -1
	jr z, .defaultset
	cp b
	jr nz, .wrong_map
	
	ld a, [hl]  ; this is a stupid hack but it works
	ld c, a
	ld b, 0
	ld hl, PickpocketTables
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
	
.wrong_map
	inc hl
	jr .loop_itemset
	
.defaultset
	ld hl, PickpocketItemSet_Default
	ret
	
PickpocketItemSet_Default:
;db # / 256 chance
	db  2, GOLD_BAND
	db  4, SHINY_STONE
	db  6, PECHA_BERRY
	db  8, BOTTLE_CAP
	db 12, GOLD_LEAF
	db -1
	
PickpocketTables:
	dw PickpocketItemSet_Forest    ;0
	dw PickpocketItemSet_Plains    ;1
	dw PickpocketItemSet_Water     ;2
	dw PickpocketItemSet_Shore     ;3
	dw PickpocketItemSet_Grassland ;4
	dw PickpocketItemSet_Volcano   ;5
	dw PickpocketItemSet_Urban     ;6
	dw PickpocketItemSet_Ice       ;7
	dw PickpocketItemSet_Dragon    ;8
	dw PickpocketItemSet_Cave      ;9
	
	
PickpocketItemSet_Forest:
	db  2, LEPPA_BERRY
	db  4, LEAF_SHARD
	db  6, RED_APRICORN
	db  8, GOLD_LEAF
	db 12, STICK
	db -1
	
PickpocketItemSet_Plains:
	db  2, LUM_BERRY
	db  4, THUNDERSHARD
	db  6, YLW_APRICORN
	db  8, THICK_CLUB    ;rare bone
	db 13, HARD_STONE
	db -1
	
PickpocketItemSet_Water:
	db  2, PEARL
	db  4, WATER_SHARD
	db  6, BOTTLE_CAP
	db  8, SILVER_SCALE
	db 13, MYSTIC_WATER
	db -1
	
PickpocketItemSet_Shore:
	db  2, STAR_PIECE
	db  4, WATER_SHARD
	db  6, BOTTLE_CAP
	db  8, SHOAL_SHELL
	db 13, SOFT_SAND
	db -1
	
PickpocketItemSet_Grassland:
	db  2, SITRUS_BERRY
	db  4, LEAF_SHARD
	db  6, BLU_APRICORN
	db  8, GOLD_LEAF
	db 13, MIRACLE_SEED
	db -1
	
PickpocketItemSet_Volcano:
	db  2, STAR_PIECE
	db  4, FIRE_SHARD
	db  6, RAWST_BERRY
	db  8, THICK_CLUB    ;rare bone
	db 13, HARD_STONE
	db -1
	
PickpocketItemSet_Urban:
	db  2, GOLD_BAND
	db  4, METAL_COAT
	db  6, PERSIM_BERRY
	db  8, BOTTLE_CAP
	db 13, RAGECANDYBAR
	db -1
	
PickpocketItemSet_Ice:
	db  2, GOLD_BAND
	db  4, ICE_STONE
	db  6, ASPEAR_BERRY
	db  8, STICK
	db 13, NEVERMELTICE
	db -1
	
PickpocketItemSet_Dragon:
	db  2, PEARL
	db  4, DRAGON_SCALE
	db  6, CHERI_BERRY
	db  8, SILVER_SCALE
	db 13, EVERSTONE
	db -1
	
PickpocketItemSet_Cave:
	db  2, STAR_PIECE
	db  4, MOON_STONE
	db  6, CHESTO_BERRY
	db  8, EVERSTONE
	db 13, HARD_STONE
	db -1

PickpocketMaps:
	db LANDMARK_ILEX_FOREST, 0    ;forest
	db LANDMARK_BERRY_FOREST, 0   ;forest
	db LANDMARK_MT_MORTAR, 5      ;volcano
	db LANDMARK_KINDLE_ROAD, 5    ;volcano
	db LANDMARK_ICE_PATH, 7       ;ice
	db LANDMARK_DRAGONS_DEN, 8    ;dragon
	db LANDMARK_FOUR_ISLAND, 3    ;shore
	db LANDMARK_ROUTE_40, 3       ;shore
	db LANDMARK_CIANWOOD_CITY, 3  ;shore
	db LANDMARK_ROUTE_41, 2       ;water
	db LANDMARK_ROUTE_39, 1       ;plains
	db LANDMARK_ROUTE_38, 1       ;plains
	db LANDMARK_GOLDENROD_CITY, 6 ;urban
	db LANDMARK_ROUTE_34, 6       ;urban
	db LANDMARK_UNION_CAVE, 9     ;cave
	db LANDMARK_DARK_CAVE, 9      ;cave
	db LANDMARK_ROUTE_29, 4       ;grassland
	db -1 ; end
	
BattleCommand_TeraBurst2:
	ld a, [wAttackMissed]
	and a
	ret nz

	call SetPowerTo80CheckShard  ;load battlemon item into a and power into d
	cp NO_ITEM
	jr z, .noshard
	
	cp FIRE_SHARD                ;store type in b based on held shard
	ld b, FIRE
	jr z, .finishshard
	
	cp WATER_SHARD
	ld b, WATER
	jr z, .finishshard
	
	cp THUNDERSHARD
	ld b, ELECTRIC
	jr z, .finishshard
	
	cp LEAF_SHARD
	ld b, GRASS
	jr z, .finishshard
	
	cp ICE_SHARD_I
	ld b, ICE
	jr z, .finishshard

.noshard	
	ld a, 50                     ;if no shard, set to weaker power
	ld d, a
	ld a, NORMAL
	jr .finishnoshard

.finishshard                     ;consume held shard upon successful attack
	push de                      ;then shift type value stored in b to a
	ld a, 1
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	xor a
	ld [hl], a
	ld [de], a
	pop de
	ld a, b

.finishnoshard
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	or PHYSICAL
	ld [hl], a                     ;load type into hl
	
	ld a, d
	push af
	farcall BattleCommand_DamageStats
	pop af
	ld d, a                        ;load power into d
	ret

SetPowerTo80CheckShard:
	ld a, 1
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem	
	ld a, 80
	ld d, a
	ld a, [hl]
	ret
	
BattleCommand_UTurn2:
; reset stats on switch
	ld a, [wAttackMissed]
	and a
	ret nz
	
	ldh a, [hBattleTurn]
	and a
	jr nz, .enemyreset
	farcall ResetPlayerStatLevels
	ret

.enemyreset
	farcall ResetEnemyStatLevels
	ret
	
BattleCommand_Refresh2:
; refresh
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and a
	jr z, .RefreshFailed

	farcall HealStatus
	farcall AnimateCurrentMove

	ld hl, RefreshText
	jp StdBattleTextbox

.RefreshFailed
	farcall AnimateFailedMove
	farcall PrintButItFailed
	ret
	
BattleCommand_Mist2:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_MIST, [hl]
	jr nz, .already_mist
	set SUBSTATUS_MIST, [hl]
	farcall AnimateCurrentMove
	ld hl, MistText
	jp StdBattleTextbox

.already_mist
	farcall AnimateFailedMove
	farcall PrintButItFailed
	ret
	
BattleCommand_AquaRing2:
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	bit SUBSTATUS_AQUARING, [hl]
	jr nz, .already_aquaring
	set SUBSTATUS_AQUARING, [hl]
	farcall AnimateCurrentMove
	ld hl, AquaRingText
	jp StdBattleTextbox

.already_aquaring
	farcall AnimateFailedMove
	farcall PrintButItFailed
	ret
	
CheckAquaRing:
	push hl
	ld hl, wEnemySubStatus2
	ldh a, [hBattleTurn]
	and a
	jr z, .got_turn
	ld hl, wPlayerSubStatus2

.got_turn
	bit SUBSTATUS_AQUARING, [hl]
	pop hl
	ret
