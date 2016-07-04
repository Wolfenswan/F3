// F3 - Folk ARPS Assign Gear Script - AAF
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		dm			- designated marksman
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "optic_ACO_grn";		// ACO
_scope2 = "optic_MRCO";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x

_bipod1 = "bipod_03_F_oli";		// Default bipod
_bipod2 = "bipod_03_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_Mk20_F";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_Mk20C_F";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_Mk20_GL_MRCO_pointer_F";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_ACPC2_F";
_pistolmag = "9Rnd_45ACP_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_INDEP";

// UAV Terminal
_uavterminal = "I_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Standard Backpacks
_bagsmall = "B_AssaultPack_khk";			// The standard bag for most classes
_bagmedium = "B_FieldPack_oli";				// Larger bag for some special purpose classes

// Special Backpacks
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "I_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "I_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "I_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "I_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "I_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "I_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "I_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "I_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "I_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_Mk200_F";
_ARmag = "200Rnd_65x39_cased_Box";
_ARmag_tr = "200Rnd_65x39_cased_Box_Tracer";

// Medium MG
_MMG = "MMG_01_tan_F";
_MMGmag = "150Rnd_93x64_Mag";
_MMGmag_tr = "150Rnd_93x64_Mag";

// NON-DLC ALTERNATIVE:
//_MMG = "LMG_Zafir_F";
//_MMGmag = ""150Rnd_762x54_Box"";
//_MMGmag_tr = ""150Rnd_762x54_Box"_Tracer";

// Marksman rifle
_DMrifle = "srifle_EBR_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Rifleman AT
_RAT = "launch_NLAW_F";
_RATmag = "NLAW_F";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "launch_I_Titan_F";
_SAMmag = "Titan_AA";

// Heavy AT
_HAT = "launch_I_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = "srifle_GM6_F";
_SNrifleMag = "5Rnd_127x108_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define special vest loadouts. This defines which gear class gets which vest
// Normal infantry will be given either light or standard rigs, depending on the loadout parameter

_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

_baseUniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt"];
_baseHelmet = ["H_HelmetIA_net","H_HelmetIA_camo","H_HelmetIA"];
_baseGlasses = [];

// Vests
_lightRig = ["V_Chestrig_oli","V_BandollierB_oli"];
_standardRig = ["V_PlateCarrierIA2_dgtl","V_PlateCarrierIA1_dgtl"];

// Diver
_diverUniform =  ["U_I_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIA"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_I_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_I"];
_pilotRig = ["V_TacVest_oli"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_I_CombatUniform"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_oli"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_I_GhillieSuit"];	//DLC alternatives: ["U_I_FullGhillie_lsh","U_I_FullGhillie_ard","U_I_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_oli"];
_ghillieGlasses = [];

// Spec Op - no nice stuff for AAF
_sfuniform = _baseUniform;
_sfhelmet = _baseHelmet;
_sfRig = _standardRig;
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following interprets what has been passed to this script element

_typeofUnit = toLower (_this select 0);	// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit linkItem "ItemGPS"; 	// Add and equip a GPS

};

// ====================================================================================

// SETUP BACKPACKS
// Include a mini function to setup the backpack for each unit
// The function takes two arguments: Loadout type and loadout weight

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = if (count _this > 1) then [{f_param_loadouts},{_this select 1}];
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_aaf_b.sqf";
	};
};

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
		["g"] call _backpack;
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
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		["g"] call _backpack;
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
		["g"] call _backpack;
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
		["m"] call _backpack;
		_unit addmagazines [_carbinemag,10];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
	};

// LOADOUT: FIRETEAM LEADER
	case "ftl":
	{
		["g"] call _backpack;
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
		["ar"] call _backpack;
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
		["aar"] call _backpack;
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
		["rat"] call _backpack;
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
		["dm"] call _backpack;
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
		["mmg"] call _backpack;
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
		["mmgag"] call _backpack;
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
		["hmgg"] call _backpack;
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
		["hmgag"] call _backpack;
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
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		["matag"] call _backpack;
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
		["hatg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addweapon _HAT;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		["hatag"] call _backpack;
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
		["mtrg"] call _backpack;
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
		["mtrag"] call _backpack;
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
		["msamg"] call _backpack;
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
		["msamag"] call _backpack;
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
		["hsamg"] call _backpack;
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
		["hsamag"] call _backpack;
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
		["cc"] call _backpack;
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
		["cc"] call _backpack;
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
		["cc"] call _backpack;
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
		["eng"] call _backpack;
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
		["engm"] call _backpack;
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
		["uav"] call _backpack;
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
		["div"] call _backpack;
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
		["r"] call _backpack;
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
		["car"] call _backpack;
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
		["smg"] call _backpack;
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,5];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,3];
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		["g"] call _backpack;
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

// ====================================================================================

// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	// Authentic Gameplay Modification
	if (f_param_medical == 2) exitWith
		{
			[_unit] execVM "f\medical\AGM_converter.sqf";
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
