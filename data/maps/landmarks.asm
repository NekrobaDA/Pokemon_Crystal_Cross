landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark 140,  92, NewBarkTownName
	landmark 116,  92, Route29Name
	landmark 100,  84, CherrygroveCityName
	landmark 100,  76, Route30Name
	landmark  92,  52, Route31Name
	landmark  76,  52, VioletCityName
	landmark  76,  52, SproutTowerName
	landmark  76,  68, Route32Name
	landmark  68,  60, RuinsOfAlphName
	landmark  76, 116, UnionCaveName
	landmark  76, 116, Route33Name
	landmark  60, 116, AzaleaTownName
	landmark  68, 116, SlowpokeWellName
	landmark  44, 116, IlexForestName
	landmark  44,  92, Route34Name
	landmark  44,  76, GoldenrodCityName
	landmark  44,  76, RadioTowerName
	landmark  44,  60, Route35Name
	landmark  44,  52, NationalParkName
	landmark  60,  52, Route36Name
	landmark  60,  44, Route37Name
	landmark  60,  36, EcruteakCityName
	landmark  60,  28, TinTowerName
	landmark  60,  36, BurnedTowerName
	landmark  44,  36, Route38Name
	landmark  28,  36, Route39Name
	landmark  28,  52, OlivineCityName
	landmark  28,  52, LighthouseName
	landmark  20,  52, Route40Name
	landmark  20,  76, WhirlIslandsName
	landmark  20,  92, Route41Name
	landmark  12,  92, CianwoodCityName
	landmark  84,  36, Route42Name
	landmark  84,  36, MtMortarName
	landmark 108,  36, MahoganyTownName
	landmark 108,  28, Route43Name
	landmark 108,  20, LakeOfRageName
	landmark 124,  36, Route44Name
	landmark 124,  36, IcePathName
	landmark 140,  36, BlackthornCityName
	landmark 140,  28, DragonsDenName
	landmark 140,  52, Route45Name
	landmark 100,  52, DarkCaveName
	landmark 132,  76, Route46Name
	landmark 156,  60, SilverCaveName
	landmark  44, 116, PalletTownName
	landmark  44, 108, Route1Name
	landmark  44,  92, ViridianCityName
	landmark  44,  84, Route2Name
	landmark  44,  60, PewterCityName
	landmark  60,  60, Route3Name
	landmark  68,  60, MtMoonName
	landmark  76,  60, Route4Name
	landmark  92,  60, CeruleanCityName
	landmark  92,  44, Route24Name
	landmark 100,  36, Route25Name
	landmark  92,  68, Route5Name
	landmark  92,  76, UndergroundName
	landmark  92,  84, Route6Name
	landmark  92,  92, VermilionCityName
	landmark 108,  92, DiglettsCaveName
	landmark  76,  76, Route7Name
	landmark 108,  76, Route8Name
	landmark 108,  60, Route9Name
	landmark 132,  60, RockTunnelName
	landmark 132,  68, Route10Name
	landmark 124,  68, PowerPlantName
	landmark 132,  76, LavenderTownName
	landmark 132,  76, LavRadioTowerName
	landmark  68,  76, CeladonCityName
	landmark  92,  76, SaffronCityName
	landmark 116,  92, Route11Name
	landmark 132,  92, Route12Name
	landmark 124, 108, Route13Name
	landmark 116, 116, Route14Name
	landmark 108, 124, Route15Name
	landmark  60,  76, Route16Name
	landmark  60, 100, Route17Name
	landmark  68, 124, Route18Name
	landmark 100, 124, FuchsiaCityName
	landmark 100, 132, Route19Name
	landmark  68, 140, Route20Name
	landmark  68, 140, SeafoamIslandsName
	landmark  44, 140, CinnabarIslandName
	landmark  44, 124, Route21Name
	landmark  28,  92, Route22Name
	landmark  20,  52, VictoryRoadName
	landmark  20,  44, Route23Name
	landmark  20,  36, IndigoPlateauName
	landmark  20,  76, Route26Name
	landmark  04,  92, Route27Name
	landmark  04,  92, TohjoFallsName
	landmark  12,  60, Route28Name
	landmark 140, 116, FastShipName
	landmark  20,  60, OneIslandName
	landmark  28,  44, KindleRoadName
	landmark  28,  20, MtEmberName
	landmark  60,  28, TwoIslandName
	landmark  60,  20, CapeBrinkName
	landmark 132,  36, ThreeIslandName
	landmark 116,  36, BondBridgeName
	landmark 100,  36, BerryForestName
	landmark  52,  68, FourIslandName
	landmark  52,  68, IcefallCaveName
	landmark  76,  92, FiveIslandName
	landmark  84,  92, FiveIsleMeadowName
	landmark 124, 100, SixIslandName
	landmark 132, 100, WaterPathName
	landmark 124, 124, RuinValleyName
	landmark 124,  84, PatternBushName
	landmark  28, 100, SevenIslandName
	landmark  28,  84, BattleTowerName
	landmark  28, 116, CanyonEntranceName
	landmark  36, 124, SevaultCanyonName

NewBarkTownName:     db "NEW BARK¯TOWN@"
CherrygroveCityName: db "CHERRYGROVE¯CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
EcruteakCityName:    db "ECRUTEAK¯CITY@"
OlivineCityName:     db "OLIVINE¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT¯TOWER@"
RuinsOfAlphName:     db "RUINS¯OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
SilphCoName:         db "SILPH CO.@" ; unreferenced
SafariZoneName:      db "SAFARI ZONE@" ; unreferenced
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@" ; unreferenced
CeruleanCaveName:    db "CERULEAN¯CAVE@" ; unreferenced
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX¯FOREST@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@" ; unreferenced
DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
SpecialMapName:      db "SPECIAL@"
OneIslandName:       db "ONE ISLAND@"
KindleRoadName:      db "KINDLE¯ROAD@"
MtEmberName:         db "MT.EMBER@"
TwoIslandName:       db "TWO ISLAND@"
CapeBrinkName:       db "CAPE BRINK@"
ThreeIslandName:     db "THREE¯ISLAND@"
BondBridgeName:      db "BOND BRIDGE@"
BerryForestName:     db "BERRY¯FOREST@"
FourIslandName:      db "FOUR ISLAND@"
IcefallCaveName:     db "ICEFALL¯CAVE@"
FiveIslandName:      db "FIVE ISLAND@"
FiveIsleMeadowName:  db "FIVE ISLE¯MEADOW@"
SixIslandName:       db "SIX ISLAND@"
WaterPathName:       db "WATER PATH@"
RuinValleyName:      db "RUIN VALLEY@"
PatternBushName:     db "PATTERN¯BUSH@"
SevenIslandName:     db "SEVEN¯ISLAND@"
CanyonEntranceName:  db "CANYON¯ENTRANCE@"
SevaultCanyonName:   db "SEVAULT¯CANYON@"
