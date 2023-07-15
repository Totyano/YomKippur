if (!isServer) exitWith{};

// Disable cap zone
sector2trig enableSimulationGlobal false;

// Complete old tasks
["at2","SUCCEEDED"] call BIS_fnc_taskSetState;
["dt2","FAILED"] call BIS_fnc_taskSetState;

// Do the task thing for each side
[WEST, ["at3a"], ["Defend OBJ 3A", "Defend OBJ 3A", ""], getPos sector3trig1, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[WEST, ["at3b"], ["Defend OBJ 3A", "Defend OBJ 3A", ""], getPos sector3trig1, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["dt3a"], ["Attack OBJ 3A", "Attack OBJ 3A", ""], getPos sector3trig2, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["dt3b"], ["Attack OBJ 3A", "Attack OBJ 3A", ""], getPos sector3trig2, "AUTOASSIGNED"] call BIS_fnc_taskCreate;