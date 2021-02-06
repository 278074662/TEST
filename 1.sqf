
		Minimum amount to join a session of 
		russian roulette
	*/
	buyInAmount = 100;
};
class CfgFlags 
{
	class USA
	{
		name = "USA";
		texture = "\A3\Data_F\Flags\flag_us_co.paa";
		uids[] = {};
	};
};

class CfgGrinding
{
	// Enables code lock grinding on the server
	enableGrinding = 1;
	
	// Time it takes to grind a fresh lock in minutes
	grindDuration = 25;
	
	// Percentage chance the grinding will fail
	failChance = 25;
	
	// Percentage chance that failing will break your grinder (otherwise it will just remove a battery)
	breakChance = 20;
	
	// Notify the entire server if someone is hacking. 1 == notify, 0 == don't notify
	notifyServer = 1;
	
	// The cooldown time, in minutes, before another server side notification is sent out from a territory. This is on a per territory basis. 
	notificationCooldown = 30;
};
class CfgHacking 
{
	// Enables safe hacking on the server
	enableHacking = 1;
	
	// Time it takes to hack in minutes
	hackDuration = 20;
	
	// Percentage chance the hacking will fail
	failChance = 50;
	
	// Percentage chance the laptop will be removed on fail
	removeChance = 5;
	
	// Max attepts to hack a safe during one restart
	maxHackAttempts = 3;
	
	// Notify the entire server if someone is hacking. 1 == notify, 0 == don't notify
	notifyServer = 1;
	
	// The cooldown time, in minutes, before another server side notification is sent out from a territory. This is on a per territory basis. 
	notificationCooldown = 30;
	
	// The minimal amount of players on the server required in order to hack a safe (set to 0 to disable)
	minPlayers = 1;
	
	// How many safe hacks are allowed to be going at one time
	maxHacks = 5;
	
	// Show a map icon where the hacking is taking place
	showMapIcon = 1;
};

class ExileAbstractAction
{
	title = "";
	condition = "true";
	action = "";
	priority = 1.5;
	showWindow = false;
};

/**
 * Sort this by probability of occurence to speed things up a bit
 */
class CfgInteractionMenus
{
	class Car 
	{
		targetType = 2;
		target = "Car";

		class Actions 
		{
			class ScanLock: ExileAbstractAction
			{
				title = "Scan Lock";
				condition = "('Exile_Item_ThermalScannerPro' in (magazines player)) && !ExilePlayerInSafezone && ((locked ExileClientInteractionObject) != 1)";
				action = "_this call ExileClient_object_lock_scan";
			};

			// Locks a vehicle
			class Lock: ExileAbstractAction
			{
				title = "Lock";
				condition = "((locked ExileClientInteractionObject) isEqualTo 0) && ((locked ExileClientInteractionObject) != 1)";
				action = "true spawn ExileClient_object_lock_toggle";
			};

			// Unlocks a vehicle
			class Unlock: ExileAbstractAction
			{
				title = "Unlock";
				condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
				action = "false spawn ExileClient_object_lock_toggle";
			};

			// Repairs a vehicle to 100%. Requires Duckttape
			class Repair: ExileAbstractAction
			{
				title = "Repair";
				condition = "true";
				action = "['RepairVehicle', _this select 0] call ExileClient_action_execute";
			};

			// Hot-wires a vehicle
			class Hotwire: ExileAbstractAction
			{
				title = "Hotwire";
				condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
				action = "['HotwireVehicle', _this select 0] call ExileClient_action_execute";
			};

			// Flips a vehicle so the player doesnt have to call an admin
			// Check if vector up is fucked
			class Flip: ExileAbstractAction
			{
				title = "Flip";
				condition = "call ExileClient_object_vehicle_interaction_show";
				action = "_this call ExileClient_object_vehicle_flip";
			};

			// Fills fuel from a can into a car
			class Refuel: ExileAbstractAction
			{
				title = "Refuel";
				condition = "call ExileClient_object_vehicle_interaction_show";
				action = "_this call ExileClient_object_vehicle_refuel";
			};

			// Drains fuel from a car into an empty jerry can
			class DrainFuel: ExileAbstractAction
			{
				title = "Drain Fuel";
				condition = "call ExileClient_object_vehicle_interaction_show";
				action = "_this call ExileClient_object_vehicle_drain";
			};
