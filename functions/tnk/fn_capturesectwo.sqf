params["_module","_capturingSide","_losingSide"];
if (!isServer) exitWith{};
if (_capturingSide isNotEqualTo EAST) exitwith{};

// Disable cap zone
sector2trig enableSimulationGlobal false;

// Complete old tasks
["at2","SUCCEEDED"] call BIS_fnc_taskSetState;
["dt2","FAILED"] call BIS_fnc_taskSetState;

// Do the task thing for each side
[WEST, ["dt3a"], ["Defend OBJ 3A", "Defend OBJ 3A", ""], getPos sector3trig2, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[WEST, ["dt3b"], ["Defend OBJ 3B", "Defend OBJ 3B", ""], getPos sector3trig1, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["at3a"], ["Attack OBJ 3A", "Attack OBJ 3A", ""], getPos sector3trig2, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["at3b"], ["Attack OBJ 3B", "Attack OBJ 3B", ""], getPos sector3trig1, "AUTOASSIGNED"] call BIS_fnc_taskCreate;