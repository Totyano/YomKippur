params["_sector"];

if (!isServer) exitWith{};

// Disable cap zone
_sector enableSimulationGlobal false;

if (_sector isEqualTo sector3trig1) then {
    ["at3a","SUCCEEDED"] call BIS_fnc_taskSetState;
    ["dt3a","FAILED"] call BIS_fnc_taskSetState;
    sec3acapped = true;
} else {
    ["at3b","SUCCEEDED"] call BIS_fnc_taskSetState;
    ["dt3b","FAILED"] call BIS_fnc_taskSetState;
    sec3bcapped = true;
};

// Do the task thing for each side
if (sec3acapped && sec3bcapped) then {
    [WEST, ["at4"], ["Defend OBJ 4", "Defend OBJ 4", ""], getPos sector4trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
    [EAST, ["dt4"], ["Attack OBJ 4", "Attack OBJ 4", ""], getPos sector4trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
};