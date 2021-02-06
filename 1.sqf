
	Main DMS Config File

	Created by eraser1
	Several revisions and additions have been made by community members.


	A lot of these configs are influenced by WAI :P
	https://github.com/nerdalertdk/WICKED-AI
*/

// You dawg... heard you like configs... so here's some configs for your config.... so you can configure your configuration to make it easier to configure your configuration http://i.imgur.com/9eJjEEo.jpg


// If you don't want the AI to have marksman DLC weapons, then simply remove the line below, or comment it by putting // at the beginning of the line
#define GIVE_AI_MARKSMAN_DLC_WEAPONS 1

// If you don't want crates to spawn with marksman DLC weapons, simply remove the line below or comment it out.
#define USE_MARKSMAN_DLC_WEAPONS_IN_CRATES 1

// Uncomment this if you want Apex weapons on AI.
#define GIVE_AI_APEX_WEAPONS 1

// Uncomment this if you want Apex gear on AI. Uniforms, Vests, Backpacks, Helmets,Scopes
#define GIVE_AI_APEX_GEAR 1

// Uncomment this if you want Apex weapons in loot crates
#define USE_APEX_WEAPONS_IN_CRATES 1

// Uncomment this if you want Apex vehicles to spawn for AI/missions
#define USE_APEX_VEHICLES 1




DMS_Use_Map_Config = true;	// Whether or not to use config overwrites specific to the map.
/*
	If you are using a map other than a map listed in the "map_configs" folder, you should set this to false OR create a new file within the map_configs folder for the map so that you don't get a missing file error.
	To share your map-specific config, please create a merge request on GitHub and/or leave a message on the DMS thread in the Exile forums.
	For any questions regarding map-specific configs, please leave a reply in the DMS thread on the Exile forums.
*/

DMS_Enable_RankChange = false; // Whether or not to use Rank Changes. (Required 'true' if using Occupation)
/*
	I am sharing this upgrade to all. If you utilize GR8 Humanity (fully compatible) or a custom version of a ranking system(simple variable changes), this will allow your players to score +/- for Bandit and Hero kills as well as a custom Survivor Faction added to DMS as well. You can still utilize the HERO / BANDIT / SURVIVOR respect and poptab settings for gameplay :) ENJOY! DONKEYPUNCH.INFO!
*/

DMS_Add_AIKill2DB = false;  // Adds killstat for player in the database ;)

DMS_SpawnMissions_Scheduled = false;	// Whether or not to spawn missions in a scheduled environment. Setting to true may help with lag when certain missions spawn.
//Note, if you have the above to true, you need to set DMS_ai_freezeOnSpawn = false; and DMS_ai_share_info = true;

/* Mission System Settings */
	/*General settings for dynamic missions*/
	DMS_DynamicMission					= true;						// Enable/disable dynamic mission system.
	DMS_MaxBanditMissions				= 5;						// Maximum number of Bandit Missions running at the same time
	DMS_TimeToFirstMission				= [180,420];				// [Minimum,Maximum] time between first mission spawn. | DEFAULT: 3-7 minutes.
	DMS_TimeBetweenMissions				= [600,900];				// [Minimum,Maximum] time between missions (if mission limit is not reached) | DEFAULT: 10-15 mins
	DMS_MissionTimeout					= [900,1800]; 				// [Minimum,Maximum] time it will take for a mission to timeout | DEFAULT: 15-30 mins
	DMS_MissionTimeoutResetRange		= 1500;						// If a player is this close to a mission then it won't time-out. Set to 0 to disable this check.
	DMS_MissionTimeoutResetFrequency	= 180;						// How often (in seconds) to check for nearby players and reset the mission timeout.
	DMS_ResetMissionTimeoutOnKill		= true;						// Whether or not to reset the mission timeout when an AI is killed.
	/*General settings for dynamic missions*/

	/*General settings for static missions*/
	DMS_StaticMission					= true;						// Enable/disable static mission system.
	DMS_MaxStaticMissions				= 1;						// Maximum number of Static Missions running at the same time. It's recommended you set this to the same amount of static missions that you have in total. This config will be ignored by "DMS_StaticMissionsOnServerStart".
	DMS_TimeToFirstStaticMission		= [30,30];					// [Minimum,Maximum] time between first static mission spawn. | DEFAULT: 3-7 minutes.
	DMS_TimeBetweenStaticMissions		= [900,1800];				// [Minimum,Maximum] time between static missions (if static mission limit is not reached) | DEFAULT: 15-30 mins
	DMS_StaticMissionTimeOut			= [1800,3600]; 				// [Minimum,Maximum] time it will take for a static mission to timeout | DEFAULT: 30-60 mins
	DMS_StaticMissionTimeoutResetRange	= 1500;						// If a player is this close to a mission then it won't time-out. Set to 0 to disable this check.
	DMS_SMissionTimeoutResetFrequency	= 180;						// How often (in seconds) to check for nearby players and reset the mission timeout for static missions.
	DMS_ResetStaticMissionTimeoutOnKill	= true;						// Whether or not to reset the mission timeout when an AI is killed (for Static Missions).
	DMS_StaticMinPlayerDistance			= 1500;						// If a player is this close to a mission location, then it won't spawn the mission and will wait 60 seconds before attempting to spawn it.
	DMS_AllowStaticReinforcements		= true;						// Whether or not static missions will receive reinforcements. This will simply disable the calling of GroupReinforcementsMonitor;
	DMS_SpawnFlareOnReinforcements		= true;						// Whether or not to spawn a flare and noise when AI reinforcements have spawned.
	/*General settings for static missions*/

	DMS_playerNearRadius				= 100;						// How close a player has to be to a mission in order to satisfy the "playerNear" mission requirement (can be customized per mission).

	DMS_AI_KillPercent					= 100;						// The percent amount of AI that need to be killed for "killPercent" mission requirement (NOT IMPLEMENTED)

	/*Mission Marker settings*/
	DMS_ShowDifficultyColorLegend		= false;						// Whether or not to show a "color legend" at the bottom left of the map that shows which color corresponds to which difficulty. I know it's not very pretty, meh.
	DMS_ShowMarkerCircle				= false;					// Whether or not to show the colored "circle" around a mission marker.
	DMS_MarkerText_ShowMissionPrefix	= true;						// Whether or not to place a prefix before the mission marker text. Enable this if your players get confused by the marker names :P
	DMS_MarkerText_MissionPrefix		= "Mission:";				// The text displayed before the mission name in the mission marker.
	DMS_MarkerText_ShowAICount			= true;						// Whether or not to display the number of remaining AI in the marker name.
	DMS_MarkerText_ShowAICount_Static	= true;						// Whether or not to display the number of remaining AI in the marker name for STATIC missions.
	DMS_MarkerText_AIName				= "Units";					// What the AI will be called in the map marker. For example, the marker text can show: "Car Dealer (3 Units remaining)"
	DMS_MarkerPosRandomization			= false;					// Randomize the position of the circle marker of a mission
	DMS_MarkerPosRandomRadius			= [25,100];					// Minimum/Maximum distance that the circle marker position will be randomized | DEFAULT: 0 meters to 200 meters
	DMS_RandomMarkerBrush				= "Cross";					// See: https://community.bistudio.com/wiki/setMarkerBrush
	DMS_MissionMarkerWinDot				= true;						// Keep the mission marker dot with a "win" message after mission is over
	DMS_MissionMarkerLoseDot			= true;						// Keep the mission marker dot with a "lose" message after mission is over
	DMS_MissionMarkerWinDot_Type		= "mil_end";				// The marker type to show when a mission is completed. Refer to: https://community.bistudio.com/wiki/cfgMarkers
	DMS_MissionMarkerLoseDot_Type		= "KIA";					// The marker type to show when a mission fails. Refer to: https://community.bistudio.com/wiki/cfgMarkers
	DMS_MissionMarkerWinDotTime			= 30;						// How many seconds the "win" mission dot will remain on the map
	DMS_MissionMarkerLoseDotTime		= 30;						// How many seconds the "lose" mission dot will remain on the map
	DMS_MissionMarkerWinDotColor		= "ColorBlue";				// The color of the "win" marker dot
	DMS_MissionMarkerLoseDotColor		= "ColorRed";				// The color of the "lose" marker dot
	/*Mission Marker settings*/

	/*Mission Cleanup settings*/
	DMS_CompletedMissionCleanup			= true;						// Cleanup mission-spawned buildings and AI bodies after some time
	DMS_CompletedMissionCleanupTime		= 3600;						// Minimum time until mission-spawned buildings and AI are cleaned up
	DMS_CleanUp_PlayerNearLimit			= 20;						// Cleanup of an object is aborted if a player is this many meters close to the object
	DMS_AIVehCleanUpTime				= 300;						// Time until a destroyed AI vehicle is cleaned up.
	/*Mission Cleanup settings*/

	/*Mission spawn location settings*/
	DMS_UsePredefinedMissionLocations	= false;					// Whether or not to use a list of pre-defined mission locations instead before attempting to find a random (valid) position. The positions will still be checked for validity. If none of the provided positions are valid, a random one will be generated.
	DMS_PredefinedMissionLocations = 	[							// List of Preset/Predefined mission locations.
											/* List of positions:
											position1: [x_1,y_1,z_1],
											position2: [x_2,y_2,z_2],
											...
											positionN: [x_N,y_N,z_N]
											*/

										];

	DMS_PredefinedMissionLocations_WEIGHTED = 	[					// List of Preset/Predefined mission locations WITH WEIGHTED CHANCES. This will NOT override "DMS_PredefinedMissionLocations", and everything from "DMS_PredefinedMissionLocations" will behave as though it has 1 weight per position.
											/* List of arrays with position and weighted chance:
											[[x_1,y_1,z_1], chance_1],
											[[x_2,y_2,z_2], chance_2],
											...
											[[x_N,y_N,z_N], chance_N]
											*/

										];
	DMS_ThrottleBlacklists				= true;						// Whether or not to "throttle" the blacklist distance parameters in DMS_fnc_FindSafePos. This will reduce the values of the minimum
																		//distances for some of the below parameters if several attempts have been made, but a suitable position was not yet found. This
																		//should help with server performance drops when spawning a mission, as DMS_fnc_findSafePos is the most resource-intensive function.
	DMS_AttemptsUntilThrottle			= 15;						// How many attempts until the parameters are throttled.
	DMS_ThrottleCoefficient				= 0.9;						// How much the parameters are throttled. The parameters are multiplied by the coefficient, so 0.9 means 90% of whatever the parameter was.
	DMS_MinThrottledDistance			= 500;						// The minimum distance to which it will throttle. If the throttled value is less than this value, then this value is used instead.
	DMS_PlayerNearBlacklist				= 2000;						// Missions won't spawn in a position this many meters close to a player
	DMS_SpawnZoneNearBlacklist			= 2500;						// Missions won't spawn in a position this many meters close to a spawn zone
	DMS_TraderZoneNearBlacklist			= 2500;						// Missions won't spawn in a position this many meters close to a trader zone
	DMS_MissionNearBlacklist			= 2500;						// Missions won't spawn in a position this many meters close to another mission
	DMS_WaterNearBlacklist				= 500;						// Missions won't spawn in a position this many meters close to water
	DMS_TerritoryNearBlacklist			= 100;						// Missions won't spawn in a position this many meters close to a territory flag. This is a resource intensive check, don't set this value too high!
	DMS_MixerNearBlacklist				= 1000;						// Missions won't spawn in a position this many meters close to a concrete mixer
	DMS_ContaminatedZoneNearBlacklist	= 1000;						// Missions won't spawn in a position this many meters close to a contaminated zone
	DMS_MinSurfaceNormal				= 0.9;						// Missions won't spawn in a position where its surfaceNormal is less than this amount. The lower the value, the steeper the location. Greater values means flatter locations. Values can range from 0-1, with 0 being sideways, and 1 being perfectly flat. For reference: SurfaceNormal of about 0.7 is when you are forced to walk up a surface. If you want to convert surfaceNormal to degrees, use the arc-cosine of the surfaceNormal. 0.9 is about 25 degrees. Google "(arccos 0.9) in degrees"
	DMS_MinDistFromWestBorder			= 250;						// Missions won't spawn in a position this many meters close to the western map border.
	DMS_MinDistFromEastBorder			= 250;						// Missions won't spawn in a position this many meters close to the easter map border.
	DMS_MinDistFromSouthBorder			= 250;						// Missions won't spawn in a position this many meters close to the southern map border.
	DMS_MinDistFromNorthBorder			= 250;						// Missions won't spawn in a position this many meters close to the northern map border.
	DMS_SpawnZoneMarkerTypes =			[							// If you're using custom spawn zone markers, make sure you define them here. CASE SENSITIVE!!!
											"ExileSpawnZoneIcon"
										];
	DMS_TraderZoneMarkerTypes =			[							// If you're using custom trader markers, make sure you define them here. CASE SENSITIVE!!!
											"ExileTraderZoneIcon"
										];
	DMS_MixerMarkerTypes =				[							// If you're using custom concrete mixer map markers, make sure you define them here. CASE SENSITIVE!!!
											"ExileConcreteMixerZoneIcon"
										];
	DMS_ContaminatedZoneMarkerTypes =	[							// If you're using custom contaminated zone markers, make sure you define them here. CASE SENSITIVE!!!
											"ExileContaminatedZoneIcon"
										];
	/*Mission spawn location settings*/

	DMS_MinWaterDepth					= 20;						// Minimum depth of water that an underwater mission can spawn at.

	/*Crate/Box settings*/
	DMS_HideBox							= false;					// "Hide" the box from being visible by players until the mission is completed.
	DMS_EnableBoxMoving					= true;						// Whether or not to allow the box to move and/or be lifted by choppers.
	DMS_SpawnBoxSmoke					= true;						// Spawn a smoke grenade on mission box upon misson completion during daytime
	DMS_DefaultSmokeClassname 			= "SmokeShellPurple";		// Classname of the smoke you want to spawn.
	DMS_SpawnBoxIRGrenade				= true;						// Spawn an IR grenade on mission box upon misson completion during nighttime
	/*Crate/Box settings*/

	/*Mine settings*/
	DMS_SpawnMinefieldForEveryMission	= false;					// Whether or not to spawn a minefield for every dynamic mission.
	DMS_SpawnMinesAroundMissions		= true;						// Whether or not to spawn mines around AI missions that have them.
	DMS_despawnMines_onCompletion		= true;						// Despawn mines spawned around missions when the mission is completed
	DMS_MineInfo_easy					= [5,50];					// Mine info for "easy" missions. This will spawn 5 mines within a 50m radius.
	DMS_MineInfo_moderate				= [10,50];					// Mine info for "moderate" missions. This will spawn 10 mines within a 50m radius.
	DMS_MineInfo_difficult				= [15,75];					// Mine info for "difficult" missions. This will spawn 15 mines within a 75m radius.
	DMS_MineInfo_hardcore				= [25,100];					// Mine info for "hardcore" missions. This will spawn 25 mines within a 100m radius.
	DMS_SpawnMineWarningSigns			= true;						// Whether or not to spawn mine warning signs around a minefield.
	DMS_BulletProofMines				= true;						// Whether or not you want to make the mines bulletproof. Prevents players from being able to shoot the mines and creating explosions.
	/*Mine settings*/

	DMS_MinPlayerCount					= 1; 						// Minimum number of players until mission start
	DMS_MinServerFPS					= 5; 						// Minimum server FPS for missions to start

	/*Mission notification settings*/
	DMS_PlayerNotificationTypes =		[									// Notification types. Supported values are: ["dynamicTextRequest", "standardHintRequest", "systemChatRequest", "textTilesRequest", "ExileToasts"]. Details below.
											//"dynamicTextRequest",			// You should use either "dynamicTextRequest" or "textTilesRequest", and I think "textTilesRequest" looks better, but this is less performance-intensive.
											//"standardHintRequest",		// Hints are a bit wonky...
											//"textTilesRequest",			// Keep in mind you can only have 1 "text tile" message up at a time, so the message will disappear if the player gets a kill or something while the message is shown. This message type is also performance-intensive, so I advise against it.
											//"systemChatRequest",			// Always nice to show in chat so that players can scroll up to read the info if they need to.
											"ExileToasts"					// Default notification type since Exile 0.98, see (http://www.exilemod.com/devblog/new-ingame-notifications/)
										];

		/*Exile Toasts Notification Settings*/
	DMS_ExileToasts_Title_Size			= 22;						// Size for Client Exile Toasts  mission titles.
	DMS_ExileToasts_Title_Font			= "puristaMedium";			// Font for Client Exile Toasts  mission titles.
	DMS_ExileToasts_Message_Color		= "#FFFFFF";				// Exile Toasts color for "ExileToast" client notification type.
	DMS_ExileToasts_Message_Size		= 19;						// Exile Toasts size for "ExileToast" client notification type.
	DMS_ExileToasts_Message_Font		= "PuristaLight";			// Exile Toasts font for "ExileToast" client notification type.
		/*Exile Toasts Notification Settings*/

		/*Dynamic Text Notification Settings*/
	DMS_dynamicText_Duration			= 7;						// Number of seconds that the message will last on the screen.
	DMS_dynamicText_FadeTime			= 1.5;						// Number of seconds that the message will fade in/out (does not affect duration).
	DMS_dynamicText_Title_Size			= 1.2;						// Size for Client Dynamic Text mission titles.
	DMS_dynamicText_Title_Font			= "puristaMedium";			// Font for Client Dynamic Text mission titles.
	DMS_dynamicText_Message_Color		= "#FFFFFF";				// Dynamic Text color for "dynamicTextRequest" client notification type.
	DMS_dynamicText_Message_Size		= 0.65;						// Dynamic Text size for "dynamicTextRequest" client notification type.
	DMS_dynamicText_Message_Font		= "OrbitronMedium";			// Dynamic Text font for "dynamicTextRequest" client notification type.
		/*Dynamic Text Notification Settings*/

		/*Standard Hint Notification Settings*/
	DMS_standardHint_Title_Size			= 2;						// Size for Client Standard Hint mission titles.
	DMS_standardHint_Title_Font			= "puristaMedium";			// Font for Client Standard Hint mission titles.
	DMS_standardHint_Message_Color		= "#FFFFFF";				// Standard Hint color for "standardHintRequest" client notification type.
	DMS_standardHint_Message_Size		= 1;						// Standard Hint size for "standardHintRequest" client notification type.
	DMS_standardHint_Message_Font		= "OrbitronMedium";			// Standard Hint font for "standardHintRequest" client notification type.
		/*Standard Hint Notification Settings*/

		/*Text Tiles Notification Settings*/
	DMS_textTiles_Duration				= 7;						// Number of seconds that the message will last on the screen.
	DMS_textTiles_FadeTime				= 1.5;						// Number of seconds that the message will fade in/out (does not affect duration).
	DMS_textTiles_Title_Size			= 2.3;						// Size for Client Text Tiles mission titles.
	DMS_textTiles_Title_Font			= "puristaMedium";			// Font for Client Text Tiles mission titles.
	DMS_textTiles_Message_Color			= "#FFFFFF";				// Text Tiles color for "textTilesRequest" client notification type.
	DMS_textTiles_Message_Size			= 1.25;						// Text Tiles size for "textTilesRequest" client notification type.
	DMS_textTiles_Message_Font			= "OrbitronMedium";			// Text Tiles font for "textTilesRequest" client notification type.
		/*Text Tiles Notification Settings*/

	/*Mission notification settings*/

	DMS_RandomBanditMissionsOnStart		= 0;						// Number of (random) bandit missions to spawn when the server starts, just so players don't have to wait for missions to spawn.
	DMS_BanditMissionTypes =			[			//	List of missions with spawn chances. If they add up to 100%, they represent the percentage chance each one will spawn
											["bandits",3],
											["bauhaus",3],
											["beertransport",3],
											["behindenemylines",3],
											["blackhawkdown",3],
											["cardealer",3],
											["construction",3],
											["donthasslethehoff",3],
											["foodtransport",3],
											["guntransport",3],
											["humanitarian",3],
											["lost_battalion",3],
											["medical",3],
											["mercbase",2],
											["mercenaries",3],
											["nedbuilding1_mission",3],
											["nedcar_mission",4],
											["nedguns1_mission",3],
											["nedhatchback_mission",3],
											["nedhunter_mission",2],
											["nedifrit_mission",2],
											["nedlittlebird_mission",2],
											["nedmedical1_mission",3],
											["nedoffroad_mission",3],
											["nedresearch_mission",3],
											["nedsnipercamp_mission",3],
											["nedstrider_mission",2],
											["nedural_mission",3],
											["roguenavyseals",3],
											["thieves",3],
											["walmart",3]
										];


	DMS_StaticMissionTypes =			[								// List of STATIC missions with spawn chances.
											//["saltflats",1]		//<--Example (already imported by default on Altis in map configs)
											//["slums",1]			//<--Example (already imported by default on Altis in map configs)
											//["occupation",1]		//<--Example
											//["sectorB",1]			//<--Example for Taviana
										];

	DMS_SpecialMissions =				[								// List of special missions with restrictions. Each element must be defined as [mission<STRING>, minPlayers<SCALAR>, maxPlayers<SCALAR>, timesPerRestart<SCALAR>, _timeBetween<SCALAR>].
											//["specops",15,60,2,900]	//<-- Example for a mission named "specops.sqf" that must be placed in the "special" folder. It will only spawn when there are at least 15 players, less than 60 players, it will only spawn up to twice per restart, and at least 900 seconds must pass before another instance of the mission can spawn.
										];

	DMS_BasesToImportOnServerStart = 	[								// List of static bases to import on server startup (spawned post-init). This will reduce the amount of work the server has to do when it actually spawns static missions, and players won't be surprised when a base suddenly pops up. You can also include any other M3E-exported bases to spawn here.
											//"saltflatsbase",		//<--Example (already imported by default on Altis)
											//"slums_objects"		//<--Example (already imported by default on Altis)
										];

	DMS_BanditMissionsOnServerStart =	[
											//"construction"		//<-- Example
										];

	DMS_StaticMissionsOnServerStart =	[								// List of STATIC missions with spawn chances.
											//"saltflats"			//<--Example
											//"slums"				//<--Example
											//"occupation"			//<--Example
											//"sectorB"				//<--Example for Taviana
										];



	DMS_findSafePosBlacklist =			[								// This list defines areas where missions WILL NOT spawn. For position blacklist info refer to: http://www.exilemod.com/topic/61-dms-defents-mission-system/?do=findComment&comment=31190
											// There are examples in the altis map config (it blacklists the salt flats) and in the tavi/taviana map configs.

											//[[2350,4680],100]		// This random example blacklists any position within 100 meters of coordinates "[2350,4680]"
										];
/* Mission System Settings */


/* AI Settings */
	DMS_AI_Classname					= "O_Soldier_unarmed_F";				// Since some of you wanted this...

	DMS_AI_NamingType					= 0;						// This specifies the "naming scheme" for the AI. 0 corresponds with the default ArmA names; 1 means you want a DMS name (eg: [DMS BANDIT SOLDIER 123]); 2 means you want to generate a name from a list of first and last names (DMS_AI_FirstNames, DMS_AI_LastNames).
	DMS_AI_FirstNames =					[							// List of "first names" that an AI can have. Only used when DMS_AI_NamingType = 2.
											"Adam",
											"Benjamin",
											"Charles",
											"David",
											"Eric"
											// etc.
										];
	DMS_AI_LastNames =					[							// List of "last names" that an AI can have. Only used when DMS_AI_NamingType = 2.
											"Smith",
											"Johnson",
											"Williams",
											"Jones",
											"Brown"
											// etc.
										];

	DMS_Show_Kill_Poptabs_Notification	= true;						// Whether or not to show the poptabs gained/lost message on the player's screen when killing an AI. (It will still change the player's money, it just won't show the "Money Received" notification)
	DMS_Show_Kill_Respect_Notification	= true;						// Whether or not to show the "Frag Message" on the player's screen when killing an AI. (It will still change the player's respect, it just won't show the "AI Killed" frag message)
	DMS_Show_Kill_Rank_Notification		= true;
	DMS_Show_Party_Kill_Notification	= false;						// Whether or not to show in chat when a party member kills an AI.

	DMS_Spawn_AI_With_Money				= true;						// Whether or not to spawn AI with money that can be looted from the body.
	DMS_AIMoney_PopulationMultiplier	= 5;						// This determines how much EXTRA money an AI will have on his body. For example, setting this to 5 and having a server population of 30 means the AI will have an extra 150 poptabs on the body. Set to 0 to disable.

	DMS_GiveMoneyToPlayer_OnAIKill		= true;						// Whether or not to give money directly to players when they kill AI (old method of giving money).
	DMS_GiveRespectToPlayer_OnAIKill	= true;						// Whether or not to give respect to players when they kill AI.

	DMS_Bandit_Soldier_MoneyGain		= 50;						// The amount of Poptabs gained for killing a bandit soldier
	DMS_Bandit_Soldier_RepGain			= 10;						// The amount of Respect gained for killing a bandit soldier
	DMS_Bandit_Soldier_RankGain			= 15;
	DMS_Bandit_Soldier_SpawnMoney		= 50;						// The amount of Poptabs carried by a bandit soldier

	DMS_Bandit_Static_MoneyGain			= 75;						// The amount of Poptabs gained for killing a bandit static gunner
	DMS_Bandit_Static_RepGain			= 15;						// The amount of Respect gained for killing a bandit static gunner
	DMS_Bandit_Static_RankGain			= 30;
	DMS_Bandit_Static_SpawnMoney		= 75;						// The amount of Poptabs carried by a bandit static gunner

	DMS_Bandit_Vehicle_MoneyGain		= 100;						// The amount of Poptabs gained for killing a bandit vehicle crew member
	DMS_Bandit_Vehicle_RepGain			= 25;						// The amount of Respect gained for killing a bandit vehicle crew member
	DMS_Bandit_Vehicle_RankGain			= 50;
	DMS_Bandit_Vehicle_SpawnMoney		= 100;						// The amount of Poptabs carried by a bandit vehicle crew member

/* DonkeyPunchDMS Custom Settings for Hero AI*/
	DMS_Hero_Soldier_MoneyGain			= 100;						// The amount of Poptabs gained for killing a hero soldier
	DMS_Hero_Soldier_RepGain			= 20;						// The amount of Respect gained for killing a hero soldier
	DMS_Hero_Soldier_RankGain			= -30;
	DMS_Hero_Soldier_SpawnMoney			= 100;						// The amount of Poptabs carried by a hero soldier

	DMS_Hero_Static_MoneyGain			= 120;						// The amount of Poptabs gained for killing a hero static gunner
	DMS_Hero_Static_RepGain				= 30;						// The amount of Respect gained for killing a hero static gunner
	DMS_Hero_Static_RankGain			= -60;
	DMS_Hero_Static_SpawnMoney			= 120;						// The amount of Poptabs carried by a hero static gunner

	DMS_Hero_Vehicle_MoneyGain			= 200;						// The amount of Poptabs gained for killing a hero vehicle crew member
	DMS_Hero_Vehicle_RepGain			= 50;						// The amount of Respect gained for killing a hero vehicle crew member
	DMS_Hero_Vehicle_RankGain			= -100;
	DMS_Hero_Vehicle_SpawnMoney			= 200;						// The amount of Poptabs carried by a hero vehicle crew member
/* DonkeyPunchDMS Custom Settings for Survivor AI*/
	DMS_Survivor_Soldier_MoneyGain		= -100;						// The amount of Poptabs gained for killing a Survivor soldier
	DMS_Survivor_Soldier_RepGain		= -100;						// The amount of Respect gained for killing a Survivor soldier
	DMS_Survivor_Soldier_RankGain		= -250;
	DMS_Survivor_Soldier_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor soldier

	DMS_Survivor_Static_MoneyGain		= -100;						// The amount of Poptabs gained for killing a Survivor static gunner
	DMS_Survivor_Static_RepGain			= -100;						// The amount of Respect gained for killing a Survivor static gunner
	DMS_Survivor_Static_RankGain		= -400;
	DMS_Survivor_Static_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor static gunner

	DMS_Survivor_Vehicle_MoneyGain		= -500;						// The amount of Poptabs gained for killing a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RepGain		= -100;						// The amount of Respect gained for killing a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RankGain		= -600;
	DMS_Survivor_Vehicle_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor vehicle crew member

	DMS_AIKill_DistanceBonusMinDistance	= 100;						// Minimum distance from the player to the AI to apply the distance bonus.
	DMS_AIKill_DistanceBonusCoefficient	= 0.05;						// If the distance from the player to the killed unit is more than "DMS_AIKill_DistanceBonusMinDistance" meters then the player gets a respect bonus equivalent to the distance multiplied by this coefficient. For example, killing an AI from 400 meters will give 100 extra respect (when the coefficient is 0.25). Set to 0 to disable the bonus. This bonus will not be applied if there isn't a regular AI kill bonus.

	DMS_Diff_RepOrTabs_on_roadkill 		= true;						// Whether or not you want to use different values for giving respect/poptabs when you run an AI over. Default values are NEGATIVE. This means player will LOSE respect or poptabs.
	DMS_Bandit_Soldier_RoadkillMoney	= -10;						// The amount of Poptabs gained/lost for running over a bandit soldier
	DMS_Bandit_Soldier_RoadkillRep		= -5;						// The amount of Respect gained/lost for running over a bandit soldier
	DMS_Bandit_Soldier_RoadkillRank		= 20;
	DMS_Bandit_Static_RoadkillMoney		= -10;						// The amount of Poptabs gained/lost for running over a bandit static gunner
	DMS_Bandit_Static_RoadkillRep		= -5;						// The amount of Respect gained/lost for running over a bandit static gunner
	DMS_Bandit_Static_RoadkillRank		= 30;
	DMS_Bandit_Vehicle_RoadkillMoney	= -10;						// The amount of Poptabs gained/lost for running over a bandit vehicle crew member
	DMS_Bandit_Vehicle_RoadkillRep		= -5;						// The amount of Respect gained/lost for running over a bandit vehicle crew member
	DMS_Bandit_Vehicle_RoadkillRank		= 50;
/* DonkeyPunchDMS Custom RoadKill Settings for Hero AI*/
	DMS_Hero_Soldier_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero soldier
	DMS_Hero_Soldier_RoadkillRep		= 10;						// The amount of Respect gained/lost for running over a hero soldier
	DMS_Hero_Soldier_RoadkillRank		= -40;
	DMS_Hero_Static_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero static gunner
	DMS_Hero_Static_RoadkillRep			= 10;						// The amount of Respect gained/lost for running over a hero static gunner
	DMS_Hero_Static_RoadkillRank		= -60;
	DMS_Hero_Vehicle_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero vehicle crew member
	DMS_Hero_Vehicle_RoadkillRep		= 10;						// The amount of Respect gained/lost for running over a hero vehicle crew member
	DMS_Hero_Vehicle_RoadkillRank		= -100;
/* DonkeyPunchDMS Custom Roadkill Settings for Survivor AI*/
	DMS_Survivor_Soldier_RoadkillMoney	= -200;						// The amount of Poptabs gained/lost for running over a Survivor soldier
	DMS_Survivor_Soldier_RoadkillRep	= -200;						// The amount of Respect gained/lost for running over a Survivor soldier
	DMS_Survivor_Soldier_RoadkillRank	= -200;
	DMS_Survivor_Static_RoadkillMoney	= -200;						// The amount of Poptabs gained/lost for running over a Survivor static gunner
	DMS_Survivor_Static_RoadkillRep		= -200;						// The amount of Respect gained/lost for running over a Survivor static gunner
	DMS_Survivor_Static_RoadkillRank	= -200;
	DMS_Survivor_Vehicle_RoadkillMoney	= -500;						// The amount of Poptabs gained/lost for running over a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RoadkillRep	= -100;						// The amount of Respect gained/lost for running over a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RoadkillRank	= -100;

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
	DMS_ai_freezeOnSpawn				= true;						// Whether or not to freeze an AI group when initially spawned.

	DMS_ai_share_info					= false;					// Share info about killer
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
