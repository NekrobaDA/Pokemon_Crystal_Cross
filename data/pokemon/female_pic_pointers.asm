; Pics are defined in gfx/pics.asm

	dba EggPic ; EGG is now -3, so it must go *above* the label
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
FemalePokemonPicPointers::
; entries correspond to Pokémon species, two apiece (first index is 0)
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dba BulbasaurFrontpic
	dba BulbasaurBackpic
	dba IvysaurFrontpic
	dba IvysaurBackpic
	dba VenusaurFrontpic
	dba VenusaurBackpic
	dba CharmanderFrontpic
	dba CharmanderBackpic
	dba CharmeleonFrontpic
	dba CharmeleonBackpic
	dba CharizardFemaleFrontpic
	dba CharizardFemaleBackpic
	dba SquirtleFrontpic
	dba SquirtleBackpic
	dba WartortleFrontpic
	dba WartortleBackpic
	dba BlastoiseFrontpic
	dba BlastoiseBackpic
	dba CaterpieFrontpic
	dba CaterpieBackpic
	dba MetapodFrontpic
	dba MetapodBackpic
	dba ButterfreeFemaleFrontpic
	dba ButterfreeFemaleBackpic
	dba WeedleFrontpic
	dba WeedleBackpic
	dba KakunaFrontpic
	dba KakunaBackpic
	dba BeedrillFemaleFrontpic
	dba BeedrillFemaleBackpic
	dba PidgeyFrontpic
	dba PidgeyBackpic
	dba PidgeottoFrontpic
	dba PidgeottoBackpic
	dba PidgeotFrontpic
	dba PidgeotBackpic
	dba RattataFrontpic
	dba RattataBackpic
	dba RaticateFrontpic
	dba RaticateBackpic
	dba SpearowFrontpic
	dba SpearowBackpic
	dba FearowFrontpic
	dba FearowBackpic
	dba EkansFrontpic
	dba EkansBackpic
	dba ArbokFrontpic
	dba ArbokBackpic
	dba PichuFrontpic
	dba PichuBackpic
	dba PikachuFemaleFrontpic
	dba PikachuFemaleBackpic
	dba RaichuFrontpic
	dba RaichuBackpic
	dba SandshrewFrontpic
	dba SandshrewBackpic
	dba SandslashFrontpic
	dba SandslashBackpic
	dba NidoranFFrontpic
	dba NidoranFBackpic
	dba NidorinaFrontpic
	dba NidorinaBackpic
	dba NidoqueenFrontpic
	dba NidoqueenBackpic
	dba NidoranMFrontpic
	dba NidoranMBackpic
	dba NidorinoFrontpic
	dba NidorinoBackpic
	dba NidokingFrontpic
	dba NidokingBackpic
	dba ClefairyFrontpic
	dba ClefairyBackpic
	dba ClefableFrontpic
	dba ClefableBackpic
	dba VulpixFrontpic
	dba VulpixBackpic
	dba NinetalesFrontpic
	dba NinetalesBackpic
	dba JigglypuffFrontpic
	dba JigglypuffBackpic
	dba WigglytuffFrontpic
	dba WigglytuffBackpic
	dba ZubatFrontpic
	dba ZubatBackpic
	dba GolbatFrontpic
	dba GolbatBackpic
	dba CrobatFrontpic
	dba CrobatBackpic	
	dba OddishFrontpic
	dba OddishBackpic
	dba GloomFrontpic
	dba GloomBackpic
	dba VileplumeFrontpic
	dba VileplumeBackpic
	dba ParasFrontpic
	dba ParasBackpic
	dba ParasectFrontpic
	dba ParasectBackpic
	dba VenonatFrontpic
	dba VenonatBackpic
	dba VenomothFrontpic
	dba VenomothBackpic
	dba DiglettFrontpic
	dba DiglettBackpic
	dba DugtrioFrontpic
	dba DugtrioBackpic
	dba MeowthFrontpic
	dba MeowthBackpic
	dba PersianFrontpic
	dba PersianBackpic
	dba PsyduckFrontpic
	dba PsyduckBackpic
	dba GolduckFrontpic
	dba GolduckBackpic
	dba MankeyFrontpic
	dba MankeyBackpic
	dba PrimeapeFrontpic
	dba PrimeapeBackpic
	dba AnnihilapeFrontpic
	dba AnnihilapeBackpic
	dba GrowlitheFrontpic
	dba GrowlitheBackpic
	dba ArcanineFrontpic
	dba ArcanineBackpic
	dba PoliwagFrontpic
	dba PoliwagBackpic
	dba PoliwhirlFrontpic
	dba PoliwhirlBackpic
	dba PoliwrathFrontpic
	dba PoliwrathBackpic
	dba PolitoedFrontpic
	dba PolitoedBackpic	
	dba AbraFrontpic
	dba AbraBackpic
	dba KadabraFrontpic
	dba KadabraBackpic
	dba AlakazamFrontpic
	dba AlakazamBackpic
	dba MachopFrontpic
	dba MachopBackpic
	dba MachokeFrontpic
	dba MachokeBackpic
	dba MachampFrontpic
	dba MachampBackpic
	dba BellsproutFrontpic
	dba BellsproutBackpic
	dba WeepinbellFrontpic
	dba WeepinbellBackpic
	dba VictreebelFrontpic
	dba VictreebelBackpic
	dba TentacoolFrontpic
	dba TentacoolBackpic
	dba TentacruelFrontpic
	dba TentacruelBackpic
	dba GeodudeFrontpic
	dba GeodudeBackpic
	dba GravelerFrontpic
	dba GravelerBackpic
	dba GolemFrontpic
	dba GolemBackpic
	dba PonytaFrontpic
	dba PonytaBackpic
	dba RapidashFrontpic
	dba RapidashBackpic
	dba SlowpokeFrontpic
	dba SlowpokeBackpic
	dba SlowbroFrontpic
	dba SlowbroBackpic
    dba SlowkingFrontpic
	dba SlowkingBackpic	
	dba MagnemiteFrontpic
	dba MagnemiteBackpic
	dba MagnetonFrontpic
	dba MagnetonBackpic
	dba FarfetchDFrontpic
	dba FarfetchDBackpic
	dba WuDukFrontpic
	dba WuDukBackpic
	dba DoduoFrontpic
	dba DoduoBackpic
	dba DodrioFrontpic
	dba DodrioBackpic
	dba SeelFrontpic
	dba SeelBackpic
	dba DewgongFrontpic
	dba DewgongBackpic
	dba GrimerFrontpic
	dba GrimerBackpic
	dba MukFrontpic
	dba MukBackpic
	dba ShellderFrontpic
	dba ShellderBackpic
	dba CloysterFrontpic
	dba CloysterBackpic
	dba GastlyFrontpic
	dba GastlyBackpic
	dba HaunterFrontpic
	dba HaunterBackpic
	dba GengarFrontpic
	dba GengarBackpic
	dba OnixFrontpic
	dba OnixBackpic
	dba SteelixFrontpic
	dba SteelixBackpic
	dba DrowzeeFrontpic
	dba DrowzeeBackpic
	dba HypnoFrontpic
	dba HypnoBackpic
	dba KrabbyFrontpic
	dba KrabbyBackpic
	dba KinglerFrontpic
	dba KinglerBackpic
	dba VoltorbFrontpic
	dba VoltorbBackpic
	dba ElectrodeFrontpic
	dba ElectrodeBackpic
	dba ExeggcuteFrontpic
	dba ExeggcuteBackpic
	dba ExeggutorFrontpic
	dba ExeggutorBackpic
	dba CuboneFrontpic
	dba CuboneBackpic
	dba MarowakFrontpic
	dba MarowakBackpic
	dba TyrogueFrontpic
	dba TyrogueBackpic
	dba HitmonleeFrontpic
	dba HitmonleeBackpic
	dba HitmonchanFrontpic
	dba HitmonchanBackpic
	dba HitmontopFrontpic
	dba HitmontopBackpic
	dba LickitungFrontpic
	dba LickitungBackpic
	dba KoffingFrontpic
	dba KoffingBackpic
	dba WeezingFrontpic
	dba WeezingBackpic
	dba RhyhornFrontpic
	dba RhyhornBackpic
	dba RhydonFrontpic
	dba RhydonBackpic
	dba HappinyFrontpic
	dba HappinyBackpic
	dba ChanseyFrontpic
	dba ChanseyBackpic
	dba BlisseyFrontpic
	dba BlisseyBackpic
	dba KangaskidFrontpic
	dba KangaskidBackpic
	dba KangaskhanFrontpic
	dba KangaskhanBackpic
	dba HorseaFrontpic
	dba HorseaBackpic
	dba SeadraFrontpic
	dba SeadraBackpic
	dba KingdraFrontpic
	dba KingdraBackpic
	dba GoldeenFrontpic
	dba GoldeenBackpic
	dba SeakingFrontpic
	dba SeakingBackpic
	dba StaryuFrontpic
	dba StaryuBackpic
	dba StarmieFrontpic
	dba StarmieBackpic
	dba ScytherFrontpic
	dba ScytherBackpic
	dba ScizorFrontpic
	dba ScizorBackpic
	dba ElekidFrontpic
	dba ElekidBackpic
	dba ElectabuzzFrontpic
	dba ElectabuzzBackpic
	dba MagbyFrontpic
	dba MagbyBackpic
	dba MagmarFrontpic
	dba MagmarBackpic
	dba PinsirFrontpic
	dba PinsirBackpic
	dba MoobyFrontpic
	dba MoobyBackpic
	dba TaurosFrontpic
	dba TaurosBackpic
	dba MiltankFrontpic
	dba MiltankBackpic
	dba MagikarpFrontpic
	dba MagikarpBackpic
	dba GyaradosFrontpic
	dba GyaradosBackpic
	dba NessiFrontpic
	dba NessiBackpic
	dba LaprasFrontpic
	dba LaprasBackpic
	dba DittoFrontpic
	dba DittoBackpic
	dba EeveeFrontpic
	dba EeveeBackpic
	dba VaporeonFrontpic
	dba VaporeonBackpic
	dba JolteonFrontpic
	dba JolteonBackpic
	dba FlareonFrontpic
	dba FlareonBackpic
	dba EspeonFrontpic
	dba EspeonBackpic
	dba UmbreonFrontpic
	dba UmbreonBackpic
	dba LeafeonFrontpic
	dba LeafeonBackpic
	dba GlaceonFrontpic
	dba GlaceonBackpic
	dba SylveonFrontpic
	dba SylveonBackpic
	dba PorygonFrontpic
	dba PorygonBackpic
	dba Porygon2Frontpic
	dba Porygon2Backpic
	dba PorygonZFrontpic
	dba PorygonZBackpic
	dba OmanyteFrontpic
	dba OmanyteBackpic
	dba OmastarFrontpic
	dba OmastarBackpic
	dba KabutoFrontpic
	dba KabutoBackpic
	dba KabutopsFrontpic
	dba KabutopsBackpic
	dba AerodactylFrontpic
	dba AerodactylBackpic
	dba MunchlaxFrontpic
	dba MunchlaxBackpic
	dba SnorlaxFrontpic
	dba SnorlaxBackpic
	dba ArticunoFrontpic
	dba ArticunoBackpic
	dba ZapdosFrontpic
	dba ZapdosBackpic
	dba MoltresFrontpic
	dba MoltresBackpic
	dba DratiniFrontpic
	dba DratiniBackpic
	dba DragonairFrontpic
	dba DragonairBackpic
	dba DragoniteFrontpic
	dba DragoniteBackpic
	dba MewtwoFrontpic
	dba MewtwoBackpic
	dba MewFrontpic
	dba MewBackpic
	dba ChikoritaFrontpic
	dba ChikoritaBackpic
	dba BayleefFrontpic
	dba BayleefBackpic
	dba MeganiumFrontpic
	dba MeganiumBackpic
	dba CyndaquilFrontpic
	dba CyndaquilBackpic
	dba QuilavaFrontpic
	dba QuilavaBackpic
	dba TyphlosionFrontpic
	dba TyphlosionBackpic
	dba TotodileFrontpic
	dba TotodileBackpic
	dba CroconawFrontpic
	dba CroconawBackpic
	dba FeraligatrFrontpic
	dba FeraligatrBackpic
	dba SentretFrontpic
	dba SentretBackpic
	dba FurretFrontpic
	dba FurretBackpic
	dba HoothootFrontpic
	dba HoothootBackpic
	dba NoctowlFrontpic
	dba NoctowlBackpic
	dba LedybaFrontpic
	dba LedybaBackpic
	dba LedianFrontpic
	dba LedianBackpic
	dba SpinarakFrontpic
	dba SpinarakBackpic
	dba AriadosFrontpic
	dba AriadosBackpic
	dba ChinchouFrontpic
	dba ChinchouBackpic
	dba LanturnFrontpic
	dba LanturnBackpic
	dba TogepiFrontpic
	dba TogepiBackpic
	dba TogeticFrontpic
	dba TogeticBackpic
	dba TogekissFrontpic
	dba TogekissBackpic
	dba NatuFrontpic
	dba NatuBackpic
	dba IatuFrontpic
	dba IatuBackpic
	dba XatuFrontpic
	dba XatuBackpic
	dba MareepFrontpic
	dba MareepBackpic
	dba FlaaffyFrontpic
	dba FlaaffyBackpic
	dba AmpharosFrontpic
	dba AmpharosBackpic
	dba MarillFrontpic
	dba MarillBackpic
	dba AzumarillFrontpic
	dba AzumarillBackpic
	dba BonslyFrontpic
	dba BonslyBackpic
	dba SudowoodoFrontpic
	dba SudowoodoBackpic
	dba HoppipFrontpic
	dba HoppipBackpic
	dba SkiploomFrontpic
	dba SkiploomBackpic
	dba JumpluffFrontpic
	dba JumpluffBackpic
	dba AipomFrontpic
	dba AipomBackpic
	dba AmbipomFrontpic
	dba AmbipomBackpic
	dba SunkernFrontpic
	dba SunkernBackpic
	dba SunfloraFrontpic
	dba SunfloraBackpic
	dba YanmaFrontpic
	dba YanmaBackpic
	dba YanmegaFrontpic
	dba YanmegaBackpic
	dba WooperFrontpic
	dba WooperBackpic
	dba QuagsireFrontpic
	dba QuagsireBackpic
	dba MurkrowFrontpic
	dba MurkrowBackpic
	dba HonchkrowFrontpic
	dba HonchkrowBackpic
	dba MisdreavusFrontpic
	dba MisdreavusBackpic
	dba MismagiusFrontpic
	dba MismagiusBackpic
	dba WynautFrontpic
	dba WynautBackpic
	dba WobbuffetFrontpic
	dba WobbuffetBackpic
	dba OkapakoFrontpic
	dba OkapakoBackpic
	dba GirafarigFrontpic
	dba GirafarigBackpic
	dba PinecoFrontpic
	dba PinecoBackpic
	dba ForretressFrontpic
	dba ForretressBackpic
	dba DunsparceFrontpic
	dba DunsparceBackpic
	dba DuserpentFrontpic
	dba DuserpentBackpic
	dba GligarFrontpic
	dba GligarBackpic
	dba GliscorFrontpic
	dba GliscorBackpic
	dba RinrinFrontpic
	dba RinrinBackpic
	dba BellunaFrontpic
	dba BellunaBackpic
	dba SnubbullFrontpic
	dba SnubbullBackpic
	dba GranbullFrontpic
	dba GranbullBackpic
	dba QwilfishFrontpic
	dba QwilfishBackpic
	dba DetoqwilFrontpic
	dba DetoqwilBackpic
	dba ShuckleFrontpic
	dba ShuckleBackpic
	dba SneaselFrontpic
	dba SneaselBackpic
	dba WeavileFrontpic
	dba WeavileBackpic
	dba TeddiursaFrontpic
	dba TeddiursaBackpic
	dba UrsaringFrontpic
	dba UrsaringBackpic
	dba SlugmaFrontpic
	dba SlugmaBackpic
	dba MagcargoFrontpic
	dba MagcargoBackpic
	dba SwinubFrontpic
	dba SwinubBackpic
	dba PiloswineFrontpic
	dba PiloswineBackpic
	dba CorsolaFrontpic
	dba CorsolaBackpic
	dba RemoraidFrontpic
	dba RemoraidBackpic
	dba OctilleryFrontpic
	dba OctilleryBackpic
	dba DelibirdFrontpic
	dba DelibirdBackpic
	dba MantykeFrontpic
	dba MantykeBackpic
	dba MantineFrontpic
	dba MantineBackpic
	dba SkarchicFrontpic
	dba SkarchicBackpic
	dba SkarmoryFrontpic
	dba SkarmoryBackpic
	dba HoundourFrontpic
	dba HoundourBackpic
	dba HoundoomFrontpic
	dba HoundoomBackpic
	dba PhanpyFrontpic
	dba PhanpyBackpic
	dba DonphanFrontpic
	dba DonphanBackpic
	dba StantlerFrontpic
	dba StantlerBackpic
	dba WyrdeerFrontpic
	dba WyrdeerBackpic
	dba SmeargleFrontpic
	dba SmeargleBackpic
	dba HeracrossFrontpic
	dba HeracrossBackpic
		; Unown pics have their own table. See UnownPicPointers
	dbw -1, -1
	dbw -1, -1
	dba RaikouFrontpic
	dba RaikouBackpic
	dba EnteiFrontpic
	dba EnteiBackpic
	dba SuicuneFrontpic
	dba SuicuneBackpic
	dba LarvitarFrontpic
	dba LarvitarBackpic
	dba PupitarFrontpic
	dba PupitarBackpic
	dba TyranitarFrontpic
	dba TyranitarBackpic
	dba LugiaFrontpic
	dba LugiaBackpic
	dba HoOhFrontpic
	dba HoOhBackpic
	dba CelebiFrontpic
	dba CelebiBackpic
	dba ChimereonFrontpic
	dba ChimereonBackpic
	dba Bulbasaur_CloneFrontpic
	dba Bulbasaur_CloneBackpic
	dba Ivysaur_CloneFrontpic
	dba Ivysaur_CloneBackpic
	dba Venusaur_CloneFrontpic
	dba Venusaur_CloneBackpic
	dba Charmander_CloneFrontpic
	dba Charmander_CloneBackpic
	dba Charmeleon_CloneFrontpic
	dba Charmeleon_CloneBackpic
	dba Charizard_CloneFrontpic
	dba Charizard_CloneBackpic
	dba Squirtle_CloneFrontpic
	dba Squirtle_CloneBackpic
	dba Wartortle_CloneFrontpic
	dba Wartortle_CloneBackpic
	dba Blastoise_CloneFrontpic
	dba Blastoise_CloneBackpic
	dba Ekans_DarkFrontpic
	dba Ekans_DarkBackpic
	dba Arbok_DarkFrontpic
	dba Arbok_DarkBackpic
	dba Pichu_SpikyFrontpic
	dba Pichu_SpikyBackpic
	dba Pikachu_CloneFrontpic
	dba Pikachu_CloneBackpic
	dba Raichu_CloneFrontpic
	dba Raichu_CloneBackpic
	dba Raichu_AlolanFrontpic
	dba Raichu_AlolanBackpic
	dba Sandshrew_AlolanFrontpic
	dba Sandshrew_AlolanBackpic
	dba Sandslash_AlolanFrontpic
	dba Sandslash_AlolanBackpic
	dba Vulpix_AlolanFrontpic
	dba Vulpix_AlolanBackpic
	dba Ninetales_AlolanFrontpic
	dba Ninetales_AlolanBackpic
	dba Growlithe_HisuianFrontpic
	dba Growlithe_HisuianBackpic
	dba Arcanine_HisuianFrontpic
	dba Arcanine_HisuianBackpic
	dba Voltorb_HisuianFrontpic
	dba Voltorb_HisuianBackpic
	dba Electrode_HisuianFrontpic
	dba Electrode_HisuianBackpic
	dba Marowak_AlolanFrontpic
	dba Marowak_AlolanBackpic
	dba Typhlosion_HisuianFrontpic
	dba Typhlosion_HisuianBackpic
	dba Articuno_GalarianFrontpic
	dba Articuno_GalarianBackpic
	dba Zapdos_GalarianFrontpic
	dba Zapdos_GalarianBackpic
	dba Moltres_GalarianFrontpic
	dba Moltres_GalarianBackpic
	dba Arbok_KantoFrontpic
	dba Arbok_KantoBackpic
	dba Arbok_SeviiFrontpic
	dba Arbok_SeviiBackpic
	dba Wooper_PaldeanFrontpic
	dba Wooper_PaldeanBackpic
	dba ClodsireFrontpic
	dba ClodsireBackpic
	dba StarlyFrontpic
	dba StarlyBackpic
	dba StaraviaFrontpic
	dba StaraviaBackpic
	dba StaraptorFrontpic
	dba StaraptorBackpic
