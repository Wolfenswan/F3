// F3 - Caching Store-Restore
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

if !(isServer) exitWith {};

private ["_id","_store"];

_id = [_this,0,""] call BIS_fnc_param;
_store = [_this,1,false] call BIS_fnc_param;

// If the global array doesn't exist yet, create it
if (isNil "f_var_cStoreRestoreGrps") then {
	f_var_cStoreRestoreGrps = [];
	{
		if !(_x getVariable ["f_var_cStoreRestore",""] == "") then {
			f_var_cStoreRestoreGrps pushBack (_x);
			_x setvariable ["f_cacheExcl",true]; // Mark group to be excluded from regular caching
		};
	} forEach allGroups;
};

// Process the array containing all groups to store/restore them accordingly
{
	if (_x getVariable ["f_var_cStoreRestore",""] == _id) then {
		if (!(_x getvariable ["f_cached", false]) || (_store)) then {
			_x setvariable ["f_cached", true];
           [_x,3] spawn f_fnc_gCache;
		} else {
			 _x setvariable ["f_cached", false];
             _x spawn f_fnc_gUncache;
		};
	};
} forEach f_var_cStoreRestoreGrps;

/*
_grp = [_this,0,grpNull] call BIS_fnc_param;
_id = [_this,1,""] call BIS_fnc_param;

// If the global array doesn't exist yet, create it
if (isNil "f_cStoreRestoreGrps") then {
	f_cStoreRestoreGrps = [];
};

// Add the group to the global array if it hasn't been already
if !(_grp in f_cStoreRestoreGrps) then {
	f_cStoreRestoreGrps = pushBack (_grp);
};

// Mark the group as to be excluded from regular caching
_grp setvariable ["f_cacheExcl",true];

// If the group is currently uncached, store it:
if !(_grp getVariable ["f_cached", false]) then {
	_x setvariable ["f_cached", true];
    [_x,3] spawn f_fnc_gCache;

    // Set up the ID to restore the group:
	missionNameSpace setVariable ["id",_grp];
	_id addPublicVariableEventHandler {
		(_this select 0) setvariable ["f_cached", false];
        (_this select 0) spawn f_fnc_gUncache;
	};
};
*/