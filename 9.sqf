//bombcrate by juandayz with base on rubbletown and 4 sidemissions

private ["_timer","_spawnChance", "_spawnMarker", "_spawnRadius", "_markerRadius", "_item", "_debug", "_start_time", "_loot","_loot2", "_loot_amount", "_loot_box", "_wait_time", "_spawnRoll", "_position", "_event_marker", "_loot_pos", "_debug_marker","_loot_box", "_hint","_spawnenemys","_enemytype","_aicustomgear","_usewaypoints","_waypointsrange","_enemy","_enemy2","_enemy3","_enemy4","_enemy1","_enemy5","_enemy6","_enemy7"];
 
_spawnChance =  0.70; // Percentage chance of event happening
_markerRadius = 250; // Radius the loot can spawn and used for the marker
_debug = true; // Puts a marker exactly were the loot spawns
 

_spawnenemys = false; //allow or disallow enemy AI
_enemytype = ["TK_Commander_EP1","RU_Soldier_AR","Ins_Commander","RU_Soldier_TL","TK_Soldier_SL_EP1"] call BIS_fnc_selectRandom;
_aicustomgear = true;//allow custom gear on ai
_usewaypoints = true; //allow ai to move around
_waypointsrange = 20;//range to move ai for waypoints 
 
 
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////If _aicustomgear = true; customize the gear////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
_Packlist = [
"DZ_Patrol_Pack_EP1",
"DZ_Assault_Pack_EP1",
"DZ_Czech_Vest_Pouch",
"DZ_ALICE_Pack_EP1",
"DZ_TK_Assault_Pack_EP1",
"DZ_British_ACU",
"DZ_CivilBackpack_EP1",
"DZ_Backpack_EP1"
]call BIS_fnc_selectRandom;

_Gear0 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear1 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear2 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear3 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear4 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear5 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear6 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear7 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_AISkills = [	
	["aimingAccuracy",0.20,0.25],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,0.85],
	["spotTime",0.70,0.85],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];


//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////If _aicustomgear = true; customize the gear////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//


 
 
 
_loot_box = "USVehicleBox";
_loot_lists = [
[
["M9SD","FN_FAL","M4A3_CCO_EP1","AKS_74_kobra","Sa58V_RCO_EP1","ItemEtool","ItemCrowbar","ItemKnife","ItemSledge","ItemCompass","Binocular","Binocular_Vector","NVGoggles","ItemGPS"],
["ItemBriefcase100oz","150Rnd_127x107_DSHKM","20Rnd_762x51_FNFAL","20Rnd_762x51_FNFAL","20Rnd_762x51_FNFAL","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_545x39_AK","30Rnd_545x39_AK","30Rnd_545x39_AK","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD"]
],
[
["M4A1_HWS_GL_SD_Camo","M16A2GL","M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["ItemBriefcase100oz","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor"]
],
[
["ItemToolbox","M4A1_HWS_GL_SD_Camo","M16A2GL","M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor"]
],
[
["ChainSaw"],
["ItemBriefcase100oz","ItemBriefcase100oz","ItemCorrugated","ItemCorrugated","ItemCorrugated","ItemCorrugated","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemComboLock","ItemGenerator"]
],
[
["Mk48_CCO_DZ","M240_DZ","RPK_74"],
["ItemBriefcase100oz","100Rnd_762x51_M240","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_762x51_M240","100Rnd_762x51_M240","200Rnd_556x45_M249","2000Rnd_762x51_M134","2000Rnd_762x51_M134","75Rnd_545x39_RPK","75Rnd_545x39_RPK","75Rnd_545x39_RPK","75Rnd_545x39_RPK","75Rnd_545x39_RPK","75Rnd_545x39_RPK","ItemAVE","ItemLRK","ItemTNK","ItemARM","ItemORP","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked","ItemSeaBassCooked"]
],
[
["M4A1_HWS_GL_SD_Camo","M16A2GL","M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["ItemBriefcase100oz","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","FoodCanFrankBeans","FoodCanFrankBeans","FoodCanBakedBeans","FoodMRE","HandGrenade_east","2000Rnd_762x51_M134","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks"]
],
[
["VSS_vintorez","Saiga12K","M8_compact"],
["ItemBriefcase100oz","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","HandGrenade_east","HandGrenade_east","FoodCanSardines","FoodMRE","FoodPistachio","FoodNutmix","FoodMRE","FoodPistachio","FoodNutmix","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks"]
]
];
_loot = _loot_lists call BIS_fnc_selectRandom;
_loot2 = _loot_lists call BIS_fnc_selectRandom;

_loot_amount = 75;
_wait_time = 900;
 
// Dont mess with theses unless u know what yours doing
_start_time = time;
_spawnRadius = 5000;
_spawnMarker = 'center';
 
if (isNil "EPOCH_EVENT_RUNNING") then {
EPOCH_EVENT_RUNNING = false;
};
 
// Check for another event running
if (EPOCH_EVENT_RUNNING) exitWith {
diag_log("Event already running");
};

EPOCH_EVENT_RUNNING = true;

// Random chance of event happening
_spawnRoll = random 1;
if (_spawnRoll > _spawnChance and !_debug) exitWith {};
 
// Random location
_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
 
diag_log(format["Spawning loot event at %1", _position]);

_event_marker = createMarker [ format ["loot_event_marker_%1", _start_time], _position];
_event_marker setMarkerShape "ELLIPSE";
_event_marker setMarkerType "Cricle01";
_event_marker setMarkerColor "ColorBlack";
_event_marker setMarkerAlpha 0.8;
_event_marker setMarkerBrush "DiagGrid";
_event_marker setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];
 
_loot_pos = [_position,0,(_markerRadius - 100),10,0,2000,0] call BIS_fnc_findSafePos;
 
if (_debug) then {
_debug_marker = createMarker [ format ["loot_event_debug_marker_%1", _start_time], _loot_pos];
_debug_marker setMarkerText "BOMBCRATE";
_debug_marker setMarkerShape "ICON";
_debug_marker setMarkerType "SupplyVehicle";
_debug_marker setMarkerColor "ColorRed";
_debug_marker setMarkerAlpha 1;
_debug_marker setMarkerSize [1,1];
};
 
diag_log(format["Creating ammo box at %1", _loot_pos]);
 
// Create ammo box
_loot_box = createVehicle [_loot_box,_loot_pos,[], 0, "NONE"];
clearMagazineCargoGlobal _loot_box;
clearWeaponCargoGlobal _loot_box;
_loot_box setVariable ["permaLoot",true];
 
// Cut the grass around the loot position
_clutter = createVehicle ["ClutterCutter_small_2_EP1", _loot_pos, [], 0, "CAN_COLLIDE"];
_clutter setPos _loot_pos;
// cut the grass    end
 
// Add loot
{
_loot_box addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);
{
_loot_box addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);
{
_loot_box addWeaponCargoGlobal [_x,1];
} forEach (_loot2 select 0);
{
_loot_box addMagazineCargoGlobal [_x,1];
} forEach (_loot2 select 1);
 
// Send Top Right message to users , requires Remote message script
//_hint = parseText format["<t align='center' color='#0D00FF' shadow='2' size='1.75'>THERS A BOMB CRATE!, Check your Map for the Location!</t><br/><t align='center' color='#ffffff'>THERS A BOMB CRATE!, Check your Map for the Location!</t>"];
//customRemoteMessage = ['hint', _hint];
//publicVariable "customRemoteMessage";

// Send center message to users
[nil,nil,rTitleText,"THERS A BOMB CRATE!, Check your Map for the Location!", "PLAIN",10] call RE;
diag_log(format["Loot event setup, waiting for %1 seconds", _wait_time]);


if (_spawnenemys) then {
//define side for ai
_this = createCenter east;

_this setFriend [west, 0];

_center_1 = _this;
_group_1 = createGroup _center_1;
//

//spawnai
_enemy = objNull;
_enemy = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];	
_enemy enableAI "TARGET";
_enemy enableAI "AUTOTARGET";
_enemy enableAI "MOVE";
_enemy enableAI "ANIM";
_enemy enableAI "FSM";
_enemy setCombatMode "YELLOW";
_enemy setBehaviour "COMBAT";
_enemy setSkill _AISkills;



_enemy1 = objNull;
_enemy1 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy1 enableAI "TARGET";
_enemy1 enableAI "AUTOTARGET";
_enemy1 enableAI "MOVE";
_enemy1 enableAI "ANIM";
_enemy1 enableAI "FSM";
_enemy1 setCombatMode "YELLOW";
_enemy1 setBehaviour "COMBAT";
_enemy1 setSkill _AISkills;


_enemy2 = objNull;
_enemy2 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy2 enableAI "TARGET";
_enemy2 enableAI "AUTOTARGET";
_enemy2 enableAI "MOVE";
_enemy2 enableAI "ANIM";
_enemy2 enableAI "FSM";
_enemy2 setCombatMode "YELLOW";
_enemy2 setBehaviour "COMBAT";
_enemy2 setSkill _AISkills;


_enemy3 = objNull;
_enemy3 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy3 enableAI "TARGET";
_enemy3 enableAI "AUTOTARGET";
_enemy3 enableAI "MOVE";
_enemy3 enableAI "ANIM";
_enemy3 enableAI "FSM";
_enemy3 setCombatMode "YELLOW";
_enemy3 setBehaviour "COMBAT";
_enemy3 setSkill _AISkills;


_enemy4 = objNull;
_enemy4 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy4 enableAI "TARGET";
_enemy4 enableAI "AUTOTARGET";
_enemy4 enableAI "MOVE";
_enemy4 enableAI "ANIM";
_enemy4 enableAI "FSM";
_enemy4 setCombatMode "YELLOW";
_enemy4 setBehaviour "COMBAT";
_enemy4 setSkill _AISkills;
	
_enemy5 = objNull;
_enemy5 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy5 enableAI "TARGET";
_enemy5 enableAI "AUTOTARGET";
_enemy5 enableAI "MOVE";
_enemy5 enableAI "ANIM";
_enemy5 enableAI "FSM";
_enemy5 setCombatMode "YELLOW";
_enemy5 setBehaviour "COMBAT";
_enemy5 setSkill _AISkills;


_enemy6 = objNull;
_enemy6 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy6 enableAI "TARGET";
_enemy6 enableAI "AUTOTARGET";
_enemy6 enableAI "MOVE";
_enemy6 enableAI "ANIM";
_enemy6 enableAI "FSM";
_enemy6 setCombatMode "YELLOW";
_enemy6 setBehaviour "COMBAT";
_enemy6 setSkill _AISkills;

_enemy7 = objNull;
_enemy7 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy7 enableAI "TARGET";
_enemy7 enableAI "AUTOTARGET";
_enemy7 enableAI "MOVE";
_enemy7 enableAI "ANIM";
_enemy7 enableAI "FSM";
_enemy7 setCombatMode "YELLOW";
_enemy7 setBehaviour "COMBAT";
_enemy7 setSkill _AISkills;




//use waypoints : allow ai move
if (_usewaypoints) then {

_xpos = _position select 0;
_ypos = _position select 1;

// These are 4 waypoints in a NorthSEW around the center
_waypos1 = [_xpos, _ypos+20, 0];
_waypos2 = [_xpos+20, _ypos, 0];
_waypos3 = [_xpos, _ypos-20, 0];
_waypos4 = [_xpos-20, _ypos, 0];


_wp1 = _group_1 addWaypoint [_waypos1, _waypointsrange];
_wp1 setWaypointType "MOVE";
_wp2 = _group_1 addWaypoint [_waypos2, _waypointsrange];
_wp2 setWaypointType "MOVE";
_wp3 = _group_1 addWaypoint [_waypos3, _waypointsrange];
_wp3 setWaypointType "MOVE";
_wp4 = _group_1 addWaypoint [_waypos4, _waypointsrange];
_wp4 setWaypointType "MOVE";


_waypointend = _group_1 addWaypoint [[_xpos,_ypos, 0], _waypointsrange];
_waypointend setWaypointType "CYCLE";

};
sleep 1;

//If use aicustomgear
if (_aicustomgear) then {

///////////////////////////////////////remove weapons and magazines
removeAllWeapons _enemy;
removeAllItems _enemy;
removeAllWeapons _enemy1;
removeAllItems _enemy1;
removeAllWeapons _enemy2;
removeAllItems _enemy2;
removeAllWeapons _enemy3;
removeAllItems _enemy3;
removeAllWeapons _enemy4;
removeAllItems _enemy4;
removeAllWeapons _enemy5;
removeAllItems _enemy5;
removeAllWeapons _enemy6;
removeAllItems _enemy6;
removeAllWeapons _enemy7;
removeAllItems _enemy7;

///////////////////////////////////////add weapons and magazines
_enemy addWeapon "G36C_camo";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";

_enemy1 addWeapon "G36C_camo";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";

_enemy2 addWeapon "M4A1_HWS_GL_camo";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";

_enemy3 addWeapon "M4A1_HWS_GL_camo";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";

_enemy4 addWeapon "AKS74U_DZ";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";

_enemy5 addWeapon "FNFAL_DZ";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";

_enemy6 addWeapon "M249_DZ";
_enemy6 addMagazine "100Rnd_556x45_M249";
_enemy6 addMagazine "100Rnd_556x45_M249";
_enemy6 addMagazine "100Rnd_556x45_M249";
_enemy6 addMagazine "100Rnd_556x45_M249";

_enemy7 addWeapon "M24_DZ";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
//////////////////////////////////////////////

//add items
_enemy addMagazine _Gear0;
_enemy addMagazine _Gear1;
_enemy1 addMagazine _Gear1;
_enemy1 addMagazine _Gear2;
_enemy2 addMagazine _Gear2;
_enemy2 addMagazine _Gear3;
_enemy3 addMagazine _Gear3;
_enemy3 addMagazine _Gear4;
_enemy4 addMagazine _Gear4;
_enemy4 addMagazine _Gear5;
_enemy5 addMagazine _Gear5;
_enemy5 addMagazine _Gear6;
_enemy6 addMagazine _Gear6;
_enemy6 addMagazine _Gear7;
_enemy7 addMagazine _Gear7;
_enemy7 addMagazine _Gear0;


//add backpacks
_enemy addBackpack _Packlist;
_enemy1 addBackpack _Packlist;
_enemy2 addBackpack _Packlist;
_enemy3 addBackpack _Packlist;
_enemy4 addBackpack _Packlist;
_enemy5 addBackpack _Packlist;
_enemy6 addBackpack _Packlist;
_enemy7 addBackpack _Packlist;
};
sleep 1;
//endspawn enemys
};





waitUntil{{isPlayer _x && _x distance _loot_box < 10  } count playableunits > 0};
[nil,nil,rTitleText,"BOMBCRATE IS ACTIVE NOW -25 SECONDS BEFORE EXPLODE!", "PLAIN",10] call RE;
_timer = 30;//change me if u want more o less time before bomb explode

//#############################CREATE THE BOMB FUNCTION TO EXPLODE############################//
bombexp = {
_bomb = ["HelicopterExploSmall","HelicopterExploBig","Bo_GBU12_LGB"] call BIS_fnc_selectRandom;
_dabomb = objNull;
if (true) then
{
_this = createVehicle [_bomb,_positionobj, [], 2, "CAN_COLLIDE"];
_dabomb = _this;
};
};
//############################EXIT FROM HERE#################################################//


sleep 1;

 


_mark = "RoadFlare" createVehicle getPosATL _loot_box;
_mark attachTo [_loot_box, [0,0,-1]];
_positionobj = getPosATL _loot_box;    

 

sleep _timer;
call bombexp;

 

 
// Clean up
EPOCH_EVENT_RUNNING = false;
deleteVehicle _mark;
deleteVehicle _loot_box;
deleteMarker _event_marker;
if (_debug) then {
deleteMarker _debug_marker;
};
if (_spawnenemys) then {
deleteVehicle _enemy;
deleteVehicle _enemy1;
deleteVehicle _enemy2;
deleteVehicle _enemy3;
deleteVehicle _enemy4;
deleteVehicle _enemy5;
deleteVehicle _enemy6;
deleteVehicle _enemy7;
};
