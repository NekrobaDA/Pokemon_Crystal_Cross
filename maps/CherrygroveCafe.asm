JUICE_PRICE EQU 400
SODA_PRICE  EQU 20000
SHAKE_PRICE EQU 1000
BERRYJUICE_PRICE EQU 800
	
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
	ifequal 5, .AspearLumPrismShake
	ifequal 6, .AspearOranPrismShake
	ifequal 7, .AspearPechaPrismShake
	ifequal 8, .AspearPersimPrismShake
	ifequal 9, .AspearRawstPrismShake
	ifequal 10, .AspearSitrusYellowJuice
	sjump CancelScriptCC
	end

.CheriMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearCheriPrismShake
	ifequal 2, .CheriCheriRedJuice
	ifequal 3, .CheriChestoPrismShake
	ifequal 4, .CheriLeppaRedJuice
	ifequal 5, .CheriLumPrismShake
	ifequal 6, .CheriOranPurpleJuice
	ifequal 7, .CheriPechaPrismShake
	ifequal 8, .CheriPersimPrismShake
	ifequal 9, .CheriRawstPrismShake
	ifequal 10, .CheriSitrusPrismShake
	sjump CancelScriptCC
	end

.ChestoMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearChestoPrismShake
	ifequal 2, .CheriChestoPrismShake
	ifequal 3, .ChestoChestoPurpleJuice
	ifequal 4, .ChestoLeppaPrismShake
	ifequal 5, .ChestoLumPrismShake
	ifequal 6, .ChestoOranPrismShake
	ifequal 7, .ChestoPechaPrismShake
	ifequal 8, .ChestoPersimPrismShake
	ifequal 9, .ChestoRawstPrismShake
	ifequal 10, .ChestoSitrusPrismShake
	sjump CancelScriptCC
	end

.LeppaMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearLeppaPrismShake
	ifequal 2, .CheriLeppaRedJuice
	ifequal 3, .ChestoLeppaPrismShake
	ifequal 4, .LeppaLeppaRedJuice
	ifequal 5, .LeppaLumPrismShake
	ifequal 6, .LeppaOranPurpleJuice
	ifequal 7, .LeppaPechaPrismShake
	ifequal 8, .LeppaPersimPrismShake
	ifequal 9, .LeppaRawstPrismShake
	ifequal 10, .LeppaSitrusPrismShake
	sjump CancelScriptCC
	end

.LumMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearLumPrismShake
	ifequal 2, .CheriLumPrismShake
	ifequal 3, .ChestoLumPrismShake
	ifequal 4, .LeppaLumPrismShake
	ifequal 5, .LumLumPrismShake
	ifequal 6, .LumOranBlueJuice
	ifequal 7, .LumPechaPrismShake
	ifequal 8, .LumPersimPrismShake
	ifequal 9, .LumRawstBlueJuice
	ifequal 10, .LumSitrusRareSoda
	sjump CancelScriptCC
	end

.OranMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearOranPrismShake
	ifequal 2, .CheriOranPurpleJuice
	ifequal 3, .ChestoOranPrismShake
	ifequal 4, .LeppaOranPurpleJuice
	ifequal 5, .LumOranBlueJuice
	ifequal 6, .OranOranBlueJuice
	ifequal 7, .OranPechaPurpleJuice
	ifequal 8, .OranPersimPrismShake
	ifequal 9, .OranRawstBlueJuice
	ifequal 10, .OranSitrusBerryJuice
	sjump CancelScriptCC
	end
	
.PechaMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearPechaPrismShake
	ifequal 2, .CheriPechaPrismShake
	ifequal 3, .ChestoPechaPrismShake
	ifequal 4, .LeppaPechaPrismShake
	ifequal 5, .LumPechaPrismShake
	ifequal 6, .OranPechaPurpleJuice
	ifequal 7, .PechaPechaPinkJuice
	ifequal 8, .PechaPersimPinkJuice
	ifequal 9, .PechaRawstPrismShake
	ifequal 10, .PechaSitrusPrismShake
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
	ifequal 6, .OranPersimPrismShake
	ifequal 7, .PechaPersimPinkJuice
	ifequal 8, .PersimPersimPinkJuice
	ifequal 9, .PersimRawstPrismShake
	ifequal 10, .PersimSitrusPrismShake
	sjump CancelScriptCC
	end
	
.RawstMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearRawstPrismShake
	ifequal 2, .CheriRawstPrismShake
	ifequal 3, .ChestoRawstPrismShake
	ifequal 4, .LeppaRawstPrismShake
	ifequal 5, .LumRawstBlueJuice
	ifequal 6, .OranRawstBlueJuice
	ifequal 7, .PechaRawstPrismShake
	ifequal 8, .PersimRawstPrismShake
	ifequal 9, .RawstRawstBlueJuice
	ifequal 10, .RawstSitrusPrismShake
	sjump CancelScriptCC
	end
	
.SitrusMenu
	special CherrygroveCafeBerryScript
	closetext
	ifequal 1, .AspearSitrusYellowJuice
	ifequal 2, .CheriSitrusPrismShake
	ifequal 3, .ChestoSitrusPrismShake
	ifequal 4, .LeppaSitrusPrismShake
	ifequal 5, .LumSitrusRareSoda
	ifequal 6, .OranSitrusBerryJuice
	ifequal 7, .PechaSitrusPrismShake
	ifequal 8, .PersimSitrusPrismShake
	ifequal 9, .RawstSitrusPrismShake
	ifequal 10, .SitrusSitrusYellowJuice
	sjump CancelScriptCC
	end

.CheriOranPurpleJuice
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem ORAN_BERRY
	sjump PurpleJuice

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

.LeppaOranPurpleJuice
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem ORAN_BERRY
	sjump PurpleJuice

.OranPechaPurpleJuice
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem PECHA_BERRY
	sjump PurpleJuice

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

.CheriLeppaRedJuice
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem LEPPA_BERRY
	sjump RedJuice

.LeppaLeppaRedJuice
	checkitem LEPPA_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY, 2
	sjump RedJuice

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

.AspearSitrusYellowJuice
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem SITRUS_BERRY
	sjump YellowJuice

.SitrusSitrusYellowJuice
	checkitem SITRUS_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem SITRUS_BERRY, 2
	sjump YellowJuice

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

.PechaPersimPinkJuice
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PECHA_BERRY
	takeitem PERSIM_BERRY
	sjump PinkJuice

.PersimPersimPinkJuice
	checkitem PERSIM_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PERSIM_BERRY, 2
	sjump PinkJuice

.LumOranBlueJuice
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem ORAN_BERRY
	sjump BlueJuice
	
.LumRawstBlueJuice
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
	sjump BlueJuice
	
.OranOranBlueJuice
	checkitem ORAN_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY, 2
	sjump BlueJuice
	
.OranRawstBlueJuice
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem RAWST_BERRY
	sjump BlueJuice

.RawstRawstBlueJuice
	checkitem RAWST_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbejuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, JUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem RAWST_BERRY, 2
	sjump BlueJuice
	
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
	
.AspearLumPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem LUM_BERRY
	sjump PrismShake
	
.AspearOranPrismShake
	checkitem ASPEAR_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ASPEAR_BERRY
	takeitem ORAN_BERRY
	sjump PrismShake
	
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
	
.CheriLumPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem LUM_BERRY
	sjump PrismShake
	
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
	
.CheriSitrusPrismShake
	checkitem CHERI_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHERI_BERRY
	takeitem SITRUS_BERRY
	sjump PrismShake
	
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
	
.ChestoLumPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem LUM_BERRY
	sjump PrismShake
	
.ChestoOranPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem ORAN_BERRY
	sjump PrismShake
	
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
	
.ChestoSitrusPrismShake
	checkitem CHESTO_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem CHESTO_BERRY
	takeitem SITRUS_BERRY
	sjump PrismShake
	
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
	
.LeppaSitrusPrismShake
	checkitem LEPPA_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LEPPA_BERRY
	takeitem SITRUS_BERRY
	sjump PrismShake
	
.LumLumPrismShake
	checkitem LUM_BERRY, 2
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY, 2
	sjump PrismShake
	
.LumPechaPrismShake
	checkitem LUM_BERRY
	iffalse .DontHaveBerries
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem LUM_BERRY
	takeitem PECHA_BERRY
	sjump PrismShake
	
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
	
.OranPersimPrismShake
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem PERSIM_BERRY
	sjump PrismShake
	
.OranSitrusBerryJuice
	checkitem ORAN_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeberryjuiceprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, BERRYJUICE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem ORAN_BERRY
	takeitem SITRUS_BERRY
	sjump BerryJuice
	
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
	
.PechaSitrusPrismShake
	checkitem PECHA_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PECHA_BERRY
	takeitem SITRUS_BERRY
	sjump PrismShake
	
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
	
.PersimSitrusPrismShake
	checkitem PERSIM_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem PERSIM_BERRY
	takeitem SITRUS_BERRY
	sjump PrismShake

.RawstSitrusPrismShake
	checkitem RAWST_BERRY
	iffalse .DontHaveBerries
	checkitem SITRUS_BERRY
	iffalse .DontHaveBerries
	
	opentext
	writetext willbeshakeprice
	yesorno
	iffalse CancelScriptCC
	
	checkmoney YOUR_MONEY, SHAKE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	
	takeitem RAWST_BERRY
	takeitem SITRUS_BERRY
	sjump PrismShake
	
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

BlueJuice:
	opentext
	special PlaceMoneyTopRight
	writetext ComeAgainTextCC2
	takemoney YOUR_MONEY, JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	giveitem BLUE_JUICE
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
	text "That will be ¥800."
	line "Is that okay?"
	done

willbejuiceprice:
	text "That will be ¥400."
	line "Is that okay?"
	done
	
willbesodaprice:
	text "That will be ¥20000."
	line "Is that okay?"
	done

willbeshakeprice:
	text "That will be ¥1000."
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
