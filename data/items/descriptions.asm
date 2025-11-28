ItemDescriptions:
; entries correspond to item ids
	dw PokeBallDesc
	dw GreatBallDesc
	dw UltraBallDesc
	dw MasterBallDesc
	dw PotionDesc
	dw SuperPotionDesc
	dw HyperPotionDesc
	dw FullHealDesc
	dw FullRestoreDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw ElixerDesc
	dw MaxElixerDesc
	dw RepelDesc
	dw MaxRepelDesc
	dw EscapeRopeDesc
	dw RareCandyDesc
	dw PokeDollDesc
	dw FlowerMailDesc
	dw GreenTeaDesc
	dw EnergyRootDesc
	dw SootheBalmDesc
	dw RevivalHerbDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw RageCandyBarDesc
	dw MoomooMilkDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw CalciumDesc
	dw PPUpDesc
	dw FireStoneDesc
	dw ThunderStoneDesc
	dw WaterStoneDesc
	dw LeafStoneDesc
	dw SunStoneDesc
	dw MoonStoneDesc
	dw ShinyStoneDesc
	dw DuskStoneDesc
	dw IceStoneDesc
	dw FireShardDesc
	dw ThunderShardDesc
	dw WaterShardDesc
	dw LeafShardDesc
	dw IceShardDesc
	dw PinkBowDesc
	dw CharcoalDesc
	dw MysticWaterDesc
	dw MiracleSeedDesc
	dw SilverPowderDesc
	dw SharpBeakDesc
	dw BlackbeltDesc
	dw HardStoneDesc
	dw SoftSandDesc
	dw PoisonBarbDesc
	dw MagnetDesc
	dw NeverMeltIceDesc
	dw SpellTagDesc
	dw TwistedSpoonDesc
	dw BlackGlassesDesc
	dw MetalCoatDesc
	dw DragonScaleDesc
	dw KingsRockDesc
	dw UpGradeDesc
	dw DubiousDiscDesc
	dw RazorFangDesc
	dw RazorClawDesc
	dw TriStoneDesc
	dw BluApricornDesc
	dw GrnApricornDesc
	dw YlwApricornDesc
	dw RedApricornDesc
	dw WhtApricornDesc
	dw BlkApricornDesc
	dw PnkApricornDesc
	dw LureBallDesc
	dw FriendBallDesc
	dw MoonBallDesc
	dw LevelBallDesc
	dw FastBallDesc
	dw HeavyBallDesc
	dw LoveBallDesc
	dw ParkBallDesc
	dw OranBerryDesc
	dw ChestoBerryDesc
	dw RawstBerryDesc
	dw AspearBerryDesc
	dw CheriBerryDesc
	dw PechaBerryDesc
	dw LeppaBerryDesc
	dw PersimBerryDesc
	dw LumBerryDesc
	dw SitrusBerryDesc
	dw BerryJuiceDesc
	dw PurpleJuiceDesc
	dw GreenJuiceDesc
	dw YellowJuiceDesc
	dw RedJuiceDesc
	dw PinkJuiceDesc
	dw SweetCiderDesc
	dw PrismShakeDesc
	dw TonicWaterDesc
	dw RevivaladeDesc
	dw FruitPunchDesc
	dw RareSodaDesc
	dw PechaScarfDesc
	dw LimberBandDesc
	dw InsomniscopeDesc
	dw PersimBandDesc
	dw MagmaVestDesc
	dw FrostRingDesc
	dw ScopeLensDesc
	dw MuscleBandDesc
	dw LightArmorDesc
	dw SwiftBootsDesc
	dw WiseGlassesDesc
	dw PsyShieldDesc
	dw WideLensDesc
	dw BrightpowderDesc
	dw LifeOrbDesc
	dw LeftoversDesc
	dw QuickClawDesc
	dw ExpShareDesc
	dw AmuletCoinDesc
	dw FocusBandDesc
	dw CleanseTagDesc
	dw LuckyEggDesc
	dw SmokeBallDesc
	dw StickDesc
	dw ThickClubDesc
	dw LightBallDesc
	dw EverStoneDesc
	dw BerserkGeneDesc
	dw SacredAshDesc
	dw GoldOreDesc
	dw DomeFossilDesc
	dw HelixFossilDesc
	dw OldAmberDesc
	dw SlowpokeTailDesc
	dw RareMushroomDesc
	dw GoldLeafDesc
	dw PearlDesc
	dw SilverScaleDesc
	dw ShoalShellDesc
	dw StarPieceDesc
	dw BottleCapDesc
	dw GoldBandDesc
	dw BicycleDesc
	dw OldRodDesc
	dw GoodRodDesc
	dw SuperRodDesc
	dw ItemfinderDesc
	dw CoinCaseDesc
	dw MysteryEggDesc
	dw BlueCardDesc
	dw SquirtBottleDesc
	dw BasementKeyDesc
	dw RedScaleDesc
	dw SecretPotionDesc
	dw CardKeyDesc
	dw SSTicketDesc
	dw MachinePartDesc
	dw LostItemDesc
	dw PassDesc
	dw ClearBellDesc
	dw RainbowWingDesc
	dw SilverWingDesc
	dw GSBallDesc
	dw FrozenOrbDesc
	dw StaticOrbDesc
	dw FieryOrbDesc
	dw TeruSama1Desc
	dw TeruSama2Desc
	dw TeruSama3Desc
	dw TeruSama4Desc
	dw TeruSama5Desc
	dw TeruSama6Desc
	dw TeruSama7Desc
	dw TeruSama8Desc
	dw TeruSama9Desc
	dw TeruSama10Desc


PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

UltraBallDesc:
	db   "A BALL with a high"
	next "rate of success.@"

MasterBallDesc:
	db   "The best BALL. It"
	next "never misses.@"

PotionDesc:
	db   "Restores #MON"
	next "HP by 30.@"

SuperPotionDesc:
	db   "Restores #MON"
	next "HP by 75.@"

HyperPotionDesc:
	db   "Restores #MON"
	next "HP by 200.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

FullRestoreDesc:
	db   "Fully restores HP"
	next "& status.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

ElixerDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

MaxElixerDesc:
	db   "Fully restores the"
	next "PP of one #MON.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RareCandyDesc:
	db   "Raises level of a"
	next "#MON by one.@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

FlowerMailDesc:
	db   "#MON-print"
	next "MAIL. (HOLD)@"

GreenTeaDesc:
	db   "An herbal tea."
	next "Restores HP.@"

EnergyRootDesc:
	db   "Restores #MON"
	next "HP by 200. Bitter.@"

SootheBalmDesc:
	db   "An herbal balm."
	next "Heals status.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

RageCandyBarDesc:
	db   "Restores #MON"
	next "HP by 20.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

HPUpDesc:
	db   "Raises the HP of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

CalciumDesc:
	db   "Ups SPECIAL stats"
	next "of one #MON.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

FireStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ThunderStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

WaterStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

LeafStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

SunStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

MoonStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ShinyStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

DuskStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"
	
IceStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

FireShardDesc:
	db   "Red shard of"
	next "unknown origin.@"

ThunderShardDesc:
	db   "Yellow shard of"
	next "unknown origin.@"

WaterShardDesc:
	db   "Blue shard of"
	next "unknown origin.@"

LeafShardDesc:
	db   "Green shard of"
	next "unknown origin.@"
	
IceShardDesc:
	db   "White shard of"
	next "unknown origin.@"

PinkBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves. (HOLD)@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves. (HOLD)@"

DragonScaleDesc:
	db   "A rare dragon-type"
	next "item.@"

KingsRockDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

UpGradeDesc:
	db   "A mysterious box"
	next "made by SILPH CO.@"

DubiousDiscDesc:
	db   "A shady disc of"
	next "uncertain origin.@"

RazorFangDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

RazorClawDesc:
	db   "Ups critical hit"
	next "chance. (HOLD)@"

TriStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

BluApricornDesc:
	db   "A blue APRICORN.@"

GrnApricornDesc:
	db   "A green APRICORN.@"

YlwApricornDesc:
	db   "A yellow APRICORN.@"

RedApricornDesc:
	db   "A red APRICORN.@"

WhtApricornDesc:
	db   "A white APRICORN.@"

BlkApricornDesc:
	db   "A black APRICORN."
	next "@"

PnkApricornDesc:
	db   "A pink APRICORN."
	next "@"

LureBallDesc:
	db   "A BALL for #MON"
	next "hooked by a ROD.@"

FriendBallDesc:
	db   "A BALL that makes"
	next "#MON friendly.@"

MoonBallDesc:
	db   "A BALL for MOON"
	next "STONE evolvers.@"

LevelBallDesc:
	db   "A BALL for lower-"
	next "level #MON.@"

FastBallDesc:
	db   "A BALL for catch-"
	next "ing fast #MON.@"

HeavyBallDesc:
	db   "A BALL for catch-"
	next "ing heavy #MON.@"

LoveBallDesc:
	db   "For catching the"
	next "opposite gender.@"

ParkBallDesc:
	db   "The Bug-Catching"
	next "Contest BALL.@"

OranBerryDesc:
	db   "A self-restore"
	next "item. (20HP, HOLD)@"

ChestoBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

AspearBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

RawstBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

CheriBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

PechaBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

LeppaBerryDesc:
	db   "A self-restore"
	next "for PP. (HOLD)@"

PersimBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

LumBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

SitrusBerryDesc:
	db   "A self-restore"
	next "item. (50HP, HOLD)@"

BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 40.@"

PurpleJuiceDesc:
	db   "A cooling drink."
	next "Raises HP.@"	

GreenJuiceDesc:
	db   "A bitter drink."
	next "Raises SPC.@"

YellowJuiceDesc:
	db   "A tangy drink."
	next "Raises DEF.@"

RedJuiceDesc:
	db   "A fruity drink."
	next "Raises ATK.@"

PinkJuiceDesc:
	db   "A sweet drink."
	next "Raises SPD.@"
	
SweetCiderDesc:
	db   "Restores PP of all"
	next "moves by 5.@"
	
PrismShakeDesc:
	db   "A colorful drink."
	next "Raises happiness.@"

TonicWaterDesc:
	db   "Cures status for"
	next "the whole party.@"

RevivaladeDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

FruitPunchDesc:
	db   "Restores #MON"
	next "HP by 100.@"

RareSodaDesc:
	db   "A fizzy drink."
	next "Raises LV by 2.@"

PechaScarfDesc:
	db   "Prevents POISON."
	next "(HOLD)@"
	
LimberBandDesc:
	db   "Prevents PARALYSIS"
	next "(HOLD)@"

InsomniscopeDesc:
	db   "Prevents SLEEP."
	next "(HOLD)@"

PersimBandDesc:
	db   "Prevents CONFUSION"
	next "(HOLD)@"

MagmaVestDesc:
	db   "Prevents FREEZE."
	next "(HOLD)@"
	
FrostRingDesc:
	db   "Prevents BURN."
	next "(HOLD)@"

ScopeLensDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

MuscleBandDesc:
	db   "Raises ATTACK."
	next "(HOLD)@"

LightArmorDesc:
	db   "Raises DEFENSE."
	next "(HOLD)@"

SwiftBootsDesc:
	db   "Raises SPEED."
	next "(HOLD)@"

WiseGlassesDesc:
	db   "Raises SPECIAL"
	next "ATTACK. (HOLD)@"

PsyShieldDesc:
	db   "Raises SPECIAL"
	next "DEFENSE. (HOLD)@"

WideLensDesc:
	db   "Raises accuracy."
	next "(HOLD)@"

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

LifeOrbDesc:
	db   "Boosts power at"
	next "cost of HP. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "Points. (HOLD)@"

AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings. (HOLD)@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

StickDesc:
	db   "An ordinary stick."
	next "Sell low.@"

ThickClubDesc:
	db   "A bone of some"
	next "sort. Sell low.@"

LightBallDesc:
	db   "An odd, electrical"
	next "orb. (HOLD)@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

BerserkGeneDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted #MON.@"

GoldOreDesc:
	db   "Lump of raw gold."
	next "Needs refining.@"

DomeFossilDesc:
	db   "Prehistoric shell"
	next "of a #MON.@"

HelixFossilDesc:
	db   "Prehistoric shell"
	next "of a #MON.@"

OldAmberDesc:
	db   "Prehistoric, foss-"
	next "ilized resin.@"

SlowpokeTailDesc:
	db   "Very tasty. Sell"
	next "high.@"

RareMushroomDesc:
	db   "A huge mushroom."
	next "Sell high.@"

GoldLeafDesc:
	db   "A strange, gold-"
	next "colored leaf.@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

SilverScaleDesc:
	db   "A silvery scale."
	next "Sell low.@"

ShoalShellDesc:
	db   "A pretty seashell."
	next "Sell low.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell high.@"

BottleCapDesc:
	db   "A silver cap. Some"
	next "-one may want it.@"

GoldBandDesc:
	db   "It seems to be a"
	next "'lost' treasure.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

OldRodDesc:
	db   "Use by water to"
	next "fish for #MON.@"

GoodRodDesc:
	db   "A good ROD for"
	next "catching #MON.@"

SuperRodDesc:
	db   "The best ROD for"
	next "catching #MON.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

MysteryEggDesc:
	db   "An EGG obtained"
	next "from MR.#MON.@"

BlueCardDesc:
	db   "Card to save"
	next "points.@"

SquirtBottleDesc:
	db   "A bottle used for"
	next "watering plants.@"

BasementKeyDesc:
	db   "Opens doors.@"

RedScaleDesc:
	db   "A scale from the"
	next "red GYARADOS.@"

SecretPotionDesc:
	db   "Fully heals any"
	next "#MON.@"

CardKeyDesc:
	db   "Opens shutters in"
	next "the RADIO TOWER.@"

SSTicketDesc:
	db   "A ticket for the"
	next "S.S. AQUA.@" ; (Or Anne.)

MachinePartDesc:
	db   "A machine part for"
	next "the POWER PLANT.@"

LostItemDesc:
	db   "The # DOLL lost"
	next "by the COPYCAT.@"

PassDesc:
	db   "A ticket for the"
	next "MAGNET TRAIN.@"

ClearBellDesc:
	db   "Makes a gentle"
	next "ringing.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

SilverWingDesc:
	db   "A strange, silver-"
	next "colored feather.@"

GSBallDesc:
	db   "The mysterious"
	next "BALL.@"

StaticOrbDesc:
	db   "?@"
	
FrozenOrbDesc:
	db   "?@"
	
FieryOrbDesc:
	db   "?@"

TeruSama1Desc:
	db   "?@"

TeruSama2Desc:
	db   "?@"

TeruSama3Desc:
	db   "?@"

TeruSama4Desc:
	db   "?@"

TeruSama5Desc:
	db   "?@"

TeruSama6Desc:
	db   "?@"

TeruSama7Desc:
	db   "?@"

TeruSama8Desc:
	db   "?@"

TeruSama9Desc:
	db   "?@"

TeruSama10Desc:
	db   "?@"

TeruSama11Desc:
	db   "?@"
	