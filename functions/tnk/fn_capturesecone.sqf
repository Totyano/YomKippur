params["_module","_capturingSide","_losingSide"];
if (!isServer) exitWith{};
if (_capturingSide isNotEqualTo EAST) exitwith{};

hint str(_capturingSide);

// Disable cap zone
sector1trig enableSimulationGlobal false;

// Complete old tasks
["at1","SUCCEEDED"] call BIS_fnc_taskSetState;
["dt1","FAILED"] call BIS_fnc_taskSetState;

// Do the task thing for each side
[WEST, ["dt2"], ["Defend OBJ 2", "Defend OBJ 2", ""], getPos sector2trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["at2"], ["Attack OBJ 2", "Attack OBJ 2", ""], getPos sector2trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;