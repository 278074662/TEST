

	DMS_banditSide						= EAST;						// The side (team) that AI Bandits will spawn on
/* DonkeyPunchDMS Custom Side Factions */
	DMS_heroSide						= WEST;						// The side (team) that AI Heros will spawn on
	DMS_survivorSide					= CIV;						// The side (team) that AI Survivor will spawn on

	DMS_clear_AI_body					= false;					// Clear AI body as soon as they die
	DMS_clear_AI_body_chance			= 50;						// Percentage chance that AI bodies will be cleared when they die
	DMS_ai_disable_ramming_damage 		= true;						// Disables damage due to ramming into AI. !!!NOTE: THIS WILL NOT BE RELIABLE WITH "DMS_ai_offload_to_client"!!!
	DMS_remove_roadkill					= true; 					// Remove gear from AI bodies that are roadkilled
	DMS_remove_roadkill_chance			= 50;						// Percentage chance that roadkilled AI bodies will be deleted
	DMS_explode_onRoadkill				= true;						// Whether or not to spawn an explosion when an AI gets run over. It will likely take out the 2 front wheels. Should help mitigate the ineffective AI vs. striders issue ;)
	DMS_RemoveNVG						= false;					// Remove NVGs from AI bodies

	DMS_MaxAIDistance					= 500;						// The maximum distance an AI unit can be from a mission before he is killed. Helps with AI running away and forcing the mission to keep running. Set to 0 if you don't want it.
	DMS_AIDistanceCheckFrequency		= 60;						// How often to check within DMS_fnc_TargetsKilled whether or not the AI is out of the maximum radius. Lower values increase frequency and increase server load, greater values decrease frequency and may cause longer delays for "runaway" AI.

	DMS_ai_offload_to_client			= true;						// Offload spawned AI groups to random clients. Helps with server performance.
	DMS_ai_offload_Only_DMS_AI			= true;						// Don't set this to false unless you know what you're doing.
	DMS_ai_offload_notifyClient			= false;					// Notify the client when AI has been offloaded to the client.

	DMS_ai_allowFreezing				= true;						// Whether or not to "freeze" AI that are a certain distance away from players (and therefore inactive).
	DMS_ai_freeze_Only_DMS_AI			= false;					// Whether or not to "freeze" AI that are not spawned by DMS.
	DMS_ai_freezingDistance				= 3500;						// If there are no players within this distance of the leader of an AI group, then the AI group will be "frozen".
	DMS_ai_unfreezingDistance			= 3500;						// If there are players within this distance of the leader of an AI group, then the AI group will be "un-frozen".
	DMS_ai_offloadOnUnfreeze			= true;						// Whether or not to offload AI to clients once they have been "un-frozen". NOTE: This config will be ignored if "DMS_ai_offload_to_client" is set to false.
	DMS_ai_freezeCheckingDelay			= 15;						// How often (in seconds) DMS will check whether to freeze/un-freeze AI.
	DMS_ai_freezeOnSpawn				= false;						// Whether or not to freeze an AI group when initially spawned.

	DMS_ai_share_info					= true;					// Share info about killer
	DMS_ai_share_info_distance			= 25;						// The distance killer's info will be shared to other AI

	DMS_ai_nighttime_accessory_chance	= 75;						// Percentage chance that AI will have a flashlight or laser pointer on their guns if spawned during nighttime
	DMS_ai_enable_water_equipment		= true;						// Enable/disable overriding default weapons of an AI if it spawns on/in water

	// https://community.bistudio.com/wiki/AI_Sub-skills#general
	DMS_ai_skill_static					= [["aimingAccuracy",0.20],["aimingShake",0.70],["aimingSpeed",0.75],["spotDistance",0.70],["spotTime",0.50],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];	// Static AI Skills
	DMS_ai_skill_easy					= [["aimingAccuracy",0.30],["aimingShake",0.50],["aimingSpeed",0.50],["spotDistance",0.50],["spotTime",0.50],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",0.50]];	// Easy
	DMS_ai_skill_moderate				= [["aimingAccuracy",0.60],["aimingShake",0.60],["aimingSpeed",0.60],["spotDistance",0.60],["spotTime",0.60],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",0.60]];	// Moderate
	DMS_ai_skill_difficult				= [["aimingAccuracy",0.70],["aimingShake",0.70],["aimingSpeed",0.70],["spotDistance",0.70],["spotTime",0.80],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",0.70]]; 	// Difficult
	DMS_ai_skill_hardcore				= [["aimingAccuracy",1.00],["aimingShake",1.00],["aimingSpeed",1.00],["spotDistance",1.00],["spotTime",1.00],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hardcore
	DMS_ai_skill_random					= ["hardcore","difficult","difficult","difficult","moderate","moderate","moderate","moderate","easy","easy"];	// Skill frequencies for "random" AI skills | Default: 10% hardcore, 30% difficult, 40% moderate, and 20% easy
	DMS_ai_skill_randomDifficult		= ["hardcore","hardcore","difficult","difficult","difficult"];	// 60% chance for "difficult", 40% chance for "hardcore" AI.
	DMS_ai_skill_randomEasy				= ["moderate","moderate","easy","easy","easy"];					// 60% chance for "easy", 40% chance for "moderate" AI.
	DMS_ai_skill_randomIntermediate		= ["difficult","difficult","moderate","moderate","moderate"];	// 60% chance for "moderate", 40% chance for "difficult" AI.
	DMS_AI_WP_Radius_easy				= 20;						// Waypoint radius for "easy" AI.
	DMS_AI_WP_Radius_moderate			= 30;						// Waypoint radius for "moderate" AI.
	DMS_AI_WP_Radius_difficult			= 50;						// Waypoint radius for "difficult" AI.
	DMS_AI_WP_Radius_hardcore			= 75;						// Waypoint radius for "hardcore" AI.
	DMS_AI_AimCoef_easy					= 0.9;						// "Custom Aim Coefficient" (weapon sway multiplier) for "easy" AI
	DMS_AI_AimCoef_moderate				= 0.65;						// "Custom Aim Coefficient" (weapon sway multiplier) for "moderate" AI
	DMS_AI_AimCoef_difficult			= 0.4;						// "Custom Aim Coefficient" (weapon sway multiplier) for "difficult" AI
	DMS_AI_AimCoef_hardcore				= 0.05;						// "Custom Aim Coefficient" (weapon sway multiplier) for "hardcore" AI
	DMS_AI_EnableStamina_easy			= true;						// Whether or not to keep the stamina system for "easy" AI.
	DMS_AI_EnableStamina_moderate		= true;						// Whether or not to keep the stamina system for "moderate" AI.
	DMS_AI_EnableStamina_difficult		= false;					// Whether or not to keep the stamina system for "difficult" AI.
	DMS_AI_EnableStamina_hardcore		= false;					// Whether or not to keep the stamina system for "hardcore" AI.
	DMS_AI_WP_Radius_base				= 5;						// Waypoint radius for AI in bases.
	DMS_AI_WP_Radius_heli				= 500;						// Waypoint radius for AI in helis.

	DMS_AI_destroyVehicleChance			= 75;						// Percent chance that an AI vehicle will be destroyed after the AI have been killed. Set to 100 for always, or 0 for never.

	DMS_AI_destroyStaticWeapon			= true;						// Whether or not to destroy static HMGs after AI death.
	DMS_AI_destroyStaticWeapon_chance	= 95;						// Percent chance that a static weapon will be destroyed (only applied if "DMS_AI_destroyStaticWeapon" is true)

	DMS_static_weapons =				[							// Static weapons for AI
											"O_HMG_01_high_F"
										];

	DMS_ai_default_items =				[							// Toolbelt items each AI will spawn with
											"ItemWatch",
											"ItemMap",
											"ItemCompass",
											"ItemRadio"
										];

	DMS_ai_BipodList =					[
											"bipod_01_F_blk",
											"bipod_01_F_mtp",
											"bipod_01_F_snd",
											"bipod_02_F_blk",
											"bipod_02_F_hex",
											"bipod_02_F_tan",
											"bipod_03_F_blk",
											"bipod_03_F_oli"
										];

	//Assault Class
	DMS_assault_weps =					[							// Assault Rifles
											#ifdef GIVE_AI_APEX_WEAPONS
											"arifle_AK12_F",
											"arifle_ARX_ghex_F",
											"arifle_CTAR_blk_F",
											"arifle_SPAR_01_khk_F",
											"arifle_SPAR_03_khk_F",
											#endif
											"arifle_Katiba_GL_F",
											"arifle_MX_GL_Black_F",
											"arifle_Mk20_GL_F",
											"arifle_TRG21_GL_F",
											"arifle_Katiba_F",
											"arifle_MX_Black_F",
											"arifle_TRG21_F",
											"arifle_TRG20_F",
											"arifle_Mk20_plain_F",
											"arifle_Mk20_F",
											"Exile_Weapon_AK107",
											"Exile_Weapon_AK107_GL",
											"Exile_Weapon_AK74_GL",
											"Exile_Weapon_AK47",
											"Exile_Weapon_AKS_Gold"
										];
	DMS_assault_pistols =				[							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
											"hgun_ACPC2_F",
											"hgun_Rook40_F",
											"hgun_P07_F",
											"hgun_Pistol_heavy_01_F",
											"hgun_Pistol_heavy_02_F",
											"Exile_Weapon_Colt1911",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus",
											"Exile_Weapon_TaurusGold"
										];
	DMS_assault_optics =				[							// Optics for Assault Class
											#ifdef GIVE_AI_APEX_GEAR
											"optic_ERCO_khk_F",
											"optic_Holosight_blk_F",
											#endif
											"optic_Arco",
											"optic_Hamr",
											"optic_Aco",
											"optic_Holosight",
											"optic_MRCO",
											"optic_DMS"
										];
	DMS_assault_optic_chance			= 75;						// Percentage chance that an Assault Class AI will get an optic
	DMS_assault_bipod_chance			= 25;						// Percentage chance that an Assault Class AI will get a bipod
	DMS_assault_suppressor_chance		= 25;						// Percentage chance that an Assault Class AI will get a suppressor

	DMS_assault_items =					[							// Items for Assault Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exile_Item_InstaDoc",
											"Exile_Item_BBQSandwich",
											"Exile_Item_Energydrink"
										];
	DMS_assault_equipment =				[							// Equipment for Assault Class AI (stuff that goes in toolbelt slots)
											"ItemGPS"
										];
	DMS_assault_RandItemCount =			2;							// How many random items to add to the AI's inventory.
	DMS_assault_RandItems =				[							// The random items that will be added to the AI's inventory.
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_PowerDrink",
											"Exile_Item_EnergyDrink",
											"Exile_Item_Vishpirin",
											"Exile_Item_Bandage"
										];
	DMS_assault_helmets	=				[							// Helmets for Assault Class
											#ifdef GIVE_AI_APEX_GEAR
											"H_HelmetB_TI_tna_F",
											"H_HelmetB_Enh_tna_F",
											"H_HelmetSpecO_ghex_F",
											"H_HelmetCrew_O_ghex_F",
											#endif
											"H_HelmetSpecB_paint1",
											"H_HelmetIA_camo",
											"H_HelmetLeaderO_ocamo",
											"H_HelmetLeaderO_oucamo"
										];
	DMS_assault_clothes	=				[							// Uniforms for Assault Class
											#ifdef GIVE_AI_APEX_GEAR
											"U_B_T_Soldier_F",
											"U_B_T_Soldier_SL_F",
											"U_B_CTRG_Soldier_F",
											"U_O_V_Soldier_Viper_F",
											"U_I_C_Soldier_Bandit_2_F",
											"U_I_C_Soldier_Camo_F",
											"U_B_CTRG_Soldier_urb_1_F",
											#endif
											"U_O_CombatUniform_ocamo",
											"U_O_PilotCoveralls",
											//"U_B_Wetsuit",
											"U_BG_Guerilla3_1",
											"U_BG_Guerilla2_3",
											"U_BG_Guerilla2_2",
											"U_BG_Guerilla1_1",
											"U_BG_Guerrilla_6_1",
											"U_IG_Guerilla3_2",
											"U_B_SpecopsUniform_sgg",
											"U_I_OfficerUniform",
											"U_B_CTRG_3",
											"U_I_G_resistanceLeader_F"
										];
	DMS_assault_vests =					[							// Vests for Assault Class
											#ifdef GIVE_AI_APEX_GEAR
											"V_TacChestrig_grn_F",
											"V_PlateCarrier2_tna_F",
											"V_PlateCarrierSpec_tna_F",
											"V_PlateCarrierGL_tna_F",
											"V_TacVest_gen_F",
											"V_PlateCarrier1_rgr_noflag_F",
											#endif
											"V_PlateCarrierH_CTRG",
											"V_PlateCarrierSpec_rgr",
											"V_PlateCarrierGL_blk",
											"V_PlateCarrierGL_mtp",
											"V_PlateCarrierGL_rgr",
											"V_PlateCarrierSpec_blk",
											"V_PlateCarrierSpec_mtp",
											"V_PlateCarrierL_CTRG",
											"V_TacVest_blk_POLICE",
											"V_PlateCarrierIA2_dgtl"
										];
	DMS_assault_backpacks =				[							// Backpacks for Assault Class
											#ifdef GIVE_AI_APEX_GEAR
											"B_Bergen_tna_F",
											"B_FieldPack_ghex_F",
											"B_ViperLightHarness_khk_F",
											#endif
											"B_Bergen_rgr",
											"B_Carryall_oli",
											"B_Kitbag_mcamo",
											"B_Carryall_cbr",
											"B_FieldPack_oucamo",
											"B_FieldPack_cbr",
											"B_Bergen_blk"
										];

	//Machine Gun Class
	DMS_MG_weps	=						[							// Machine Guns
											#ifdef GIVE_AI_MARKSMAN_DLC_WEAPONS
											"MMG_01_hex_F",
											"MMG_02_black_F",
											#endif

											#ifdef GIVE_AI_APEX_WEAPONS
											"LMG_03_F",
											#endif
											"LMG_Zafir_F",
											"LMG_Mk200_F",
											"arifle_MX_SW_Black_F",
											"Exile_Weapon_RPK",
											"Exile_Weapon_PKP"
										];
	DMS_MG_pistols =				[							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
											"hgun_ACPC2_F",
											"hgun_Rook40_F",
											"hgun_P07_F",
											"hgun_Pistol_heavy_01_F",
											"hgun_Pistol_heavy_02_F",
											"Exile_Weapon_Colt1911",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus",
											"Exile_Weapon_TaurusGold"
										];
	DMS_MG_optics =						[							//	Optics for MG Class
											#ifdef GIVE_AI_APEX_GEAR
											"optic_ERCO_khk_F",
											"optic_DMS_ghex_F",
											"optic_Arco_blk_F",
											#endif
											"optic_Hamr",
											"optic_Aco",
											"optic_Holosight",
											"optic_MRCO"
										];
	DMS_MG_optic_chance					= 50;						// Percentage chance that an MG Class AI will get an optic
	DMS_MG_bipod_chance					= 90;						// Percentage chance that an MG Class AI will get a bipod
	DMS_MG_suppressor_chance			= 10;						// Percentage chance that an MG Class AI will get a suppressor

	DMS_MG_items =						[							// Items for MG Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exile_Item_InstaDoc",
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_PlasticBottleFreshWater",
											"Exile_Item_CookingPot"
										];
	DMS_MG_equipment =					[							// Equipment for MG Class AI (stuff that goes in toolbelt slots)
											"Binocular"
										];
	DMS_MG_RandItemCount =				3;							// How many random items to add to the AI's inventory.
	DMS_MG_RandItems =					[							// The random items that will be added to the AI's inventory.
											"Exile_Item_EMRE",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_PowerDrink",
											"Exile_Item_PlasticBottleCoffee",
											"Exile_Item_Vishpirin",
											"Exile_Item_Instadoc"
										];
	DMS_MG_helmets =					[							// Helmets for MG Class
											#ifdef GIVE_AI_APEX_GEAR
											"H_HelmetB_TI_tna_F",
											"H_HelmetB_Enh_tna_F",
											"H_HelmetSpecO_ghex_F",
											"H_HelmetLeaderO_ghex_F",
											"H_HelmetCrew_O_ghex_F",
											#endif
											"H_PilotHelmetHeli_I",
											"H_PilotHelmetHeli_O",
											"H_PilotHelmetFighter_I",
											"H_PilotHelmetFighter_O",
											"H_HelmetCrew_O",
											"H_CrewHelmetHeli_I",
											"H_HelmetSpecB_paint1",
											"H_HelmetIA_camo",
											"H_HelmetLeaderO_ocamo",
											"H_HelmetLeaderO_oucamo"
										];
	DMS_MG_clothes =					[							// Uniforms for MG Class
											#ifdef GIVE_AI_APEX_GEAR
											"U_B_T_Soldier_F",
											"U_B_T_Soldier_SL_F",
											"U_B_CTRG_Soldier_F",
											"U_O_V_Soldier_Viper_F",
											"U_I_C_Soldier_Bandit_2_F",
											"U_I_C_Soldier_Camo_F",
											"U_B_CTRG_Soldier_urb_1_F",
											#endif
											"U_O_CombatUniform_ocamo",
											"U_O_PilotCoveralls",
											//"U_B_Wetsuit",
											"U_BG_Guerilla3_1",
											"U_BG_Guerilla2_3",
											"U_BG_Guerilla2_2",
											"U_BG_Guerilla1_1",
											"U_BG_Guerrilla_6_1",
											"U_IG_Guerilla3_2",
											"U_B_SpecopsUniform_sgg",
											"U_I_OfficerUniform",
											"U_B_CTRG_3",
											"U_I_G_resistanceLeader_F"
										];
	DMS_MG_vests =						[							// Vests for MG Class
											#ifdef GIVE_AI_APEX_GEAR
											"V_TacChestrig_grn_F",
											"V_PlateCarrier2_tna_F",
											"V_PlateCarrierSpec_tna_F",
											"V_PlateCarrierGL_tna_F",
											"V_TacVest_gen_F",
											"V_PlateCarrier1_rgr_noflag_F",
											#endif
											"V_PlateCarrierH_CTRG",
											"V_PlateCarrierSpec_rgr",
											"V_PlateCarrierGL_blk",
											"V_PlateCarrierGL_mtp",
											"V_PlateCarrierGL_rgr",
											"V_PlateCarrierSpec_blk",
											"V_PlateCarrierSpec_mtp",
											"V_PlateCarrierL_CTRG",
											"V_TacVest_blk_POLICE",
											"V_PlateCarrierIA2_dgtl",
											"V_HarnessO_brn",
											"V_HarnessO_gry"
										];
	DMS_MG_backpacks =					[							// Backpacks for MG Class
											#ifdef GIVE_AI_APEX_GEAR
											"B_Bergen_tna_F",
											"B_Carryall_ghex_F",
											"B_ViperHarness_ghex_F",
											"B_ViperLightHarness_ghex_F",
											#endif
											"B_Bergen_rgr",
											"B_Carryall_oli",
											"B_Kitbag_mcamo",
											"B_Carryall_cbr",
											"B_Bergen_blk"
										];

	//Sniper Class
	DMS_sniper_weps =					[							// Sniper Rifles
											"srifle_EBR_F",
											"srifle_GM6_F",
											"srifle_LRR_F",
											"arifle_MXM_Black_F",
											"srifle_DMR_01_F",
											#ifdef GIVE_AI_MARKSMAN_DLC_WEAPONS
											"srifle_DMR_02_F",
											"srifle_DMR_03_woodland_F",
											//"srifle_DMR_04_F",			// Does anybody like the ASP-1? :p
											"srifle_DMR_05_blk_F",
											"srifle_DMR_06_olive_F",
											#endif

											#ifdef GIVE_AI_APEX_WEAPONS
											"srifle_DMR_07_ghex_F",
											#endif
											"Exile_Weapon_DMR",
											"Exile_Weapon_SVD",
											"Exile_Weapon_VSSVintorez"
										];
	DMS_sniper_pistols =				[							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
											#ifdef GIVE_AI_APEX_WEAPONS
											"hgun_Pistol_01_F",
											#endif
											"hgun_ACPC2_F",
											"hgun_Rook40_F",
											"hgun_P07_F",
											"hgun_Pistol_heavy_01_F",
											"hgun_Pistol_heavy_02_F",
											"Exile_Weapon_Colt1911",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus",
											"Exile_Weapon_TaurusGold"
										];
	DMS_sniper_optics =					[							// Optics for Sniper Class
											#ifdef GIVE_AI_APEX_GEAR
											"optic_SOS_khk_F",
											"optic_DMS_ghex_F",
											"optic_LRPS_tna_F",
											#endif

											#ifdef GIVE_AI_MARKSMAN_DLC_WEAPONS
											"optic_AMS_khk",
											#endif
											"optic_SOS",
											"optic_DMS",
											"optic_LRPS"
										];
	DMS_sniper_optic_chance				= 100;						// Percentage chance that a Sniper Class AI will get an optic
	DMS_sniper_bipod_chance				= 90;						// Percentage chance that a Sniper Class AI will get a bipod
	DMS_sniper_suppressor_chance		= 15;						// Percentage chance that a Sniper Class AI will get a suppressor

	DMS_sniper_items =					[							// Items for Sniper Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exile_Item_InstaDoc",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_PlasticBottleFreshWater",
											"Exile_Item_PlasticBottleFreshWater",
											"Exile_Item_Matches"
										];
	DMS_sniper_equipment =				[							// Equipment for Sniper Class AI (stuff that goes in toolbelt slots)
											"Rangefinder",
											"ItemGPS"
										];
	DMS_sniper_RandItemCount =			3;							// How many random items to add to the AI's inventory.
	DMS_sniper_RandItems =				[							// The random items that will be added to the AI's inventory.
											"Exile_Item_EMRE",
											"Exile_Item_PlasticBottleCoffee",
											"Exile_Item_CanOpener",
											"Exile_Item_Instadoc",
											"Exile_Item_DuctTape"
										];
	DMS_sniper_helmets =				[							// Helmets for Sniper Class
											#ifdef GIVE_AI_APEX_GEAR
											//"H_HelmetO_ViperSP_ghex_F",			// Special helmet with in-built NVGs and thermal :o
											"H_HelmetB_Enh_tna_F",
											"H_HelmetSpecO_ghex_F",
											"H_HelmetLeaderO_ghex_F",
											#endif
											"H_HelmetSpecB_paint1",
											"H_HelmetIA_camo",
											"H_HelmetLeaderO_ocamo",
											"H_HelmetLeaderO_oucamo"
										];
	DMS_sniper_clothes =				[							// Uniforms for Sniper Class
											#ifdef GIVE_AI_APEX_GEAR
											"U_B_T_Sniper_F",
											"U_B_T_FullGhillie_tna_F",				// Invisible to thermal? 0_o
											"U_O_T_Sniper_F",
											"U_O_T_FullGhillie_tna_F",
											#endif
											"U_O_GhillieSuit",
											"U_B_FullGhillie_ard",
											"U_B_FullGhillie_lsh",
											"U_B_FullGhillie_sard",
											"U_B_GhillieSuit",
											"U_I_FullGhillie_ard",
											"U_I_FullGhillie_lsh",
											"U_I_FullGhillie_sard",
											"U_I_GhillieSuit",
											"U_O_FullGhillie_ard",
											"U_O_FullGhillie_lsh",
											"U_O_FullGhillie_sard"
										];
	DMS_sniper_vests =					[							// Vests for Sniper Class
											#ifdef GIVE_AI_APEX_GEAR
											"V_PlateCarrier2_tna_F",
											"V_PlateCarrierSpec_tna_F",
											"V_PlateCarrierGL_tna_F",
											"V_PlateCarrier2_rgr_noflag_F",
											#endif
											"V_PlateCarrierH_CTRG",
											"V_PlateCarrierSpec_rgr",
											"V_PlateCarrierGL_blk",
											"V_PlateCarrierGL_mtp",
											"V_PlateCarrierGL_rgr",
											"V_PlateCarrierSpec_blk",
											"V_PlateCarrierSpec_mtp",
											"V_PlateCarrierL_CTRG",
											"V_TacVest_blk_POLICE",
											"V_PlateCarrierIA2_dgtl",
											"V_HarnessO_brn",
											"V_HarnessO_gry"
										];
	DMS_sniper_backpacks =				[							// Backpacks for Sniper Class
											#ifdef GIVE_AI_APEX_GEAR
											"B_Bergen_tna_F",
											"B_Bergen_hex_F",
											"B_Carryall_ghex_F",
											"B_ViperHarness_ghex_F",
											"B_ViperHarness_blk_F",
											"B_ViperLightHarness_ghex_F",
											"B_ViperLightHarness_khk_F",
											#endif
											"B_Bergen_rgr",
											"B_Carryall_oli",
											"B_Kitbag_mcamo",
											"B_Carryall_cbr",
											"B_Bergen_blk"
										];

	DMS_ai_SupportedClasses =			[							// Allowed AI classes. If you want to create your own class, make sure you define everything as I've defined above, and add it here
											"assault",
											"MG",
											"sniper"
										];

	DMS_ai_SupportedRandomClasses = 	[							// Allowed "random" AI presets here if you want to create different random presets.
											"random",
											"random_non_assault",
											"random_non_MG",
											"random_non_sniper"
										];

	DMS_random_AI =						[							// Random AI preset that contains all default classes | DEFAULT: 60% Assault, 20% MG, 20% Sniper
											"assault",
											"assault",
											"assault",
											"MG",
											"sniper"
										];

	DMS_random_non_assault_AI =			[							// Random AI preset that excludes the "assault" class
											"MG",
											"MG",
											"sniper"
										];

	DMS_random_non_MG_AI =				[							// Random AI preset that excludes the "MG" class
											"assault",
											"assault",
											"sniper"
										];

	DMS_random_non_sniper_AI =			[							// Random AI preset that excludes the "sniper" class
											"assault",
											"assault",
											"MG"
										];

	DMS_ai_use_launchers				= true;						// Enable/disable spawning an AI in a group with a launcher
	DMS_ai_launchers_per_group			= 2;						// How many units per AI group can get a launcher.
	DMS_ai_use_launchers_chance			= 50;						// Percentage chance to actually spawn the launcher (per-unit). With "DMS_ai_launchers_per_group" set to 2, and "DMS_ai_use_launchers_chance" set to 50, there will be an average of 1 launcher per group.
	DMS_AI_launcher_ammo_count			= 2;						// How many rockets an AI will get with its launcher
	DMS_ai_remove_launchers				= true;						// Remove rocket launchers on AI death

	DMS_AI_wep_launchers_AT =			[							// AT Launchers
											#ifdef GIVE_AI_APEX_WEAPONS
											"launch_RPG7_F",
											#endif
											"launch_NLAW_F",
											"launch_RPG32_F",
											"launch_B_Titan_short_F"
										];
	DMS_AI_wep_launchers_AA =			[							// AA Launchers
											"launch_B_Titan_F"
										];

	DMS_RHeli_Height					= 500;						// Altitude of the heli when flying to drop point.
	DMS_RHeli_MinDistFromDrop			= 500;						// Minimum distance for the reinforcement heli to spawn from drop point.
	DMS_RHeli_MaxDistFromDrop			= 5000;						// Maximum distance for the reinforcement heli to spawn from drop point.
	DMS_RHeli_MinDistFromPlayers		= 1000;						// Minimum distance for the reinforcement heli to spawn from players.

/* AI Settings */


/* Loot Settings */
	DMS_GodmodeCrates 					= true;						// Whether or not crates will have godmode after being filled with loot.
	DMS_MinimumMagCount					= 3;						// Minimum number of magazines for weapons.
	DMS_MaximumMagCount					= 5;						// Maximum number of magazines for weapons.
	DMS_CrateCase_Sniper =				[							// If you pass "Sniper" in _lootValues, then it will spawn these weapons/items/backpacks
											[
												["Rangefinder",1],
												["srifle_GM6_F",1],
												["srifle_LRR_F",1],
												["srifle_EBR_F",1],
												["hgun_Pistol_heavy_01_F",1],
												["hgun_PDW2000_F",1]
											],
											[
												["ItemGPS",1],
												["U_B_FullGhillie_ard",1],
												["U_I_FullGhillie_lsh",1],
												["U_O_FullGhillie_sard",1],
												["U_O_GhillieSuit",1],
												["V_PlateCarrierGL_blk",1],
												["V_HarnessO_brn",1],
												["Exile_Item_InstaDoc",3],
												["Exile_Item_Surstromming_Cooked",5],
												["Exile_Item_PlasticBottleFreshWater",5],
												["optic_DMS",1],
												["acc_pointer_IR",1],
												["muzzle_snds_B",1],
												["optic_LRPS",1],
												["optic_MRD",1],
												["muzzle_snds_acp",1],
												["optic_Holosight_smg",1],
												["muzzle_snds_L",1],
												["5Rnd_127x108_APDS_Mag",3],
												["7Rnd_408_Mag",3],
												["20Rnd_762x51_Mag",5],
												["11Rnd_45ACP_Mag",3],
												["30Rnd_9x21_Mag",3]
											],
											[
												["B_Carryall_cbr",1],
												["B_Kitbag_mcamo",1]
											]
										];
	DMS_BoxWeapons =					[							// List of weapons that can spawn in a crate
											#ifdef USE_MARKSMAN_DLC_WEAPONS_IN_CRATES
											"srifle_DMR_02_F",
											"srifle_DMR_03_woodland_F",
											//"srifle_DMR_04_F",			// ASP-1 Kir
											"srifle_DMR_05_blk_F",
											"srifle_DMR_06_olive_F",
											"MMG_01_hex_F",
											"MMG_02_black_F",
											#endif

											#ifdef USE_APEX_WEAPONS_IN_CRATES
											"arifle_AK12_F",
											"arifle_ARX_ghex_F",
											"arifle_CTAR_blk_F",
											"arifle_SPAR_01_khk_F",
											"arifle_SPAR_03_khk_F",
											//"srifle_DMR_07_ghex_F",				// Oh great, a 6.5mm 20 round sniper rifle... because everybody wanted a nerfed MXM :p
											"LMG_03_F",
											#endif
											"Exile_Melee_Axe",
											"Exile_Melee_SledgeHammer",
											//"Exile_Melee_Shovel",					// Not really interesting for players...
											"arifle_Katiba_GL_F",
											"arifle_MX_GL_Black_F",
											"arifle_Mk20_GL_F",
											"arifle_TRG21_GL_F",
											"arifle_Katiba_F",
											"arifle_MX_Black_F",
											"arifle_TRG21_F",
											"arifle_TRG20_F",
											"arifle_Mk20_plain_F",
											"arifle_Mk20_F",
											"Exile_Weapon_AK107",
											"Exile_Weapon_AK107_GL",
											"Exile_Weapon_AK74_GL",
											"Exile_Weapon_AK47",
											"Exile_Weapon_AKS_Gold",
											"LMG_Zafir_F",
											"LMG_Mk200_F",
											"arifle_MX_SW_Black_F",
											"Exile_Weapon_RPK",
											"Exile_Weapon_PK",
											"Exile_Weapon_PKP",
											"srifle_EBR_F",
											"srifle_DMR_01_F",
											"srifle_GM6_F",
											"srifle_LRR_F",
											"arifle_MXM_Black_F",
											"Exile_Weapon_DMR",
											"Exile_Weapon_SVD",
											"Exile_Weapon_VSSVintorez",
											"Exile_Weapon_CZ550",
											"Exile_Weapon_SVDCamo"
										];
	DMS_BoxFood =						[							// List of food that can spawn in a crate.
											"Exile_Item_GloriousKnakworst_Cooked",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_SausageGravy_Cooked",
											"Exile_Item_ChristmasTinner_Cooked",
											"Exile_Item_BBQSandwich_Cooked",
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_DogFood_Cooked",
											"Exile_Item_EMRE",
											"Exile_Item_BeefParts",
											"Exile_Item_Noodles",
											"Exile_Item_SeedAstics",
											"Exile_Item_Raisins",
											"Exile_Item_Moobar",
											"Exile_Item_InstantCoffee"
										];
	DMS_BoxDrinks =						[
											"Exile_Item_PlasticBottleCoffee",
											"Exile_Item_PowerDrink",
											"Exile_Item_PlasticBottleFreshWater",
											"Exile_Item_EnergyDrink",
											"Exile_Item_MountainDupe",
											"Exile_Item_ChocolateMilk"
										];
	DMS_BoxMeds =						[
											"Exile_Item_InstaDoc",
											"Exile_Item_Vishpirin",
											"Exile_Item_Bandage"
										];
	DMS_BoxSurvivalSupplies	=			[							//List of survival supplies (food/drink/meds) that can spawn in a crate. "DMS_BoxFood", "DMS_BoxDrinks", and "DMS_BoxMeds" is automatically added to this list.
											"Exile_Item_Matches",
											"Exile_Item_CookingPot",
											"Exile_Melee_Axe",
											"Exile_Item_CanOpener"
										] + DMS_BoxFood + DMS_BoxDrinks + DMS_BoxMeds;
	DMS_Box_BaseParts_Wood =			[							// List of wooden base parts.
											"Exile_Item_WoodWallKit",
											"Exile_Item_WoodWallHalfKit",
											"Exile_Item_WoodWindowKit",
											"Exile_Item_WoodDoorKit",
											"Exile_Item_WoodDoorwayKit",
											"Exile_Item_WoodGateKit",
											"Exile_Item_WoodFloorKit",
											"Exile_Item_WoodFloorPortKit",
											"Exile_Item_WoodStairsKit"
										];
	DMS_Box_BaseParts_Concrete =		[							// List of concrete base parts
											"Exile_Item_ConcreteWallKit",
											"Exile_Item_ConcreteWindowKit",
											"Exile_Item_ConcreteDoorKit",
											"Exile_Item_ConcreteDoorwayKit",
											"Exile_Item_ConcreteGateKit",
											"Exile_Item_ConcreteFloorKit",
											"Exile_Item_ConcreteFloorPortKit",
											"Exile_Item_ConcreteStairsKit"
										];
	DMS_BoxBaseParts =					[							// List of all base parts to spawn. Weighted towards wood base parts.
											"Exile_Item_FortificationUpgrade",
											"Exile_Item_FortificationUpgrade",
											"Exile_Item_SandBagsKit_Long",
											"Exile_Item_SandBagsKit_Long",
											"Exile_Item_SandBagsKit_Corner",
											"Exile_Item_SandBagsKit_Corner",
											"Exile_Item_HBarrier5Kit"
										] + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Concrete;
	DMS_BoxCraftingMaterials =			[
											"Exile_Item_Cement",
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_MetalBoard",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_JunkMetal",
											"Exile_Item_JunkMetal",
											"Exile_Item_JunkMetal",
											"Exile_Item_WoodPlank",
											"Exile_Item_WoodPlank",
											"Exile_Item_WoodPlank",
											"Exile_Item_WoodPlank"
										];
	DMS_BoxTools =						[
											"Exile_Item_Grinder",
											"Exile_Item_Handsaw",
											"Exile_Item_CanOpener",
											"Exile_Item_Pliers",
											"Exile_Item_Screwdriver",
											"Exile_Item_Foolbox"
										];
	DMS_BoxBuildingSupplies	=			[							// List of building supplies that can spawn in a crate ("DMS_BoxBaseParts", "DMS_BoxCraftingMaterials", and "DMS_BoxTools" are automatically added to this list. "DMS_BoxCraftingMaterials" is added twice for weight.)
											"Exile_Item_DuctTape",
											"Exile_Item_PortableGeneratorKit"
										] + DMS_BoxBaseParts + DMS_BoxCraftingMaterials + DMS_BoxCraftingMaterials + DMS_BoxTools;
	DMS_BoxOptics =						[							// List of optics that can spawn in a crate
											"optic_Arco",
											"optic_Hamr",
											"optic_Aco",
											"optic_Holosight",
											"optic_MRCO",
											"optic_SOS",
											"optic_DMS",
											"optic_LRPS",
											"optic_Nightstalker"			// Nightstalker scope lost thermal in Exile v0.9.4
										];
	DMS_BoxBackpacks =					[							//List of backpacks that can spawn in a crate
											"B_Bergen_rgr",
											"B_Carryall_oli",
											"B_Kitbag_mcamo",
											"B_Carryall_cbr",
											"B_FieldPack_oucamo",
											"B_FieldPack_cbr",
											"B_Bergen_blk"
										];
	DMS_BoxItems						= DMS_BoxSurvivalSupplies+DMS_BoxBuildingSupplies+DMS_BoxOptics;	// Random "items" can spawn optics, survival supplies, or building supplies

	DMS_Box_BreachingCharges =			[							// List of breaching charges (weighted). Not used (yet).
											"BreachingChargeBigMomma",
											"BreachingChargeMetal",
											"BreachingChargeMetal",
											"BreachingChargeWood",
											"BreachingChargeWood",
											"BreachingChargeWood"
										];

	DMS_RareLoot						= true;						// Potential chance to spawn rare loot in any crate.
	DMS_RareLootAmount					= 1;						// How many rare loot items to add.
	DMS_RareLootList =					[							// List of rare loot to spawn
											"Exile_Item_SafeKit",
											"Exile_Item_CodeLock"
										];
	DMS_RareLootChance					= 10;						// Percentage Chance to spawn rare loot in any crate | Default: 10%

	// Vehicles
	DMS_ArmedVehicles =					[							// List of armed vehicles that can spawn
											#ifdef USE_APEX_VEHICLES
											"B_T_LSV_01_armed_F",
											"O_T_LSV_02_armed_F",
											#endif
											"Exile_Car_Offroad_Armed_Guerilla01"
										];

	DMS_MilitaryVehicles =				[							// List of (unarmed) military vehicles that can spawn
											#ifdef USE_APEX_VEHICLES
											"B_T_LSV_01_unarmed_F",
											"O_T_LSV_02_unarmed_F",
											#endif
											"Exile_Car_Strider",
											"Exile_Car_Hunter",
											"Exile_Car_Ifrit"
										];

	DMS_TransportTrucks =				[							// List of transport trucks that can spawn
											"Exile_Car_Van_Guerilla01",
											"Exile_Car_Zamak",
											"Exile_Car_Tempest",
											"Exile_Car_HEMMT",
											"Exile_Car_Ural_Open_Military",
											"Exile_Car_Ural_Covered_Military"
										];

	DMS_RefuelTrucks =					[							// List of refuel trucks that can spawn
											"Exile_Car_Van_Fuel_Black",
											"Exile_Car_Van_Fuel_White",
											"Exile_Car_Van_Fuel_Red",
											"Exile_Car_Van_Fuel_Guerilla01",
											"Exile_Car_Van_Fuel_Guerilla02",
											"Exile_Car_Van_Fuel_Guerilla03"
										];

	DMS_CivilianVehicles =				[							// List of civilian vehicles that can spawn
											#ifdef USE_APEX_VEHICLES
											"C_Offroad_02_unarmed_F",
											"I_C_Van_01_transport_F",
											#endif
											"Exile_Car_SUV_Red",
											"Exile_Car_Hatchback_Rusty1",
											"Exile_Car_Hatchback_Rusty2",
											"Exile_Car_Hatchback_Sport_Red",
											"Exile_Car_SUV_Red",
											"Exile_Car_Offroad_Rusty2",
											"Exile_Bike_QuadBike_Fia"
										];

	DMS_TransportHelis =				[							// List of transport helis that can spawn
											#ifdef USE_APEX_VEHICLES
											"B_T_VTOL_01_infantry_F",
											"O_T_VTOL_02_infantry_F",
											#endif
											"Exile_Chopper_Hummingbird_Green",
											"Exile_Chopper_Orca_BlackCustom",
											"Exile_Chopper_Mohawk_FIA",
											"Exile_Chopper_Huron_Black",
											"Exile_Chopper_Hellcat_Green",
											"Exile_Chopper_Taru_Transport_Black"
										];

	DMS_ReinforcementHelis =			[							// List of helis that can spawn for AI paratrooper reinforcements.
											//"B_Heli_Transport_01_camo_F"		// Ghosthawk: You'll have to whitelist this in infistar if you want to use it.
										] + DMS_TransportHelis;

	DMS_CarThievesVehicles =			[							// List of vehicles that can spawn in the "car thieves" mission. By default, it's just "DMS_MilitaryVehicles" and "DMS_TransportTrucks".
											//"Exile_Car_Offroad_Armed_Guerilla01"
										] + DMS_MilitaryVehicles + DMS_TransportTrucks;
/* Loot Settings */


DMS_ConfigLoaded = true;
