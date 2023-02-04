INCLUDE "constants.asm"

tilecoll: MACRO
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

TilesetKantoGFX::
INCBIN "gfx/tilesets/kanto.2bpp.lz"

TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin"

TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

Tileset0GFX::
TilesetJohtoGFX::
INCBIN "gfx/tilesets/johto.2bpp.lz"

Tileset0Meta::
TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin"

Tileset0Coll::
TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"

TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"

TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"

TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"

TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"

TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"

TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"

TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"

TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"


SECTION "Tileset Data 4", ROMX

TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetParkGFX::
INCBIN "gfx/tilesets/park.2bpp.lz"

TilesetParkMeta::
INCBIN "data/tilesets/park_metatiles.bin"

TilesetParkColl::
INCLUDE "data/tilesets/park_collision.asm"

TilesetRadioTowerGFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"

TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin"

TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetUndergroundGFX::
INCBIN "gfx/tilesets/underground.2bpp.lz"

TilesetUndergroundMeta::
INCBIN "data/tilesets/underground_metatiles.bin"

TilesetUndergroundColl::
INCLUDE "data/tilesets/underground_collision.asm"

TilesetDarkCaveGFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

UnusedTilesetJohtoMeta:: ; unreferenced
INCBIN "data/tilesets/unused_johto_metatiles.bin"

UnusedTilesetJohtoColl:: ; unreferenced
INCLUDE "data/tilesets/unused_johto_collision.asm"


SECTION "Tileset Data 5", ROMX

TilesetPokeComCenterGFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.lz"

TilesetPokeComCenterMeta::
INCBIN "data/tilesets/pokecom_center_metatiles.bin"

TilesetPokeComCenterColl::
INCLUDE "data/tilesets/pokecom_center_collision.asm"

TilesetBattleTowerInsideGFX::
INCBIN "gfx/tilesets/battle_tower_inside.2bpp.lz"

TilesetBattleTowerInsideMeta::
INCBIN "data/tilesets/battle_tower_inside_metatiles.bin"

TilesetBattleTowerInsideColl::
INCLUDE "data/tilesets/battle_tower_inside_collision.asm"

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetJohtoModernGFX::
TilesetBattleTowerOutsideGFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin"

TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"


SECTION "Tileset Data 6", ROMX

TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.lz"

TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

TilesetLighthouseGFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.lz"

TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin"

TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"

TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"

TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

TilesetBattleTowerOutsideMeta::
INCBIN "data/tilesets/battle_tower_outside_metatiles.bin"

TilesetBattleTowerOutsideColl::
INCLUDE "data/tilesets/battle_tower_outside_collision.asm"

TilesetBetaWordRoomMeta::
INCBIN "data/tilesets/beta_word_room_metatiles.bin"

TilesetBetaWordRoomColl::
TilesetHoOhWordRoomColl::
TilesetKabutoWordRoomColl::
TilesetOmanyteWordRoomColl::
TilesetAerodactylWordRoomColl::
INCLUDE "data/tilesets/beta_word_room_collision.asm"


SECTION "Tileset Data 7", ROMX

TilesetRuinsOfAlphGFX::
TilesetBetaWordRoomGFX::
TilesetHoOhWordRoomGFX::
TilesetKabutoWordRoomGFX::
TilesetOmanyteWordRoomGFX::
TilesetAerodactylWordRoomGFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.lz"

TilesetRuinsOfAlphMeta::
INCBIN "data/tilesets/ruins_of_alph_metatiles.bin"

TilesetRuinsOfAlphColl::
INCLUDE "data/tilesets/ruins_of_alph_collision.asm"

TilesetTraditionalHouseGFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.lz"

TilesetTraditionalHouseMeta::
INCBIN "data/tilesets/traditional_house_metatiles.bin"

TilesetTraditionalHouseColl::
INCLUDE "data/tilesets/traditional_house_collision.asm"


SECTION "Tileset Data 8", ROMX

TilesetHoOhWordRoomMeta::
INCBIN "data/tilesets/ho_oh_word_room_metatiles.bin"

TilesetKabutoWordRoomMeta::
INCBIN "data/tilesets/kabuto_word_room_metatiles.bin"

TilesetOmanyteWordRoomMeta::
INCBIN "data/tilesets/omanyte_word_room_metatiles.bin"

TilesetAerodactylWordRoomMeta::
INCBIN "data/tilesets/aerodactyl_word_room_metatiles.bin"

TilesetKanjoGFX::
INCBIN "gfx/tilesets/kanjo.2bpp.lz"

TilesetKanjoMeta::
INCBIN "data/tilesets/kanjo_metatiles.bin"

TilesetKanjoColl::
INCLUDE "data/tilesets/kanjo_collision.asm"

TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"


SECTION "Tileset Data 9", ROMX

Tileset0Attr::
TilesetJohtoAttr::
INCBIN "data/tilesets/johto_attributes.bin"

TilesetJohtoModernAttr::
INCBIN "data/tilesets/johto_modern_attributes.bin"

TilesetKantoAttr::
INCBIN "data/tilesets/kanto_attributes.bin"

TilesetBattleTowerOutsideAttr::
INCBIN "data/tilesets/battle_tower_outside_attributes.bin"

TilesetHouseAttr::
INCBIN "data/tilesets/house_attributes.bin"

TilesetPlayersHouseAttr::
INCBIN "data/tilesets/players_house_attributes.bin"

TilesetPokecenterAttr::
INCBIN "data/tilesets/pokecenter_attributes.bin"

TilesetGateAttr::
INCBIN "data/tilesets/gate_attributes.bin"

TilesetPortAttr::
INCBIN "data/tilesets/port_attributes.bin"

TilesetLabAttr::
INCBIN "data/tilesets/lab_attributes.bin"


SECTION "Tileset Data 10", ROMX

TilesetFacilityAttr::
INCBIN "data/tilesets/facility_attributes.bin"

TilesetMartAttr::
INCBIN "data/tilesets/mart_attributes.bin"

TilesetMansionAttr::
INCBIN "data/tilesets/mansion_attributes.bin"

TilesetGameCornerAttr::
INCBIN "data/tilesets/game_corner_attributes.bin"

TilesetEliteFourRoomAttr::
INCBIN "data/tilesets/elite_four_room_attributes.bin"

TilesetTraditionalHouseAttr::
INCBIN "data/tilesets/traditional_house_attributes.bin"

TilesetTrainStationAttr::
INCBIN "data/tilesets/train_station_attributes.bin"

TilesetChampionsRoomAttr::
INCBIN "data/tilesets/champions_room_attributes.bin"

TilesetLighthouseAttr::
INCBIN "data/tilesets/lighthouse_attributes.bin"

TilesetPlayersRoomAttr::
INCBIN "data/tilesets/players_room_attributes.bin"

TilesetPokeComCenterAttr::
INCBIN "data/tilesets/pokecom_center_attributes.bin"

TilesetBattleTowerInsideAttr::
INCBIN "data/tilesets/battle_tower_inside_attributes.bin"

TilesetTowerAttr::
INCBIN "data/tilesets/tower_attributes.bin"


SECTION "Tileset Data 11", ROMX

TilesetCaveAttr::
TilesetDarkCaveAttr::
INCBIN "data/tilesets/cave_attributes.bin"

TilesetParkAttr::
INCBIN "data/tilesets/park_attributes.bin"

TilesetRuinsOfAlphAttr::
INCBIN "data/tilesets/ruins_of_alph_attributes.bin"

TilesetRadioTowerAttr::
INCBIN "data/tilesets/radio_tower_attributes.bin"

TilesetUndergroundAttr::
INCBIN "data/tilesets/underground_attributes.bin"

TilesetIcePathAttr::
INCBIN "data/tilesets/ice_path_attributes.bin"

TilesetForestAttr::
INCBIN "data/tilesets/forest_attributes.bin"

TilesetBetaWordRoomAttr::
INCBIN "data/tilesets/beta_word_room_attributes.bin"

TilesetHoOhWordRoomAttr::
INCBIN "data/tilesets/ho_oh_word_room_attributes.bin"

TilesetKabutoWordRoomAttr::
INCBIN "data/tilesets/kabuto_word_room_attributes.bin"

TilesetKanjoAttr::
INCBIN "data/tilesets/kanjo_attributes.bin"

SECTION "Tileset Data 12", ROMX

TilesetIcePath2GFX::
INCBIN "gfx/tilesets/ice_path_2.2bpp.lz"

TilesetIcePath2Coll::
INCLUDE "data/tilesets/ice_path_2_collision.asm"

TilesetIcePath2Meta::
INCBIN "data/tilesets/ice_path_2_metatiles.bin"

TilesetIcePath2Attr::
INCBIN "data/tilesets/ice_path_2_attributes.bin"

TilesetOmanyteWordRoomAttr::
INCBIN "data/tilesets/omanyte_word_room_attributes.bin"

TilesetAerodactylWordRoomAttr::
INCBIN "data/tilesets/aerodactyl_word_room_attributes.bin"

SECTION "Tileset Data 13", ROMX

TilesetSeviiGFX::
INCBIN "gfx/tilesets/sevii.2bpp.lz"

TilesetSeviiMeta::
INCBIN "data/tilesets/sevii_metatiles.bin"

TilesetSeviiColl::
INCLUDE "data/tilesets/sevii_collision.asm"

TilesetSeviiAttr::
INCBIN "data/tilesets/sevii_attributes.bin"

SECTION "Tileset Data 14", ROMX

TilesetSeviiForestGFX::
INCBIN "gfx/tilesets/sevii_forest.2bpp.lz"

TilesetSeviiForestMeta::
INCBIN "data/tilesets/sevii_forest_metatiles.bin"

TilesetSeviiForestColl::
INCLUDE "data/tilesets/sevii_forest_collision.asm"

TilesetSeviiForestAttr::
INCBIN "data/tilesets/sevii_forest_attributes.bin"

SECTION "Tileset Data 15", ROMX

TilesetUnderwaterGFX::
INCBIN "gfx/tilesets/underwater.2bpp.lz"

TilesetUnderwaterMeta::
INCBIN "data/tilesets/underwater_metatiles.bin"

TilesetUnderwaterColl::
INCLUDE "data/tilesets/underwater_collision.asm"

TilesetUnderwaterAttr::
INCBIN "data/tilesets/underwater_attributes.bin"

SECTION "Tileset Data 16", ROMX

TilesetSeviiFourGFX::
INCBIN "gfx/tilesets/sevii_four.2bpp.lz"

TilesetSeviiFourMeta::
INCBIN "data/tilesets/sevii_four_metatiles.bin"

TilesetSeviiFourColl::
INCLUDE "data/tilesets/sevii_four_collision.asm"

TilesetSeviiFourAttr::
INCBIN "data/tilesets/sevii_four_attributes.bin"

SECTION "Tileset Data 17", ROMX

TilesetSeviiThreeGFX::
INCBIN "gfx/tilesets/sevii_three.2bpp.lz"

TilesetSeviiThreeMeta::
INCBIN "data/tilesets/sevii_three_metatiles.bin"

TilesetSeviiThreeColl::
INCLUDE "data/tilesets/sevii_three_collision.asm"

TilesetSeviiThreeAttr::
INCBIN "data/tilesets/sevii_three_attributes.bin"

SECTION "Tileset Data 18", ROMX

TilesetSeviiTwoGFX::
INCBIN "gfx/tilesets/sevii_two.2bpp.lz"

TilesetSeviiTwoMeta::
INCBIN "data/tilesets/sevii_two_metatiles.bin"

TilesetSeviiTwoColl::
INCLUDE "data/tilesets/sevii_two_collision.asm"

TilesetSeviiTwoAttr::
INCBIN "data/tilesets/sevii_two_attributes.bin"

SECTION "Tileset Data 19", ROMX

TilesetSeviiOneGFX::
INCBIN "gfx/tilesets/sevii_one.2bpp.lz"

TilesetSeviiOneMeta::
INCBIN "data/tilesets/sevii_one_metatiles.bin"

TilesetSeviiOneColl::
INCLUDE "data/tilesets/sevii_one_collision.asm"

TilesetSeviiOneAttr::
INCBIN "data/tilesets/sevii_one_attributes.bin"

SECTION "Tileset Data 20", ROMX

TilesetSeviiFiveGFX::
INCBIN "gfx/tilesets/sevii_five.2bpp.lz"

TilesetSeviiFiveMeta::
INCBIN "data/tilesets/sevii_five_metatiles.bin"

TilesetSeviiFiveColl::
INCLUDE "data/tilesets/sevii_five_collision.asm"

TilesetSeviiFiveAttr::
INCBIN "data/tilesets/sevii_five_attributes.bin"

SECTION "Tileset Data 21", ROMX

TilesetSeviiSixGFX::
INCBIN "gfx/tilesets/sevii_six.2bpp.lz"

TilesetSeviiSixMeta::
INCBIN "data/tilesets/sevii_six_metatiles.bin"

TilesetSeviiSixColl::
INCLUDE "data/tilesets/sevii_six_collision.asm"

TilesetSeviiSixAttr::
INCBIN "data/tilesets/sevii_six_attributes.bin"

SECTION "Tileset Data 22", ROMX

TilesetSeviiSevenGFX::
INCBIN "gfx/tilesets/sevii_seven.2bpp.lz"

TilesetSeviiSevenMeta::
INCBIN "data/tilesets/sevii_seven_metatiles.bin"

TilesetSeviiSevenColl::
INCLUDE "data/tilesets/sevii_seven_collision.asm"

TilesetSeviiSevenAttr::
INCBIN "data/tilesets/sevii_seven_attributes.bin"

SECTION "Tileset Data 23", ROMX

TilesetJohto38GFX::
INCBIN "gfx/tilesets/johto_38.2bpp.lz"

TilesetJohto38Meta::
INCBIN "data/tilesets/johto_38_metatiles.bin"

TilesetJohto38Coll::
INCLUDE "data/tilesets/johto_38_collision.asm"

TilesetJohto38Attr::
INCBIN "data/tilesets/johto_38_attributes.bin"

SECTION "Tileset Data 24", ROMX

TilesetJohto29GFX::
INCBIN "gfx/tilesets/johto_29.2bpp.lz"

TilesetJohto29Meta::
INCBIN "data/tilesets/johto_29_metatiles.bin"

TilesetJohto29Coll::
INCLUDE "data/tilesets/johto_29_collision.asm"

TilesetJohto29Attr::
INCBIN "data/tilesets/johto_29_attributes.bin"

SECTION "Tileset Data 25", ROMX

TilesetJohto30GFX::
INCBIN "gfx/tilesets/johto_30.2bpp.lz"

TilesetJohto30Meta::
INCBIN "data/tilesets/johto_30_metatiles.bin"

TilesetJohto30Coll::
INCLUDE "data/tilesets/johto_30_collision.asm"

TilesetJohto30Attr::
INCBIN "data/tilesets/johto_30_attributes.bin"

SECTION "Tileset Data 26", ROMX

TilesetCherryNewGFX::
INCBIN "gfx/tilesets/cherry_new.2bpp.lz"

TilesetCherryNewMeta::
INCBIN "data/tilesets/cherry_new_metatiles.bin"

TilesetCherryNewColl::
INCLUDE "data/tilesets/cherry_new_collision.asm"

SECTION "Tileset Data 27", ROMX

TilesetCherryNewAttr::
INCBIN "data/tilesets/cherry_new_attributes.bin"

TilesetCherryFerryGFX::
INCBIN "gfx/tilesets/cherry_ferry.2bpp.lz"

TilesetCherryFerryMeta::
INCBIN "data/tilesets/cherry_ferry_metatiles.bin"

TilesetCherryFerryColl::
INCLUDE "data/tilesets/cherry_ferry_collision.asm"

TilesetCherryFerryAttr::
INCBIN "data/tilesets/cherry_ferry_attributes.bin"

SECTION "Tileset Data 28", ROMX

TilesetJohto45GFX::
INCBIN "gfx/tilesets/johto_45.2bpp.lz"

TilesetJohto45Meta::
INCBIN "data/tilesets/johto_45_metatiles.bin"

TilesetJohto45Coll::
INCLUDE "data/tilesets/johto_45_collision.asm"

TilesetJohto45Attr::
INCBIN "data/tilesets/johto_45_attributes.bin"
