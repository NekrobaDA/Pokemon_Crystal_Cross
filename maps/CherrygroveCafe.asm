JUICE_PRICE EQU 1200
SODA_PRICE  EQU 5000
SHAKE_PRICE EQU 1050
BERRYJUICE_PRICE EQU 375
FRUITPUNCH_PRICE EQU 850
REVIVALADE_PRICE EQU 1275
TONIC_PRICE EQU 1500
CIDER_PRICE EQU 750
	
	object_const_def
	const CHERRYGROVECAFE_CLERK

CherrygroveCafe_MapScripts:
	def_scene_scripts

	def_callbacks
	
CherrygroveCafeClerkScript:
	opentext
	writetext CCWelcomeText
	promptbutton
	special CherrygroveCafeBerryScript
	ifequal 1, .AspearMenu
	ifequal 2, .CheriMenu
	ifequal 3, .ChestoMenu
	ifequal 4, .LeppaMenu
	ifequal 5, .LumMenu
	ifequal 6, .OranMenu
	ifequal 7, .PechaMenu
	ifequal 8, .PersimMenu
	ifequal 9, .RawstMenu
	ifequal 10, .SitrusMenu
	sjump CancelScriptCC
	end
	
.AspearMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearAspearYellowJuice
	ifequal 2, .AspearCheriPrismShake
	ifequal 3, .AspearChestoPrismShake
	ifequal 4, .AspearLeppaPrismShake
	ifequal 5, .AspearLumYellowJuice
	ifequal 6, .AspearOranBerryJuice
	ifequal 7, .AspearPechaPrismShake
	ifequal 8, .AspearPersimPrismShake
	ifequal 9, .AspearRawstPrismShake
	ifequal 10, .AspearSitrusFruitPunch
	sjump CancelScriptCC
	end

.CheriMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearCheriPrismShake
	ifequal 2, .CheriCheriRedJuice
	ifequal 3, .CheriChestoPrismShake
	ifequal 4, .CheriLeppaPrismShake
	ifequal 5, .CheriLumRedJuice
	ifequal 6, .CheriOranBerryJuice
	ifequal 7, .CheriPechaPrismShake
	ifequal 8, .CheriPersimPrismShake
	ifequal 9, .CheriRawstPrismShake
	ifequal 10, .CheriSitrusFruitPunch
	sjump CancelScriptCC
	end

.ChestoMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearChestoPrismShake
	ifequal 2, .CheriChestoPrismShake
	ifequal 3, .ChestoChestoPurpleJuice
	ifequal 4, .ChestoLeppaPrismShake
	ifequal 5, .ChestoLumPurpleJuice
	ifequal 6, .ChestoOranBerryJuice
	ifequal 7, .ChestoPechaPrismShake
	ifequal 8, .ChestoPersimPrismShake
	ifequal 9, .ChestoRawstPrismShake
	ifequal 10, .ChestoSitrusFruitPunch
	sjump CancelScriptCC
	end

.LeppaMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearLeppaPrismShake
	ifequal 2, .CheriLeppaPrismShake
	ifequal 3, .ChestoLeppaPrismShake
	ifequal 4, .LeppaLeppaSweetCider
	ifequal 5, .LeppaLumPrismShake
	ifequal 6, .LeppaOranBerryJuice
	ifequal 7, .LeppaPechaPrismShake
	ifequal 8, .LeppaPersimPrismShake
	ifequal 9, .LeppaRawstPrismShake
	ifequal 10, .LeppaSitrusFruitPunch
	sjump CancelScriptCC
	end

.LumMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearLumYellowJuice
	ifequal 2, .CheriLumRedJuice
	ifequal 3, .ChestoLumPurpleJuice
	ifequal 4, .LeppaLumPrismShake
	ifequal 5, .LumLumTonicWater
	ifequal 6, .LumOranBerryJuice
	ifequal 7, .LumPechaPinkJuice
	ifequal 8, .LumPersimPrismShake
	ifequal 9, .LumRawstGreenJuice
	ifequal 10, .LumSitrusRareSoda
	sjump CancelScriptCC
	end

.OranMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearOranBerryJuice
	ifequal 2, .CheriOranBerryJuice
	ifequal 3, .ChestoOranBerryJuice
	ifequal 4, .LeppaOranBerryJuice
	ifequal 5, .LumOranBerryJuice
	ifequal 6, .OranOranBerryJuice
	ifequal 7, .OranPechaBerryJuice
	ifequal 8, .OranPersimBerryJuice
	ifequal 9, .OranRawstBerryJuice
	ifequal 10, .OranSitrusFruitPunch
	sjump CancelScriptCC
	end
	
.PechaMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearPechaPrismShake
	ifequal 2, .CheriPechaPrismShake
	ifequal 3, .ChestoPechaPrismShake
	ifequal 4, .LeppaPechaPrismShake
	ifequal 5, .LumPechaPinkJuice
	ifequal 6, .OranPechaBerryJuice
	ifequal 7, .PechaPechaPinkJuice
	ifequal 8, .PechaPersimPrismShake
	ifequal 9, .PechaRawstPrismShake
	ifequal 10, .PechaSitrusFruitPunch
	sjump CancelScriptCC
	end
	
.PersimMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearPersimPrismShake
	ifequal 2, .CheriPersimPrismShake
	ifequal 3, .ChestoPersimPrismShake
	ifequal 4, .LeppaPersimPrismShake
	ifequal 5, .LumPersimPrismShake
	ifequal 6, .OranPersimBerryJuice
	ifequal 7, .PechaPersimPrismShake
	ifequal 8, .PersimPersimPrismShake
	ifequal 9, .PersimRawstPrismShake
	ifequal 10, .PersimSitrusFruitPunch
	sjump CancelScriptCC
	end
	
.RawstMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearRawstPrismShake
	ifequal 2, .CheriRawstPrismShake
	ifequal 3, .ChestoRawstPrismShake
	ifequal 4, .LeppaRawstPrismShake
	ifequal 5, .LumRawstGreenJuice
	ifequal 6, .OranRawstBerryJuice
	ifequal 7, .PechaRawstPrismShake
	ifequal 8, .PersimRawstPrismShake
	ifequal 9, .RawstRawstGreenJuice
	ifequal 10, .RawstSitrusFruitPunch
	sjump CancelScriptCC
	end
	
.SitrusMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearSitrusFruitPunch
	ifequal 2, .CheriSitrusFruitPunch
	ifequal 3, .ChestoSitrusFruitPunch
	ifequal 4, .LeppaSitrusFruitPunch
	ifequal 5, .LumSitrusRareSoda
	ifequal 6, .OranSitrusFruitPunch
	ifequal 7, .PechaSitrusFruitPunch
	ifequal 8, .PersimSitrusFruitPunch
	ifequal 9, .RawstSitrusFruitPunch
	ifequal 10, .SitrusSitrusRevivalade
	sjump CancelScriptCC
	end

.CheriOranBerryJuice
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem ORAN_BERRY
	sjump BerryJuice

.ChestoChestoPurpleJuice
	checkitem CHESTO_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY, 2
	sjump PurpleJuice

.LeppaOranBerryJuice
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem ORAN_BERRY
	sjump BerryJuice

.OranPechaBerryJuice
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem PECHA_BERRY
	sjump BerryJuice

.CheriCheriRedJuice
	checkitem CHERI_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY, 2
	sjump RedJuice

.CheriLeppaPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem LEPPA_BERRY
	sjump PrismShake

.LeppaLeppaSweetCider
	checkitem LEPPA_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeciderprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, CIDER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY, 2
	sjump SweetCider

.AspearAspearYellowJuice
	checkitem ASPEAR_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY, 2
	sjump YellowJuice

.AspearSitrusFruitPunch
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch

.SitrusSitrusRevivalade
	checkitem SITRUS_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willberevivaladeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, REVIVALADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem SITRUS_BERRY, 2
	sjump Revivalade

.PechaPechaPinkJuice
	checkitem PECHA_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PECHA_BERRY, 2
	sjump PinkJuice

.PechaPersimPrismShake
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PECHA_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake

.PersimPersimPrismShake
	checkitem PERSIM_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PERSIM_BERRY, 2
	sjump PrismShake

.LumOranBerryJuice
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem ORAN_BERRY
	sjump BerryJuice
	
.LumRawstGreenJuice
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem RAWST_BERRY
	sjump GreenJuice
	
.OranOranBerryJuice
	checkitem ORAN_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY, 2
	sjump BerryJuice
	
.OranRawstBerryJuice
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem RAWST_BERRY
	sjump BerryJuice

.RawstRawstGreenJuice
	checkitem RAWST_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem RAWST_BERRY, 2
	sjump GreenJuice
	
.LumSitrusRareSoda
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbesodaprice
	yesorno
	iffalse CancelScriptCC

	checkmoney YOUR_MONEY, SODA_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem SITRUS_BERRY
	sjump RareSoda
	
.AspearCheriPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem CHERI_BERRY
	sjump PrismShake
	
.AspearChestoPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem CHESTO_BERRY
	sjump PrismShake
	
.AspearLeppaPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem LEPPA_BERRY
	sjump PrismShake
	
.AspearLumYellowJuice
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem LUM_BERRY
	sjump YellowJuice
	
.AspearOranBerryJuice
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem ORAN_BERRY
	sjump BerryJuice
	
.AspearPechaPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem PECHA_BERRY
	sjump PrismShake
	
.AspearPersimPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake
	
.AspearRawstPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem RAWST_BERRY
	sjump PrismShake
	
.CheriChestoPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem CHESTO_BERRY
	sjump PrismShake
	
.CheriLumRedJuice
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem LUM_BERRY
	sjump RedJuice
	
.CheriPechaPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem PECHA_BERRY
	sjump PrismShake
	
.CheriPersimPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake
	
.CheriRawstPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem RAWST_BERRY
	sjump PrismShake
	
.CheriSitrusFruitPunch
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch
	
.ChestoLeppaPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem LEPPA_BERRY
	sjump PrismShake
	
.ChestoLumPurpleJuice
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem LUM_BERRY
	sjump PurpleJuice
	
.ChestoOranBerryJuice
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem ORAN_BERRY
	sjump BerryJuice
	
.ChestoPechaPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem PECHA_BERRY
	sjump PrismShake
	
.ChestoPersimPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake
	
.ChestoRawstPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem RAWST_BERRY
	sjump PrismShake
	
.ChestoSitrusFruitPunch
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch
	
.LeppaLumPrismShake
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem LUM_BERRY
	sjump PrismShake
	
.LeppaPechaPrismShake
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem PECHA_BERRY
	sjump PrismShake
	
.LeppaPersimPrismShake
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake
	
.LeppaRawstPrismShake
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem RAWST_BERRY
	sjump PrismShake
	
.LeppaSitrusFruitPunch
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch
	
.LumLumTonicWater
	checkitem LUM_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbetonicprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, TONIC_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY, 2
	sjump TonicWater
	
.LumPechaPinkJuice
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem PECHA_BERRY
	sjump PinkJuice
	
.LumPersimPrismShake
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake
	
.OranPersimBerryJuice
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem PERSIM_BERRY
	sjump BerryJuice
	
.OranSitrusFruitPunch
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch
	
.PechaRawstPrismShake
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PECHA_BERRY
	takeitem RAWST_BERRY
	sjump PrismShake
	
.PechaSitrusFruitPunch
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PECHA_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch
	
.PersimRawstPrismShake
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PERSIM_BERRY
	takeitem RAWST_BERRY
	sjump PrismShake
	
.PersimSitrusFruitPunch
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PERSIM_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch

.RawstSitrusFruitPunch
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbefruitpunchprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, FRUITPUNCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem RAWST_BERRY
	takeitem SITRUS_BERRY
	sjump FruitPunch
	
.NotEnoughMoney
	opentext
	writetext CCNeedMoreMoneyText
	waitbutton
	closetext
	end
	
.DontHaveBerries
	opentext
	writetext CCOutOfBerriesText
	waitbutton
	closetext
	end
	
BerryJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, BERRYJUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem BERRY_JUICE
	promptbutton
	closetext
	end
	
FruitPunch:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, FRUITPUNCH_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem FRUIT_PUNCH
	promptbutton
	closetext
	end
	
PurpleJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem PURPLE_JUICE
	promptbutton
	closetext
	end

RedJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem RED_JUICE
	promptbutton
	closetext
	end

YellowJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem YELLOW_JUICE
	promptbutton
	closetext
	end

PinkJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem PINK_JUICE
	promptbutton
	closetext
	end

GreenJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem GREEN_JUICE
	promptbutton
	closetext
	end

RareSoda:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, SODA_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem RARE_SODA
	promptbutton
	closetext
	end

PrismShake:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, SHAKE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem PRISM_SHAKE
	promptbutton
	closetext
	end
	
SweetCider:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, CIDER_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem SWEET_CIDER
	promptbutton
	closetext
	end
	
TonicWater:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, TONIC_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem TONIC_WATER
	promptbutton
	closetext
	end
	
Revivalade:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, REVIVALADE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem REVIVALADE
	promptbutton
	closetext
	end
	
CCNeedMoreMoneyText:
	text "Sorry, but you"
	line "need more money."
	done
	
CCOutOfBerriesText:
	text "You seem to be"
	line "out of berries."
	done
	
ComeAgainTextCC:
	text "We hope to see you"
	line "again!"
	done
	
ComeAgainTextCC2:
	text "Here's your drink."
	line "Come again!"
	done
	
CCWelcomeText:
	text "Welcome to the"
	line "Cherrygrove Cafe."
	
	para "Which berries"
	line "would you like"
	
	para "to use to mix"
	line "a drink today?"
	done

willbeberryjuiceprice:
	text "That'll be ¥375."
	line "Is that okay?"
	done
	
willbefruitpunchprice:
	text "That'll be ¥850."
	line "Is that okay?"
	done

willbejuiceprice:
	text "That'll be ¥1200."
	line "Is that okay?"
	done
	
willbesodaprice:
	text "That'll be ¥5000."
	line "Is that okay?"
	done

willbeshakeprice:
	text "That'll be ¥1050."
	line "Is that okay?"
	done
	
willbeciderprice:
	text "That'll be ¥750."
	line "Is that okay?"
	done
	
willbetonicprice:
	text "That'll be ¥1500."
	line "Is that okay?"
	done
	
willberevivaladeprice:
	text "That'll be ¥1275."
	line "Is that okay?"
	done
	
ComeAgainScriptCC2:
	opentext
	writetext ComeAgainTextCC2
	waitbutton
	closetext
	end	

CancelScriptCC:
	opentext
	writetext ComeAgainTextCC
	waitbutton
	closetext
	end

CherrygroveCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, CHERRYGROVE_CITY, 11
	warp_event 3, 7, CHERRYGROVE_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event 7, 3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCafeClerkScript, -1
