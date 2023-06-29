// Respawn Vehicle Script
[] spawn CCE_fnc_respawnVehicles;


// Reset radios upon respawn
[] spawn CCE_fnc_setupRadios;

// Respawn stuff
opfMaxWaves		= 5;
publicVariable "opfMaxWaves";
bluMaxWaves		= 5;
publicVariable "bluMaxWaves";