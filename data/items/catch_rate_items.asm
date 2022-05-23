; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db ICE_STONE, LEFTOVERS
	db SHINY_STONE, BITTER_BERRY
	db DUSK_STONE, GOLD_BERRY
	db TRISTONE, BERRY
	db -1,      BERRY
	db 0 ; end
