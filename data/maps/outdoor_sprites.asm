; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw OlivineGroupSprites
	dw MahoganyGroupSprites
	dw DungeonsGroupSprites
	dw NationalParkGroupSprites
	dw RadioGroupSprites
	dw RuinsGroupSprites
	dw LighthouseGroupSprites
	dw RocketGroupSprites
	dw ForestGroupSprites
	dw UndergroundGroupSprites
	dw CavesGroupSprites
	dw SafariZoneGroupSprites
	dw EcruteakGroupSprites
	dw BlackthornGroupSprites
	dw CinnabarGroupSprites
	dw CeruleanGroupSprites
	dw AzaleaGroupSprites
	dw LakeOfRageGroupSprites
	dw VioletGroupSprites
	dw GoldenrodGroupSprites
	dw VermilionGroupSprites
	dw PalletGroupSprites
	dw PewterGroupSprites
	dw FastShipGroupSprites
	dw IndigoGroupSprites
	dw FuchsiaGroupSprites
	dw FuchsiaCityGroupSprites
	dw LavenderGroupSprites
	dw SilverGroupSprites
	dw CableClubGroupSprites
	dw CeladonGroupSprites
	dw CianwoodGroupSprites
	dw ViridianGroupSprites
	dw NewBarkGroupSprites
	dw SaffronGroupSprites
	dw CherrygroveGroupSprites
	dw MewtwoGroupSprites
	dw CatalliaGroupSprites
	dw SeviiOneGroupSprites
	dw SeviiTwoGroupSprites
	dw SeviiThreeGroupSprites
	dw SeviiFourGroupSprites
	dw SeviiFiveGroupSprites
	dw SeviiSixGroupSprites
	dw SeviiSevenGroupSprites
	dw CherrygroveNeoGroupSprites
	dw UnderwaterGroupSprites
	dw SecretBaseGroupSprites
	dw JohtoSafariGroupSprites

; Route1 and ViridianCity are connected
; Route2 and PewterCity are connected
; PalletTown and Route21 are connected
PalletGroupSprites:
; Route1, PalletTown
ViridianGroupSprites:
; Route2, Route22, ViridianCity
PewterGroupSprites:
; Route3, PewterCity
CinnabarGroupSprites:
; Route19, Route20, Route21, CinnabarIsland
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_BLUE
	db SPRITE_GRAMPS
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_AERODACTYL
	db 0 ; end

; CeruleanCity and Route5 are connected
CeruleanGroupSprites:
; Route4, Route9, Route10North, Route24, Route25, CeruleanCity
SaffronGroupSprites:
; Route5, SaffronCity
	db SPRITE_COOLTRAINER_M
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKET
	db SPRITE_MISTY
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_SLOWPOKE
	db SPRITE_ELECTABUZZ
	db 0 ; end

VermilionGroupSprites:
; Route6, Route11, VermilionCity
	db SPRITE_POKEFAN_M
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	; 5 of max 9 walking sprites
	db SPRITE_BIG_SNORLAX
	db SPRITE_MACHOP
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

CeladonGroupSprites:
; Route7, Route16, Route17, CeladonCity
	db SPRITE_FISHER
	db SPRITE_TEACHER
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_BIKER
	; 6 of max 9 walking sprites
	db SPRITE_POLIWAG
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

; Route12 and Route13 are connected
LavenderGroupSprites:
; Route8, Route12, Route10South, LavenderTown
FuchsiaCityGroupSprites:
FuchsiaGroupSprites:
; Route13, Route14, Route15, Route18, FuchsiaCity
	db SPRITE_POKEFAN_M
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_FISHER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_BIKER
	db SPRITE_MAROWAK
	db SPRITE_LICKITUNG
	; 7 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

IndigoGroupSprites:
; Route23
	; 0 of max 9 walking sprites
	db 0 ; end

CatalliaGroupSprites:
; Route29 and CherrygroveCity are connected
NewBarkGroupSprites:
; Route26, Route27, Route29, NewBarkTown
CherrygroveGroupSprites:
; Route30, Route31, CherrygroveCity
	db SPRITE_SILVER
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_MONSTER
	db SPRITE_GRAMPS
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_MAGIKARP_0
	db SPRITE_MAGIKARP_1
	db SPRITE_MAGIKARP_2
	db SPRITE_MAGIKARP_3
	db SPRITE_CHERRY_0
	db SPRITE_CHERRY_1
	db SPRITE_STANDING_OFFICER
	db SPRITE_SPINARAK
	db 0 ; end

; Route37 and EcruteakCity are connected
VioletGroupSprites:
; Route32, Route35, Route36, Route37, VioletCity
EcruteakGroupSprites:
; EcruteakCity
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_OFFICER
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_M
	db SPRITE_BUG_CATCHER
	db SPRITE_SUPER_NERD
	db SPRITE_EEVEE
	; 8 of max 9 walking sprites
	db SPRITE_WEIRD_TREE ; variable sprite: becomes SPRITE_SUDOWOODO and SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_SUICUNE
	db 0 ; end

AzaleaGroupSprites:
; Route33, AzaleaTown
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_AZALEA_ROCKET ; variable sprite: becomes SPRITE_ROCKET and SPRITE_SILVER
	db SPRITE_LASS
	; 6 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_SLOWPOKE
	db SPRITE_KURT_OUTSIDE ; non-walking version of SPRITE_KURT
	db 0 ; end

GoldenrodGroupSprites:
; Route34, GoldenrodCity
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_ROCKET
	db SPRITE_LASS
	; 7 of max 9 walking sprites
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_POKE_BALL
	db 0 ; end

; OlivineCity and Route40 are connected
OlivineGroupSprites:
; Route38, Route39, OlivineCity
CianwoodGroupSprites:
; Route40, Route41, CianwoodCity, BattleTowerOutside
	db SPRITE_OLIVINE_RIVAL ; variable sprite: becomes SPRITE_SILVER and SPRITE_SWIMMER_GUY
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_BUENA
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_F
	db SPRITE_SUPER_NERD
	db SPRITE_MILTANK
	; 8 of max 9 walking sprites
	db SPRITE_RAPIDASH
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db SPRITE_STANDING_YOUNGSTER ; non-walking version of SPRITE_YOUNGSTER
	db SPRITE_SUICUNE
	db 0 ; end

MahoganyGroupSprites:
; Route42, Route44, MahoganyTown
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db SPRITE_SUICUNE
	db 0 ; end

LakeOfRageGroupSprites:
; Route43, LakeOfRage
	db SPRITE_LANCE
	db SPRITE_GRAMPS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_SUDOWOODO
	; 8 of max 9 walking sprites
	db SPRITE_GYARADOS
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

BlackthornGroupSprites:
; Route45, Route46, BlackthornCity
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_BLACK_BELT
	db SPRITE_COOLTRAINER_F
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

MewtwoGroupSprites:
SilverGroupSprites:
; Route28, SilverCaveOutside
	; 0 of max 9 walking sprites
	db SPRITE_SNORLAX
	db SPRITE_RHYDON
	db 0 ; end
	
NationalParkGroupSprites:
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_FISHER
	db SPRITE_PERSIAN
	db SPRITE_SUNFLORA
	; 8 of max 9 walking sprites
	db SPRITE_GAMEBOY_KID
	db SPRITE_POKE_BALL
	db 0 ; end
	
SafariZoneGroupSprites:
	db SPRITE_DRAGONAIR
	db 0 ; end
	
RuinsGroupSprites:
	db SPRITE_SMEARGLE
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_FISHER
	db SPRITE_SCIENTIST
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end
	
RadioGroupSprites:
LighthouseGroupSprites:
RocketGroupSprites:
ForestGroupSprites:
UndergroundGroupSprites:
CavesGroupSprites:
DungeonsGroupSprites:
; NationalPark, NationalParkBugContest, RuinsOfAlphOutside
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_FISHER
	db SPRITE_SCIENTIST
	; 8 of max 9 walking sprites
	db SPRITE_GAMEBOY_KID
	db SPRITE_GROWLITHE
	db SPRITE_POKE_BALL
	db 0 ; end

FastShipGroupSprites:
; OlivinePort, VermilionPort, MountMoonSquare, TinTowerRoof
	db SPRITE_SAILOR
	db SPRITE_FISHING_GURU
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_F
	db SPRITE_YOUNGSTER
	db SPRITE_GRAMPS
	; 6 of max 9 walking sprites
	db SPRITE_HO_OH
	db SPRITE_FAIRY
	db SPRITE_ROCK
	db SPRITE_ZAPDOS
	db 0 ; end

JohtoSafariGroupSprites:
CableClubGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end
	
CherrygroveNeoGroupSprites:
; Route30, Route31, CherrygroveCity
	db SPRITE_SILVER
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_GRAMPS
	db SPRITE_BIKER
	; max 6 of 9 walking sprites
	db SPRITE_MAGIKARP_0
	db SPRITE_MAGIKARP_1
	db SPRITE_MAGIKARP_2
	db SPRITE_MAGIKARP_3
	db SPRITE_CHERRY_0
	db SPRITE_CHERRY_1
	db 0 ; end
	
UnderwaterGroupSprites:
	; 0 of max 9 walking sprites
	db 0 ; end
	
SecretBaseGroupSprites:
	; 0 of max 9 walking sprites
	db 0 ; end
	
SeviiOneGroupSprites:
SeviiTwoGroupSprites:
	db SPRITE_SAILOR
	db SPRITE_GRAMPS
	db SPRITE_GYM_GUIDE
	db SPRITE_ROCKER
	db SPRITE_LASS
	db SPRITE_BUG_CATCHER
	db SPRITE_POKEFAN_F
	; 7 of max 9 walking sprites
	db SPRITE_CLERK
	db SPRITE_ROCK
	db 0 ; end

SeviiThreeGroupSprites:
SeviiFourGroupSprites:
	db SPRITE_SAILOR
	db SPRITE_RECEPTIONIST
	db SPRITE_YOUNGSTER
	db SPRITE_BEAUTY
	db SPRITE_BIKER
	db SPRITE_POKEFAN_M
	db SPRITE_GRANNY
	db SPRITE_TWIN
	; 8 of max 9 walking sprites
	db SPRITE_GRAMPS
	db SPRITE_ROCK
	db 0 ; end
	
SeviiFiveGroupSprites:
SeviiSixGroupSprites:
SeviiSevenGroupSprites:
	db SPRITE_SAILOR
	db SPRITE_FISHING_GURU
	db SPRITE_FISHER
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_M
	db SPRITE_TEACHER
	db SPRITE_GRANNY
	db SPRITE_SCIENTIST
	; 8 of max 9 walking sprites
	db SPRITE_ROCK
	db 0 ; end
