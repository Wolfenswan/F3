// F3 - Folk ARPS Assign Gear Script - AAF - Light Loadout
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{

		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glsmokewhite,4];
		_unit addmagazines [_glsmokered,4];
		_unit addmagazines [_glflaregreen,6];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_pistolmag,5];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,1];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_smokegrenadegreen,1];

	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{

		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_glflaregreen,3];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addmagazines [_pistolmag,5];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,1];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_smokegrenadegreen,1];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	};

// LOADOUT: JTAC
	case "jtac":
	{

		_unit addmagazines [_glriflemag,1];
		_unit addmagazines [_glsmokered,10];
		_unit addmagazines [_glflaregreen,3];
		_unit addweapon _glrifle;					//_JTACrifle
		_unit addmagazines [_pistolmag,5];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,1];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_smokegrenadegreen,1];
		_unit addMagazines ["Laserbatteries",1];
		_unit addWeapon "Laserdesignator";
		_unit linkItem "ItemGPS";
	};

// LOADOUT: MEDIC
	case "m":
	{

		_unit addmagazines [_carbinemag,10];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
	};

// LOADOUT: FIRETEAM LEADER
	case "ftl":
	{

		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addweapon _glrifle;					//_ftlrifle
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{

		_unit addmagazines [_ARmag,2];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,1];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_pistolmag,5];
		_unit addweapon _pistol;
		_unit addWeapon "Rangefinder";
		_attachments pushback (_bipod1);		// Add a bipod to the default attachments
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{

		_unit addmagazines [_riflemag,5];
		_unit addmagazines [_riflemag_tr,4];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,5];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_smokegrenadegreen,1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{

		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,4];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addweapon _RAT;
	};

// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{

		_unit addmagazines [_DMriflemag,7];
		_unit addweapon _DMrifle;
		_unit addmagazines [_grenade,2];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,3];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{

		_unit addmagazines [_MMGmag,1];
		_unit addweapon _MMG;
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_attachments pushback (_bipod1);
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{

		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addweapon _HAT;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "Rangefinder";
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addweapon _SAM;
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_scope3,_bipod1];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Rangefinder";
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{

		_unit setUnitTrait ["engineer",true]; // Can repair
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{

		_unit setUnitTrait ["engineer",true]; // Can repair
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{

		_unit setUnitTrait ["engineer",true]; // Can repair
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
	};

// LOADOUT: UAV Operator
	case "uav":
	{

		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit linkItem _uavterminal;
	};

// LOADOUT: Diver
	case "div":
	{

		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,5];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
	};

// LOADOUT: RIFLEMAN
	case "r":
	{

		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,5];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,3];
	};

// LOADOUT: CARABINEER
	case "car":
	{

		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,5];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,3];
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{

		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,5];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,3];
	};

// LOADOUT: GRENADIER
	case "gren":
	{

		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addweapon _glrifle;					//_ftlrifle
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	};

// INCLUDE VEHICLE TYPES
#include "f_assignGear_aaf_v.sqf";

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_aaf.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};