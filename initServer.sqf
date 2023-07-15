// Respawn Vehicle Script
[] spawn CCE_fnc_respawnVehicles;

// Reset radios upon respawn
[] spawn CCE_fnc_setupRadios;

// Respawn stuff
opfMaxWaves		= 5;
publicVariable "opfMaxWaves";
bluMaxWaves		= 5;
publicVariable "bluMaxWaves";

[WEST, ["at1"], ["Defend OBJ 1", "Defend OBJ 1", ""], getPos sector1trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["dt1"], ["Attack OBJ 1", "Attack OBJ 1", ""], getPos sector1trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;

sec3acapped = false;
sec3bcapped = false;