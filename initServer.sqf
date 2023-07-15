// Respawn Vehicle Script
[] spawn CCE_fnc_respawnVehicles;

// Reset radios upon respawn
[] spawn CCE_fnc_setupRadios;

// Respawn stuff
opfMaxWaves		= 5;
opfWaves = 0;
publicVariable "opfMaxWaves";
publicVariable "opfWaves";
bluMaxWaves		= 5;
bluWaves = 0;
publicVariable "bluMaxWaves";
publicVariable "bluWaves";

[WEST, ["dt1"], ["Defend OBJ 1", "Defend OBJ 1", ""], getPos sector1trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
[EAST, ["at1"], ["Attack OBJ 1", "Attack OBJ 1", ""], getPos sector1trig, "AUTOASSIGNED"] call BIS_fnc_taskCreate;

sec3acapped = false;
sec3bcapped = false;