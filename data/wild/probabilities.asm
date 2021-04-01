mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	mon_prob 20,  0 ; 20% chance
	mon_prob 40,  1 ; 20% chance
	mon_prob 55,  2 ; 15% chance
	mon_prob 70,  3 ; 15% chance
	mon_prob 80,  4 ; 10% chance
	mon_prob 90,  5 ; 10% chance
	mon_prob 95,  6 ;  5% chance
	mon_prob 100, 7 ;  5% chance

WaterMonProbTable:
	mon_prob 40,  0 ; 40% chance
	mon_prob 70,  1 ; 30% chance
	mon_prob 90,  2 ; 20% chance
	mon_prob 100, 3 ; 10% chance
