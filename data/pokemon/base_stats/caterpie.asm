	db 0 ; species ID placeholder

	db  45,  30,  35,  45,  20,  20
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 255 ; catch rate
	db 67 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 7 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/caterpie/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH
	; end
