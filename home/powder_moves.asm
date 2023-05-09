PowderMoves::
	db POISONPOWDER
	db SLEEP_POWDER
	db SPORE
	db COTTON_SPORE
	db STUN_SPORE
	db -1
	
PowderMovesArray::
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld hl, PowderMoves
	call IsInByteArray
	ret
	