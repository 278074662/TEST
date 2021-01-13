

if (isDedicated) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\init\server_check.sqf";
	
	// Send AI spawning information to the server
	"EAT_PVEH_aiSpawn" addPublicVariableEventHandler {(_this select 1) spawn EAT_serverAiSpawn;};
	
	EAT_HumanityGainLoss = 25;
    EAT_aiDeleteTimer = 600;
	
	_donn_delete_body_time = 600;
	
	
	
};



/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
//Server settings
dayZ_instance = 11; //Instance ID of this server
dayZ_serverName = "UMDZ"; //Shown to all players in the bottom left of the screen (country code + server number)
//Debug Monitor
DebugMonitorScript = false;
//Game settings
dayz_antihack = 0; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_REsec = 0; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = true; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = false; //Adds Point of Interest map additions (negatively impacts FPS)
dayz_infectiousWaterholes = false; //Randomly adds some bodies, graves and wrecks by ponds (negatively impacts FPS)
dayz_ForcefullmoonNights = true; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 500; //Puts a random amount of fuel in all fuel stations.
ZombZ_Notif_File_Name = "notification_op5";
//DayZMod presets
dayz_presets = "Custom"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = false; //Enable disable the ghosting system.
	dayz_ghostTimer = 60; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 0; //(Chernarus only) Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 0; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 2; //1 = blood on the ground (negatively impacts FPS), 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = false; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = true; // disable blood types system and use the single classic ItemBloodbag
	dayz_enableFlies = false; // Enable flies on dead bodies (negatively impacts FPS).
};

	//Temp settings
	dayz_DamageMultiplier = 2; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
	dayz_maxGlobalZeds = 50; //Limit the total zeds server wide.
	dayz_temperature_override = true; // Set to true to disable all temperature changes.

	enableRadio false;
	enableSentences false;

	// EPOCH CONFIG VARIABLES START //
	#include "configVariables.sqf" // Don't remove this line
	// See the above file for a full list including descriptions and default values
	// Uncomment the lines below to change the default loadout
	//DefaultMagazines = ["HandRoadFlare","ItemBandage","ItemPainkiller","8Rnd_9x18_Makarov","8Rnd_9x18_Makarov"];
	//DefaultWeapons = ["Makarov_DZ","ItemFlashlight"];
	//DefaultBackpack = "DZ_Patrol_Pack_EP1";
	//DefaultBackpackItems = []; // Can include both weapons and magazines i.e. ["PDW_DZ","30Rnd_9x19_UZI"];
	dayz_paraSpawn = false; // Halo spawn
	DZE_slowZombies = false; // Force zombies to always walk
	DZE_BackpackAntiTheft = true; // Prevent stealing from backpacks in trader zones
	DZE_BuildOnRoads = false; // Allow building on roads
	DZE_DamageBeforeMaint = 0.09;
	DZE_PlayerZed = false; // Enable spawning as a player zombie when players die with infected status
	DZE_R3F_WEIGHT = false; // Enable R3F weight. Players carrying too much will be overburdened and forced to move slowly.
	DZE_StaticConstructionCount = 0; // Steps required to build. If greater than 0 this applies to all objects.
	DZE_GodModeBase = true; // Make player built base objects indestructible
	DZE_requireplot = 1; // Require a plot pole to build  0 = Off, 1 = On
	DZE_PlotPole = [150,800]; // Radius owned by plot pole [Regular objects,Other plotpoles]. Difference between them is the minimum buffer between bases.
	DZE_BuildingLimit = 1000; // Max number of built objects allowed in DZE_PlotPole radius
	DZE_SafeZonePosArray = [[[6325,7807,0],100],[[4063,11664,0],100],[[11447,11364,0],100],[[1606,7803,0],100],[[12944,12766,0],100],[[12060,12638,0],100]]; // Format is [[[3D POS],RADIUS],[[3D POS],RADIUS]]; Stops loot and zed spawn, salvage and players being killed if their vehicle is destroyed in these zones.
	DZE_SelfTransfuse = true; // Allow players to bloodbag themselves
	DZE_selfTransfuse_Values = [5000,15,120]; // [blood amount given, infection chance %, cooldown in seconds]
	DZE_ZombieSpeed = [3,3]; //slow zombies
	MaxDynamicDebris = 0; // Max number of random road blocks to spawn around the map
	MaxVehicleLimit = 25; // Max number of random vehicles to spawn around the map
	spawnArea = 1400; // Distance around markers to find a safe spawn position
	spawnShoremode = 1; // Random spawn locations  1 = on shores, 0 = inland
	EpochUseEvents = true; //Enable event scheduler. Define custom scripts in dayz_server\modules to run on a schedule.
	EpochEvents = [
	["any","any","any","any",5,"abandonedvaults"],
	["any","any","any","any",10,"building_supplies"],
	["any","any","any","any",15,"Military"],
	["any","any","any","any",20,"gasstation"],
	["any","any","any","any",25,"Bombcrate"],
	["any","any","any","any",30,"Player_supply"],
	["any","any","any","any",35,"VeinFarm"],
	["any","any","any","any",40,"drug_bust"],
	["any","any","any","any",45,"special_forces"],
	["any","any","any","any",50,"Battlezone"] 
	];
	CustomHUD = true;
	DZE_UI = "epoch";
	// EPOCH CONFIG VARIABLES END //

	diag_log 'dayz_preloadFinished reset';
	dayz_preloadFinished=nil;
	onPreloadStarted "diag_log [diag_tickTime,'onPreloadStarted']; dayz_preloadFinished = false;";
	onPreloadFinished "diag_log [diag_tickTime,'onPreloadFinished']; dayz_preloadFinished = true;";
	with uiNameSpace do {RscDMSLoad=nil;}; // autologon at next logon

	if (!isDedicated) then {
		enableSaving [false, false];	
		startLoadingScreen ["","RscDisplayLoadCustom"];
		progressLoadingScreen 0;
		dayz_loadScreenMsg = localize 'str_login_missionFile';
		progress_monitor = [] execVM "dayz_code\system\progress_monitor.sqf";
		0 cutText ['','BLACK',0];
		0 fadeSound 0;
		0 fadeMusic 0;
	};

	initialized = false;
	call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
	call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";
	progressLoadingScreen 0.05;
	call compile preprocessFileLineNumbers "custom\publicEH.sqf";
	progressLoadingScreen 0.1;
	call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
	progressLoadingScreen 0.15;
	call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
	call compile preprocessFileLineNumbers "addons\bike\init.sqf";
	progressLoadingScreen 0.25;
	
	call compile preprocessFileLineNumbers "scripts\clickActions\init.sqf";
	call compile preprocessFileLineNumbers "scripts\traders\server_traders.sqf";
	call compile preprocessFileLineNumbers "baseJump\init.sqf";
	call compile preprocessFileLineNumbers "logistic\init.sqf";
	call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus11.sqf"; //Add trader city objects locally on every machine early
	initialized = true;
	//Taser 
	execVM "dayz_code\ddopp\init.sqf";
	execVM "dayz_code\gui\hud.sqf";
	enableCamShake false;
	if (dayz_REsec == 1) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\REsec.sqf";};
	//execVM "\z\addons\dayz_code\system\DynamicWeatherEffects.sqf";


	
	if (isServer) then {
		if (dayz_POIs && (toLower worldName == "chernarus")) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus\poi\init.sqf";};
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\dynamic_vehicle.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\server_monitor.sqf";
		execVM "\z\addons\dayz_server\traders\chernarus11.sqf"; //Add trader agents
		if (Z_singleCurrency && {Z_globalBanking && Z_globalBankingTraders}) then {execVM "\z\addons\dayz_server\bankTraders\chernarus.sqf";}; // Add banking agents

		//Get the server to setup what waterholes are going to be infected and then broadcast to everyone.
		if (dayz_infectiousWaterholes && (toLower worldName == "chernarus")) then {execVM "\z\addons\dayz_code\system\mission\chernarus\infectiousWaterholes\init.sqf";};
		
		// Lootable objects from CfgTownGeneratorDefault.hpp
		if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\system\mission\chernarus\MainLootableObjects.sqf"; };
	};

	if (!isDedicated) then {
		if (toLower worldName == "chernarus") then {
			execVM "\z\addons\dayz_code\system\mission\chernarus\hideGlitchObjects.sqf";
		};
		
		//Enables Plant lib fixes
		execVM "\z\addons\dayz_code\system\antihack.sqf";
		
		if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf"; };
		call compile preprocessFileLineNumbers "spawn\init.sqf";
		execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
		[] execVM "dayz_code\external\starter_crate\new_player.sqf";
		//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
		if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
		[] execVM "custom\base_SafeArea.sqf";
		
		if (Z_singleCurrency) then {
			call compile preprocessFileLineNumbers "scripts\zsc\zscInit.sqf";
			//execVM "scripts\zsc\playerHud.sqf";
			execVM "dayz_code\compile\remote_message.sqf";
		};
		execVM "scripts\servicePoints\init.sqf";
		// Menu
		//[]execVM "scripts\HUD\init_HUD.sqf";
		//Paycheck
		//execVM "scripts\Paycheck\Paychecks.sqf";
		//Paycheck2
		 execVM "Custom\fn_rewardLoyalty.sqf";

		waitUntil {scriptDone progress_monitor};
		cutText ["","BLACK IN", 3];
		3 fadeSound 1;
		3 fadeMusic 1;
		endLoadingScreen;
		[] execVM "CY6\teargas.sqf";
	};
	
	
//*******************Changed by brook**************************//
[] execVM "scripts\aispawner\aispawner.sqf";
//*************************************************************//	
	execVM "custom\16_safezone.sqf";
	//Weed
	 execVM "scripts\WeedFarm\farms.sqf";
	// Nox's Custom Action Menu
	 //execVM "actions\activate.sqf";
	//Notification part vi
	#include "p2.sqf"
	//Intro Music
	ExecVM "dayz_code\gui\key_binds.sqf";
	// Weapon GUI/Notifs
	ExecVM "dayz_code\scripts\weapons.sqf";
	
	///markers 
	[] execvm 'markers.sqf';
	
	//CY6 Notification System (Modular)
	if (isDedicated && !hasInterface || isServer) then { call compile preprocessFileLineNumbers "\z\addons\dayz_server\notifs\server_init.sqf"; };
	if (hasInterface && !isDedicated) then { call compile preprocessFileLineNumbers "dayz_code\init\notifs\client_init.sqf"; };
	if (isServer) then {execVM "\z\addons\dayz_server\andre_most_wanted.sqf";};
	// End
[] execVM "admineventsclientside\init_adminevents.sqf";
