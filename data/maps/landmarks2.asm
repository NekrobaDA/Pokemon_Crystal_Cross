landmark1: MACRO
; x, y, Name2
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks2:
; entries correspond to constants/landmark1_constants.asm
	dbbw       0,   0, SpecialMapName2
	landmark1 140, 100, NewBarkTownName2
	landmark1 128, 100, Route29Name2
	landmark1 100, 100, CherrygroveCityName2
	landmark1 100,  80, Route30Name2
	landmark1  96,  60, Route31Name2
	landmark1  84,  60, VioletCityName2
	landmark1  85,  58, SproutTowerName2
	landmark1  84,  92, Route32Name2
	landmark1  76,  76, RuinsOfAlphName2
	landmark1  84, 124, UnionCaveName2
	landmark1  82, 124, Route33Name2
	landmark1  68, 124, AzaleaTownName2
	landmark1  70, 122, SlowpokeWellName2
	landmark1  52, 120, IlexForestName2
	landmark1  52, 112, Route34Name2
	landmark1  52,  92, GoldenrodCityName2
	landmark1  50,  92, RadioTowerName2
	landmark1  52,  76, Route35Name2
	landmark1  52,  60, NationalParkName2
	landmark1  64,  60, Route36Name2
	landmark1  68,  52, Route37Name2
	landmark1  68,  44, EcruteakCityName2
	landmark1  70,  42, TinTowerName2
	landmark1  66,  42, BurnedTowerName2
	landmark1  52,  44, Route38Name2
	landmark1  36,  48, Route39Name2
	landmark1  36,  60, OlivineCityName2
	landmark1  38,  62, LighthouseName2
	landmark1  28,  64, Route40Name2
	landmark1  28,  92, WhirlIslandsName2
	landmark1  28, 100, Route41Name2
	landmark1  20, 100, CianwoodCityName2
	landmark1  92,  44, Route42Name2
	landmark1  84,  44, MtMortarName2
	landmark1 108,  44, MahoganyTownName2
	landmark1 108,  36, Route43Name2
	landmark1 108,  28, LakeOfRageName2
	landmark1 120,  44, Route44Name2
	landmark1 130,  38, IcePathName2
	landmark1 132,  44, BlackthornCityName2
	landmark1 132,  36, DragonsDenName2
	landmark1 132,  64, Route45Name2
	landmark1 112,  72, DarkCaveName2
	landmark1 124,  88, Route46Name2
	landmark1 148,  68, SilverCaveName2
	landmark1  52, 108, PalletTownName2
	landmark1  52,  92, Route1Name2
	landmark1  52,  76, ViridianCityName2
	landmark1  52,  64, Route2Name2
	landmark1  52,  52, PewterCityName2
	landmark1  64,  52, Route3Name2
	landmark1  76,  52, MtMoonName2
	landmark1  88,  52, Route4Name2
	landmark1 100,  52, CeruleanCityName2
	landmark1 100,  44, Route24Name2
	landmark1 108,  36, Route25Name2
	landmark1 100,  60, Route5Name2
	landmark1 108,  76, UndergroundName2
	landmark1 100,  76, Route6Name2
	landmark1 100,  84, VermilionCityName2
	landmark1  88,  60, DiglettsCaveName2
	landmark1  88,  68, Route7Name2
	landmark1 116,  68, Route8Name2
	landmark1 116,  52, Route9Name2
	landmark1 132,  52, RockTunnelName2
	landmark1 132,  56, Route10Name2
	landmark1 132,  60, PowerPlantName2
	landmark1 132,  68, LavenderTownName2
	landmark1 140,  68, LavRadioTowerName2
	landmark1  76,  68, CeladonCityName2
	landmark1 100,  68, SaffronCityName2
	landmark1 116,  84, Route11Name2
	landmark1 132,  80, Route12Name2
	landmark1 124, 100, Route13Name2
	landmark1 116, 112, Route14Name2
	landmark1 104, 116, Route15Name2
	landmark1  68,  68, Route16Name2
	landmark1  68,  92, Route17Name2
	landmark1  80, 116, Route18Name2
	landmark1  92, 116, FuchsiaCityName2
	landmark1  92, 128, Route19Name2
	landmark1  76, 132, Route20Name2
	landmark1  68, 132, SeafoamIslandsName2
	landmark1  52, 132, CinnabarIslandName2
	landmark1  52, 120, Route21Name2
	landmark1  36,  68, Route22Name2
	landmark1  28,  52, VictoryRoadName2
	landmark1  28,  44, Route23Name2
	landmark1  28,  36, IndigoPlateauName2
	landmark1  28,  92, Route26Name2
	landmark1  20, 100, Route27Name2
	landmark1  12, 100, TohjoFallsName2
	landmark1  20,  68, Route28Name2
	landmark1 140, 116, FastShipName2
	landmark1   0,   0, OneIslandName2
	landmark1   0,   0, KindleRoadName2
	landmark1   0,   0, MtEmberName2
	landmark1   0,   0, TwoIslandName2
	landmark1   0,   0, CapeBrinkName2
	landmark1   0,   0, ThreeIslandName2
	landmark1   0,   0, BondBridgeName2
	landmark1   0,   0, BerryForestName2
	landmark1   0,   0, FourIslandName2
	landmark1   0,   0, IcefallCaveName2
	landmark1   0,   0, FiveIslandName2
	landmark1   0,   0, FiveIsleMeadowName2
	landmark1   0,   0, SixIslandName2
	landmark1   0,   0, WaterPathName2
	landmark1   0,   0, RuinValleyName2
	landmark1   0,   0, PatternBushName2
	landmark1   0,   0, SevenIslandName2
	landmark1  28,  56, BattleTowerName2
	landmark1   0,   0, CanyonEntranceName2
	landmark1   0,   0, SevaultCanyonName2

NewBarkTownName2:     db "NEW BARK@"
CherrygroveCityName2: db "CHERRYGRVE@"
VioletCityName2:      db "VIOLET@"
AzaleaTownName2:      db "AZALEA@"
GoldenrodCityName2:   db "GOLDENROD@"
EcruteakCityName2:    db "ECRUTEAK@"
OlivineCityName2:     db "OLIVINE@"
CianwoodCityName2:    db "CIANWOOD@"
MahoganyTownName2:    db "MAHOGANY@"
BlackthornCityName2:  db "BLACKTHORN@"
LakeOfRageName2:      db "RAGE LAKE@"
SilverCaveName2:      db "SILVR CAVE@"
SproutTowerName2:     db "SPROUT TWR@"
RuinsOfAlphName2:     db "ALPH RUINS@"
UnionCaveName2:       db "UNION CAVE@"
SlowpokeWellName2:    db "POKE WELL@"
RadioTowerName2:      db "RADIO TWR@"
PowerPlantName2:      db "POWR PLANT@"
NationalParkName2:    db "NAT. PARK@"
TinTowerName2:        db "TIN TOWER@"
LighthouseName2:      db "LIGHTHOUSE@"
WhirlIslandsName2:    db "WHIRL ISLE@"
MtMortarName2:        db "MT. MORTAR@"
DragonsDenName2:      db "DRAGON DEN@"
IcePathName2:         db "ICE PATH@"
NotApplicableName2:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName2:      db "PALLET@"
ViridianCityName2:    db "VIRIDIAN@"
PewterCityName2:      db "PEWTER@"
CeruleanCityName2:    db "CERULEAN@"
LavenderTownName2:    db "LAVENDER@"
VermilionCityName2:   db "VERMILION@"
CeladonCityName2:     db "CELADON@"
SaffronCityName2:     db "SAFFRON@"
FuchsiaCityName2:     db "FUCHSIA@"
CinnabarIslandName2:  db "CINNABAR@"
IndigoPlateauName2:   db "INDIGO@"
VictoryRoadName2:     db "VICTORY RD@"
MtMoonName2:          db "MT. MOON@"
RockTunnelName2:      db "ROCK TUNNL@"
LavRadioTowerName2:   db "LAV TOWER@"
SilphCoName2:         db "SILPH CO.@" ; unreferenced
SafariZoneName2:      db "SAFARI ZNE@" ; unreferenced
SeafoamIslandsName2:  db "SEAFOAM@"
PokemonMansionName2:  db "MANSION@" ; unreferenced
CeruleanCaveName2:    db "CER. CAVE@" ; unreferenced
Route1Name2:          db "ROUTE 1@"
Route2Name2:          db "ROUTE 2@"
Route3Name2:          db "ROUTE 3@"
Route4Name2:          db "ROUTE 4@"
Route5Name2:          db "ROUTE 5@"
Route6Name2:          db "ROUTE 6@"
Route7Name2:          db "ROUTE 7@"
Route8Name2:          db "ROUTE 8@"
Route9Name2:          db "ROUTE 9@"
Route10Name2:         db "ROUTE 10@"
Route11Name2:         db "ROUTE 11@"
Route12Name2:         db "ROUTE 12@"
Route13Name2:         db "ROUTE 13@"
Route14Name2:         db "ROUTE 14@"
Route15Name2:         db "ROUTE 15@"
Route16Name2:         db "ROUTE 16@"
Route17Name2:         db "ROUTE 17@"
Route18Name2:         db "ROUTE 18@"
Route19Name2:         db "ROUTE 19@"
Route20Name2:         db "ROUTE 20@"
Route21Name2:         db "ROUTE 21@"
Route22Name2:         db "ROUTE 22@"
Route23Name2:         db "ROUTE 23@"
Route24Name2:         db "ROUTE 24@"
Route25Name2:         db "ROUTE 25@"
Route26Name2:         db "ROUTE 26@"
Route27Name2:         db "ROUTE 27@"
Route28Name2:         db "ROUTE 28@"
Route29Name2:         db "ROUTE 29@"
Route30Name2:         db "ROUTE 30@"
Route31Name2:         db "ROUTE 31@"
Route32Name2:         db "ROUTE 32@"
Route33Name2:         db "ROUTE 33@"
Route34Name2:         db "ROUTE 34@"
Route35Name2:         db "ROUTE 35@"
Route36Name2:         db "ROUTE 36@"
Route37Name2:         db "ROUTE 37@"
Route38Name2:         db "ROUTE 38@"
Route39Name2:         db "ROUTE 39@"
Route40Name2:         db "ROUTE 40@"
Route41Name2:         db "ROUTE 41@"
Route42Name2:         db "ROUTE 42@"
Route43Name2:         db "ROUTE 43@"
Route44Name2:         db "ROUTE 44@"
Route45Name2:         db "ROUTE 45@"
Route46Name2:         db "ROUTE 46@"
DarkCaveName2:        db "DARK CAVE@"
IlexForestName2:      db "ILEX FORST@"
BurnedTowerName2:     db "BURNED TWR@"
FastShipName2:        db "FAST SHIP@"
ViridianForestName2:  db "VIR. FORST@" ; unreferenced
DiglettsCaveName2:    db "DIGDA CAVE@"
TohjoFallsName2:      db "TOHJO FALL@"
UndergroundName2:     db "UNDRGROUND@"
BattleTowerName2:     db "BATTLE TWR@"
SpecialMapName2:      db "SPECIAL@"
OneIslandName2:       db "ONE ISLE@"
KindleRoadName2:      db "KINDLE RD@"
MtEmberName2:         db "MT. EMBER@"
TwoIslandName2:       db "TWO ISLE@"
CapeBrinkName2:       db "CAPE BRINK@"
ThreeIslandName2:     db "THREE ISLE@"
BondBridgeName2:      db "BOND BRDGE@"
BerryForestName2:     db "BERRY FRST@"
FourIslandName2:      db "FOUR ISLE@"
IcefallCaveName2:     db "ICE CAVE@"
FiveIslandName2:      db "FIVE ISLE@"
FiveIsleMeadowName2:  db "FIVE MEADW@"
SixIslandName2:       db "SIX ISLE@"
WaterPathName2:       db "WATER PATH@"
RuinValleyName2:      db "RUIN VALLY@"
PatternBushName2:     db "PATRN BUSH@"
SevenIslandName2:     db "SEVEN ISLE@"
CanyonEntranceName2:  db "CAN ENTRCE@"
SevaultCanyonName2:   db "SEV CANYON@"
