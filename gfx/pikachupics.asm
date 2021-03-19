; PokemonPicPointers and UnownPicPointers are assumed to start at the same
; address, but in different banks. This is enforced in layout.link.

SECTION "Pikachu Pic Pointers", ROMX

INCLUDE "data/pokemon/pikachu_pic_pointers.asm"


SECTION "Pics 25", ROMX

Pikachu_MaleFrontpic:   INCBIN "gfx/pokemon/pikachu_male/front.animated.2bpp.lz"
Pikachu_MaleBackpic:    INCBIN "gfx/pokemon/pikachu_male/back.2bpp.lz"
Pikachu_FemaleFrontpic: INCBIN "gfx/pokemon/pikachu_female/front.animated.2bpp.lz"
Pikachu_FemaleBackpic:  INCBIN "gfx/pokemon/pikachu_female/back.2bpp.lz"

