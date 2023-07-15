params["_module","_capturingSide","_losingSide"];
if (!isServer) exitWith{};
if (_capturingSide isNotEqualTo EAST) exitwith{};

_sectorTrig = "";

switch (_module) do {
    case sector_3:
    {
        _sectorTrig = sector3trig2;
    };
    case sector_4:
    {
        _sectorTrig = sector3trig1;
    };
    default {}
};

if (_module isEqualTo sector_3) then {
    sector3trig2 enableSimulationGlobal false;
	["at3b","SUCCEEDED"] call BIS_fnc_taskSetState;
	["dt3b","FAILED"] call BIS_fnc_taskSetState;
	sec3acapped = true;
} else {
    sector3trig1 enableSimulationGlobal false;
    ["at3a","SUCCEEDED"] call BIS_fnc_taskSetState;
	["dt3a","FAILED"] call BIS_fnc_taskSetState;
	sec3bcapped = true;
};

// Do the task thing for each side
if (sec3acapped && sec3bcapped) then {
	[WEST, ["dt4"], ["Defend OBJ 4", "Defend OBJ 4", ""], getPos sector4trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
	[EAST, ["at4"], ["Attack OBJ 4", "Attack OBJ 4", ""], getPos sector4trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
};