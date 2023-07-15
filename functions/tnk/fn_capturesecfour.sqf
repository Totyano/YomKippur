params["_module","_capturingSide","_losingSide"];
if (!isServer) exitWith{};
if (_capturingSide isNotEqualTo EAST) exitwith{};

// Disable cap zone
sector4trig enableSimulationGlobal false;

// Complete old tasks
["at4","SUCCEEDED"] call BIS_fnc_taskSetState;
["dt4","FAILED"] call BIS_fnc_taskSetState;

// Thamer - add some shit you want to happen at "the end" here
