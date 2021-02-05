
	{
		/*
			A list of events that are active
		*/
		enabledEvents[] = {"SupplyBox", "AbandonedSafe", "AmbientFlyOver", "EarthQuake"}; 
		enabledEscapeEvents[] = {"EscapeSupplyBox", "AmbientFlyOver", "EarthQuake"}; 

		class EarthQuake 
		{
			type = "spawn";
			function = "ExileServer_system_event_earthQuake_start";
			minTime = 60;
			maxTime = 180;
			minimumPlayersOnline = 20;
		};

		class SupplyBox 
		{
			/*
				Drops a supply box on a parachute next to a random airport on the map.
				The box may contain items. The box can be transported to a territory
				and installed to become a normal storage container.
			*/
			type = "spawn";
			function = "ExileServer_system_event_supplyBox_start";
			minTime = 60; // minutes
			maxTime = 180; // minutes
			minimumPlayersOnline = 10;
			dropRadius = 500; // 500m around an airport (including the main airport on Altis!)
			dropAltitude = 100; // altitude of the drop
			markerTime = 10; // minutes

			/*
				These are different types of boxes can be dropped.
				You can specify the cargo a box should contain.
				The type of box is chosen randomly from the following list.
				Add a type multiple times to increase the chance of being used.
			*/
			types[] = {"Beer", "Beer", "Tools", "Food", "Food", "RepairParts"};

			class BoxTypes
			{
				class Beer 
				{
					items[] = 
					{
						{"Exile_Item_Beer", 24}
					};
				};

				class Food 
				{
					items[] = 
					{
						{"Exile_Item_BBQSandwich", 5},
						{"Exile_Item_Catfood", 5},
						{"Exile_Item_ChristmasTinner", 5},
						{"Exile_Item_GloriousKnakworst", 5},
						{"Exile_Item_SausageGravy", 5},
						{"Exile_Item_Surstromming", 5},
						{"Exile_Item_CanOpener", 1},
						{"Exile_Item_CookingPot", 1},
						{"Exile_Item_Matches", 1}
					};
				};

				class Tools 
				{
					items[] = 
					{
						{"Exile_Item_Wrench", 1},
						{"Exile_Item_Shovel", 1},
						{"Exile_Item_Screwdriver", 1},
						{"Exile_Item_Pliers", 1},
						{"Exile_Item_Handsaw", 1},
						{"Exile_Item_FireExtinguisher", 1},
						{"Exile_Item_DuctTape", 1}
					};
				};

				class RepairParts 
				{
					items[] = 
					{
						{"Exile_Item_CarWheel", 8},
						{"Exile_Item_FuelCanisterFull", 4},
						{"Exile_Item_OilCanister", 1},
						{"Exile_Item_Grinder", 1},
						{"Exile_Item_CordlessScrewdriver", 1}
					};
				};
			};
		};

		class EscapeSupplyBox 
		{
			/*
				Drops a supply box on a parachute next to a random airport on the map.
				The box may contain items. The box can be transported to a territory
				and installed to become a normal storage container.
			*/
			type = "spawn";
			function = "ExileServer_system_event_escapeSupplyBox_start";
			minTime = 3; // minutes
			maxTime = 6; // minutes
			minimumPlayersOnline = 1;
			dropAltitude = 100; // altitude of the drop
			markerTime = 5; // minutes

			/*
				These are different types of boxes can be dropped.
				You can specify the cargo a box should contain.
				The type of box is chosen randomly from the following list.
				Add a type multiple times to increase the chance of being used.
			*/
			types[] = {"CyrusBulletCam","LynxBulletCam","LRRBulletCam","MAR10BulletCam","Rahim","MkIEMR","ASP1Kir","Mk14","CMR","EBR","MXSW","Mk200"};

			class BoxTypes
			{
				class CyrusBulletCam 
				{
					items[] = 
					{
						{"Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag", 1},
						{"10Rnd_93x64_DMR_05_Mag", 3},
						{"srifle_DMR_05_blk_F", 1}
					};
				};
				class LynxBulletCam 
				{
					items[] = 
					{
						{"Exile_Magazine_5Rnd_127x108_Bullet_Cam_Mag", 1},
						{"5Rnd_127x108_Mag", 3},
						{"srifle_GM6_F", 1}
					};
				};
				class LRRBulletCam 
				{
					items[] = 
					{
						{"Exile_Magazine_7Rnd_408_Bullet_Cam_Mag", 1},
						{"7Rnd_408_Mag", 3},
						{"srifle_LRR_F", 1}
					};
				};
				class MAR10BulletCam 
				{
					items[] = 
					{
						{"Exile_Magazine_10Rnd_338_Bullet_Cam_Mag", 1},
						{"10Rnd_338_Mag", 3},
						{"srifle_DMR_02_F", 1}
					};
				};
				class Rahim 
				{
					items[] = 
					{
						{"srifle_DMR_01_F", 1},
						{"10Rnd_762x54_Mag", 3}
					};
				};
				class MkIEMR 
				{
					items[] = 
					{
						{"srifle_DMR_03_woodland_F", 1},
						{"20Rnd_762x51_Mag", 2}
					};
				};
				class ASP1Kir 
				{
					items[] = 
					{
						{"srifle_DMR_04_F", 1},
						{"10Rnd_127x54_Mag", 3}
					};
				};
				class Mk14 
				{
					items[] = 
					{
						{"srifle_DMR_06_camo_F", 1},
						{"20Rnd_762x51_Mag", 2}
					};
				};
				class CMR 
				{
					items[] = 
					{
						{"srifle_DMR_07_ghex_F", 1},
						{"20Rnd_650x39_Cased_Mag_F", 2}
					};
				};
				class EBR 
				{
					items[] = 
					{
						{"srifle_EBR_F", 1},
						{"20Rnd_762x51_Mag", 2}
					};
				};
				class MXSW 
				{
					items[] = 
					{
						{"arifle_MX_SW_Black_F", 1},
						{"30Rnd_65x39_caseless_mag", 2}
					};
				};
				class Mk200 
				{
					items[] = 
					{
						{"LMG_Mk200_F", 1},
						{"200Rnd_65x39_cased_Box", 1}
					};
				};
			};
		};

		class AbandonedSafe
		{
			type = "spawn";
			function = "ExileServer_system_event_abandonedSafe_start";
			minTime = 60; // minutes
			maxTime = 120; // minutes
			minimumPlayersOnline = 0;
			markerTime = 15; // minutes
		};

		class AmbientFlyOver
		{
			type = "call";
			function = "ExileServer_system_event_ambientFlyOver_start";
			minTime = 30; // minutes
			maxTime = 90; // minutes
			minimumPlayersOnline = 1;
		};
	};
	
	class Logging
	{
		/*
			If logging is enabled separate logs will be made in the sql logs folder for each type
		*/
		traderLogging = 1;
		deathLogging = 1;
		territoryLogging = 1;
	};


	///////////////////////////////////////////////////////////////////////
	// EXILE ESCAPE CONFIGURATION
	// NOTE: REQUIRES ExileEscape.MAPNAME MISSION FILE TO BE LOADED!
	///////////////////////////////////////////////////////////////////////
	class Escape
	{
		/*
			A very simple option with powerful consequences
			Set to 1 to enable Exile Escape!
		*/
		enableEscape = 0;
		
		/*
			Map Configs
		*/
		class Tanoa 
		{
			//Starting Position and radius
			startingLocation[] = {1277.18,560.44,0.00142193};
			startingAreaRadius = 100;
		};
		
		class Altis
		{
			//Starting Position and radius
			startingLocation[] = {8452.87, 25086.9, 0};
			startingAreaRadius = 200;
		};

		// Which players are allowed to spectate after they are dead.
		// Useful for admins/mods and streamers
		spectatorUIDs[] = 
		{
			"76561198127675194",	// Eichi
			"0",	// Grim
			"0",	// Vish
			"0"		// WolfkillArcadia
		};
		
		//Number of players needed before the game initializes
		minimumPlayersOnline = 10;
		
		//Radius of the circle for each round
		roundZoneRadius[] = {1000, 500, 250};
		
		//Final shrink size of last round. To prevent shrinking make finalZoneRadius equal to last roundZoneRadius
		finalZoneRadius = 100;
		
		//Time in minutes after minimumPlayersOnline met before game begins
		timeBeforeStart = 5;
		
		//Total Round Minutes
		minutesPerRound = 10;
		
		//Minutes after round starts before new preview
		minutesBeforePreview = 7;

		// How much do ppl get when they win?
		respectWinKill = 1000;
		respectWinGetIn = 500;
		respectWinSuicide = 500;
		
		//Number of weapon boxes to spawn
		numberOfBoxes = 10;
	};
};
