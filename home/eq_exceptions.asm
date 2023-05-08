EarthquakeMiss::
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_EARTHQUAKE
	jr z, .checkmon
	
	cp EFFECT_MAGNITUDE
	jr nz, .not_eq_mag

.checkmon	
	jr .duserpent
	
.not_eq_mag
	ld a, 1
	ret
	
.duserpent
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(DUSERPENT)
	if HIGH(DUSERPENT) == 0
		or h
	else
		jr nz, .charizard
		if HIGH(DUSERPENT) == 1
			dec h
		else
			ld a, h
			cp HIGH(DUSERPENT)
		endc
	endc
	jp nz, .charizard
	
	ld a, 0
	ret
	
.charizard	
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(CHARIZARD)
	if HIGH(CHARIZARD) == 0
		or h
	else
		jr nz, .aerodactyl
		if HIGH(CHARIZARD) == 1
			dec h
		else
			ld a, h
			cp HIGH(CHARIZARD)
		endc
	endc
	jp nz, .aerodactyl
	
	ld a, 0
	ret
	
.aerodactyl	
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(AERODACTYL)
	if HIGH(AERODACTYL) == 0
		or h
	else
		jr nz, .venomoth
		if HIGH(AERODACTYL) == 1
			dec h
		else
			ld a, h
			cp HIGH(AERODACTYL)
		endc
	endc
	jp nz, .venomoth
	
	ld a, 0
	ret
	
.venomoth	
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(VENOMOTH)
	if HIGH(VENOMOTH) == 0
		or h
	else
		jr nz, .koffing
		if HIGH(VENOMOTH) == 1
			dec h
		else
			ld a, h
			cp HIGH(VENOMOTH)
		endc
	endc
	jp nz, .koffing
	
	ld a, 0
	ret
	
.koffing
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(KOFFING)
	if HIGH(KOFFING) == 0
		or h
	else
		jr nz, .weezing
		if HIGH(KOFFING) == 1
			dec h
		else
			ld a, h
			cp HIGH(KOFFING)
		endc
	endc
	jp nz, .weezing
	
	ld a, 0
	ret
	
.weezing
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(WEEZING)
	if HIGH(WEEZING) == 0
		or h
	else
		jr nz, .gastly
		if HIGH(WEEZING) == 1
			dec h
		else
			ld a, h
			cp HIGH(WEEZING)
		endc
	endc
	jp nz, .gastly
	
	ld a, 0
	ret
	
.gastly
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(GASTLY)
	if HIGH(GASTLY) == 0
		or h
	else
		jr nz, .haunter
		if HIGH(GASTLY) == 1
			dec h
		else
			ld a, h
			cp HIGH(GASTLY)
		endc
	endc
	jp nz, .haunter
	
	ld a, 0
	ret
	
.haunter
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(HAUNTER)
	if HIGH(HAUNTER) == 0
		or h
	else
		jr nz, .magnemite
		if HIGH(HAUNTER) == 1
			dec h
		else
			ld a, h
			cp HIGH(HAUNTER)
		endc
	endc
	jp nz, .magnemite
	
	ld a, 0
	ret
	
.magnemite
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MAGNEMITE)
	if HIGH(MAGNEMITE) == 0
		or h
	else
		jr nz, .magneton
		if HIGH(MAGNEMITE) == 1
			dec h
		else
			ld a, h
			cp HIGH(MAGNEMITE)
		endc
	endc
	jp nz, .magneton
	
	ld a, 0
	ret
	
.magneton
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MAGNETON)
	if HIGH(MAGNETON) == 0
		or h
	else
		jr nz, .mew
		if HIGH(MAGNETON) == 1
			dec h
		else
			ld a, h
			cp HIGH(MAGNETON)
		endc
	endc
	jp nz, .mew
	
	ld a, 0
	ret
	
.mew
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MEW)
	if HIGH(MEW) == 0
		or h
	else
		jr nz, .ledian
		if HIGH(MEW) == 1
			dec h
		else
			ld a, h
			cp HIGH(MEW)
		endc
	endc
	jp nz, .ledian
	
	ld a, 0
	ret
	
.ledian
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(LEDIAN)
	if HIGH(LEDIAN) == 0
		or h
	else
		jr nz, .misdreavus
		if HIGH(LEDIAN) == 1
			dec h
		else
			ld a, h
			cp HIGH(LEDIAN)
		endc
	endc
	jp nz, .misdreavus
	
	ld a, 0
	ret
	
.misdreavus
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MISDREAVUS)
	if HIGH(MISDREAVUS) == 0
		or h
	else
		jr nz, .mismagius
		if HIGH(MISDREAVUS) == 1
			dec h
		else
			ld a, h
			cp HIGH(MISDREAVUS)
		endc
	endc
	jp nz, .mismagius
	
	ld a, 0
	ret
	
.mismagius
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(MISMAGIUS)
	if HIGH(MISMAGIUS) == 0
		or h
	else
		jr nz, .celebi
		if HIGH(MISMAGIUS) == 1
			dec h
		else
			ld a, h
			cp HIGH(MISMAGIUS)
		endc
	endc
	jp nz, .celebi
	
	ld a, 0
	ret
	
.celebi
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(CELEBI)
	if HIGH(CELEBI) == 0
		or h
	else
		jr nz, .unown
		if HIGH(CELEBI) == 1
			dec h
		else
			ld a, h
			cp HIGH(CELEBI)
		endc
	endc
	jp nz, .unown
	
	ld a, 0
	ret
	
.unown
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .porygon
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jp nz, .porygon
	
	ld a, 0
	ret
	
.porygon
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(PORYGON)
	if HIGH(PORYGON) == 0
		or h
	else
		jr nz, .porygon2
		if HIGH(PORYGON) == 1
			dec h
		else
			ld a, h
			cp HIGH(PORYGON)
		endc
	endc
	jp nz, .porygon2
	
	ld a, 0
	ret
	
.porygon2
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(PORYGON2)
	if HIGH(PORYGON2) == 0
		or h
	else
		jr nz, .porygonz
		if HIGH(PORYGON2) == 1
			dec h
		else
			ld a, h
			cp HIGH(PORYGON2)
		endc
	endc
	jp nz, .porygonz
	
	ld a, 0
	ret
	
.porygonz
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(PORYGON_Z)
	if HIGH(PORYGON_Z) == 0
		or h
	else
		jr nz, .notmon
		if HIGH(PORYGON_Z) == 1
			dec h
		else
			ld a, h
			cp HIGH(PORYGON_Z)
		endc
	endc
	jp nz, .notmon
	
	ld a, 0
	ret
	
.notmon
	ld a, 1
	ret
	