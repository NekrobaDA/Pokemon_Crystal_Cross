;landmark1: MACRO
;; x, y, Name2
;	db \1 + 8, \2 + 16
;	dw \3
;ENDM

Landmarks2:
; entries correspond to constants/landmark1_constants.asm
	dw SpecialMapName2
	dw NewBarkTownName2
	dw Route29Name2
	dw CherrygroveCityName2
	dw Route47Name2
	dw CatalliaTownName2
	dw Route30Name2
	dw Route31Name2
	dw VioletCityName2
	dw SproutTowerName2
	dw Route32Name2
	dw RuinsOfAlphName2
	dw UnionCaveName2
	dw Route33Name2
	dw AzaleaTownName2
	dw SlowpokeWellName2
	dw IlexForestName2
	dw Route34Name2
	dw GoldenrodCityName2
	dw RadioTowerName2
	dw Route35Name2
	dw NationalParkName2
	dw Route36Name2
	dw Route37Name2
	dw EcruteakCityName2
	dw TinTowerName2
	dw BurnedTowerName2
	dw Route38Name2
	dw Route39Name2
	dw OlivineCityName2
	dw LighthouseName2
	dw Route40Name2
	dw WhirlIslandsName2
	dw Route41Name2
	dw CianwoodCityName2
	dw Route42Name2
	dw MtMortarName2
	dw MahoganyTownName2
	dw Route43Name2
	dw LakeOfRageName2
	dw Route44Name2
	dw IcePathName2
	dw BlackthornCityName2
	dw DragonsDenName2
	dw Route45Name2
	dw DarkCaveName2
	dw Route46Name2
	dw SilverCaveName2
	dw PalletTownName2
	dw Route1Name2
	dw ViridianCityName2
	dw Route2Name2
	dw PewterCityName2
	dw Route3Name2
	dw MtMoonName2
	dw Route4Name2
	dw CeruleanCityName2
	dw Route24Name2
	dw Route25Name2
	dw Route5Name2
	dw UndergroundName2
	dw Route6Name2
	dw VermilionCityName2
	dw DiglettsCaveName2
	dw Route7Name2
	dw Route8Name2
	dw Route9Name2
	dw RockTunnelName2
	dw Route10Name2
	dw PowerPlantName2
	dw LavenderTownName2
	dw LavRadioTowerName2
	dw CeladonCityName2
	dw SaffronCityName2
	dw Route11Name2
	dw Route12Name2
	dw Route13Name2
	dw Route14Name2
	dw Route15Name2
	dw Route16Name2
	dw Route17Name2
	dw Route18Name2
	dw FuchsiaCityName2
	dw Route19Name2
	dw Route20Name2
	dw SeafoamIslandsName2
	dw CinnabarIslandName2
	dw Route21Name2
	dw Route22Name2
	dw VictoryRoadName2
	dw Route23Name2
	dw IndigoPlateauName2
	dw Route26Name2
	dw Route27Name2
	dw TohjoFallsName2
	dw Route28Name2
	dw FastShipName2
	dw OneIslandName2
	dw KindleRoadName2
	dw MtEmberName2
	dw TwoIslandName2
	dw CapeBrinkName2
	dw ThreeIslandName2
	dw BondBridgeName2
	dw BerryForestName2
	dw FourIslandName2
	dw IcefallCaveName2
	dw FiveIslandName2
	dw FiveIsleMeadowName2
	dw SixIslandName2
	dw WaterPathName2
	dw RuinValleyName2
	dw PatternBushName2
	dw SevenIslandName2
	dw BattleTowerName2
	dw CanyonEntranceName2
	dw SevaultCanyonName2 ;0-116
	dw PlaceholderName2_1
	dw PlaceholderName2_2
	dw PlaceholderName2_3
	dw PlaceholderName2_4
	dw PlaceholderName2_5
	dw PlaceholderName2_6
	dw PlaceholderName2_7
	dw PlaceholderName2_8
	dw PlaceholderName2_9
	dw GiftName2
	dw EventName2

NewBarkTownName2:     db "New Bark Town@"
CherrygroveCityName2: db "Cherrygrove City@"
VioletCityName2:      db "Violet City@"
AzaleaTownName2:      db "Azalea Town@"
GoldenrodCityName2:   db "Goldenrod City@"
EcruteakCityName2:    db "Ecruteak City@"
OlivineCityName2:     db "Olivine City@"
CianwoodCityName2:    db "Cianwood City@"
MahoganyTownName2:    db "Mahogany Town@"
BlackthornCityName2:  db "Blackthorn City"
LakeOfRageName2:      db "Lake of Rage@"
SilverCaveName2:      db "Silver Cave@"
SproutTowerName2:     db "Sprout Tower@"
RuinsOfAlphName2:     db "Ruins of Alph@"
UnionCaveName2:       db "Union Cave@"
SlowpokeWellName2:    db "Slowpoke Well@"
RadioTowerName2:      db "Radio Tower@"    ;this should never be a met location but should be goldenrod
PowerPlantName2:      db "Power Plant@"
NationalParkName2:    db "National Park@"
TinTowerName2:        db "Tin Tower@"
LighthouseName2:      db "Oliv. Lighthouse@"  ;'Olivine Lighthouse'
WhirlIslandsName2:    db "Whirl Islands@"
MtMortarName2:        db "Mt. Mortar@"
DragonsDenName2:      db "Dragon's Den@"
IcePathName2:         db "Ice Path@"
PalletTownName2:      db "Pallet Town@"
ViridianCityName2:    db "Viridian City@"
PewterCityName2:      db "Pewter City@"
CeruleanCityName2:    db "Cerulean City@"
LavenderTownName2:    db "Lavender Town@"
VermilionCityName2:   db "Vermilion City@"
CeladonCityName2:     db "Celadon City@"
SaffronCityName2:     db "Saffron City@"
FuchsiaCityName2:     db "Fuchsia City@"
CinnabarIslandName2:  db "Cinnabar Island@"
IndigoPlateauName2:   db "Indigo Plateau@"
VictoryRoadName2:     db "Victory Road@"
MtMoonName2:          db "Mt. Moon"
RockTunnelName2:      db "Rock Tunnel@"
LavRadioTowerName2:   db "Lavender Tower@"
SilphCoName2:         db "Silph Co.@" ; unreferenced
SafariZoneName2:      db "Safari Zone@" ; unreferenced
SeafoamIslandsName2:  db "Seafoam Islands@"
PokemonMansionName2:  db "Cinnabar Mansion@" ; unreferenced
CeruleanCaveName2:    db "Cerulean Cave@" ; unreferenced
Route1Name2:          db "Route 1@"
Route2Name2:          db "Route 2@"
Route3Name2:          db "Route 3@"
Route4Name2:          db "Route 4@"
Route5Name2:          db "Route 5@"
Route6Name2:          db "Route 6@"
Route7Name2:          db "Route 7@"
Route8Name2:          db "Route 8@"
Route9Name2:          db "Route 9@"
Route10Name2:         db "Route 10@"
Route11Name2:         db "Route 11@"
Route12Name2:         db "Route 12@"
Route13Name2:         db "Route 13@"
Route14Name2:         db "Route 14@"
Route15Name2:         db "Route 15@"
Route16Name2:         db "Route 16@"
Route17Name2:         db "Route 17@"
Route18Name2:         db "Route 18@"
Route19Name2:         db "Route 19@"
Route20Name2:         db "Route 20@"
Route21Name2:         db "Route 21@"
Route22Name2:         db "Route 22@"
Route23Name2:         db "Route 23@"
Route24Name2:         db "Route 24@"
Route25Name2:         db "Route 25@"
Route26Name2:         db "Route 26@"
Route27Name2:         db "Route 27@"
Route28Name2:         db "Route 28@"
Route29Name2:         db "Route 29@"
Route30Name2:         db "Route 30@"
Route31Name2:         db "Route 31@"
Route32Name2:         db "Route 32@"
Route33Name2:         db "Route 33@"
Route34Name2:         db "Route 34@"
Route35Name2:         db "Route 35@"
Route36Name2:         db "Route 36@"
Route37Name2:         db "Route 37@"
Route38Name2:         db "Route 38@"
Route39Name2:         db "Route 39@"
Route40Name2:         db "Route 40@"
Route41Name2:         db "Route 41@"
Route42Name2:         db "Route 42@"
Route43Name2:         db "Route 43@"
Route44Name2:         db "Route 44@"
Route45Name2:         db "Route 45@"
Route46Name2:         db "Route 46@"
DarkCaveName2:        db "Dark Cave@"
IlexForestName2:      db "Ilex Forest@"
BurnedTowerName2:     db "Burned Tower@"
FastShipName2:        db "S.S. Aqua@"    ;should never appear
ViridianForestName2:  db "Viridian Forest@" ; unreferenced
DiglettsCaveName2:    db "Diglett's Cave@"
TohjoFallsName2:      db "Tohjo Falls@"
UndergroundName2:     db "Underground@"  ;?
BattleTowerName2:     db "Battle Tower@"
SpecialMapName2:      db "Fateful Encounter@"
OneIslandName2:       db "One Island"
KindleRoadName2:      db "Kindle Road@"
MtEmberName2:         db "Mt. Ember@"
TwoIslandName2:       db "Two Island@"
CapeBrinkName2:       db "Cape Brink@"
ThreeIslandName2:     db "Three Island@"
BondBridgeName2:      db "Bond Bridge@"
BerryForestName2:     db "Berry Forest@"
FourIslandName2:      db "Four Island@"
IcefallCaveName2:     db "Ice Cave@"
FiveIslandName2:      db "Five Island@"
FiveIsleMeadowName2:  db "Five Isle Meadow@"
SixIslandName2:       db "Six Island@"
WaterPathName2:       db "Water Path@"
RuinValleyName2:      db "Ruin Valley@"
PatternBushName2:     db "Pattern Bush@"
SevenIslandName2:     db "Seven Island@"
CanyonEntranceName2:  db "Canyon Entrance@"
SevaultCanyonName2:   db "Sevault Canyon@"
Route47Name2:         db "Route 47@"
CatalliaTownName2:    db "Catallia Town@"
PlaceholderName2_1:   db "Placeholder@"
PlaceholderName2_2:   db "Placeholder@"
PlaceholderName2_3:   db "Placeholder@"
PlaceholderName2_4:   db "Placeholder@"
PlaceholderName2_5:   db "Placeholder@"
PlaceholderName2_6:   db "Placeholder@"
PlaceholderName2_7:   db "Placeholder@"
PlaceholderName2_8:   db "Placeholder@"
PlaceholderName2_9:   db "Placeholder@"
GiftName2:            db "In a Trade@" ;trademons
EventName2:           db "Event@"
