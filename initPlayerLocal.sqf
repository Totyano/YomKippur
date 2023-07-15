// allow players in leadership roles AND that are on opfor to whistle
private _unitRole = typeOf player;
if (_unitRole in ["potato_e_plt","potato_e_coy","potato_e_ftl","potato_e_sl"]) then {
	[] call CCE_fnc_addPlayerWhistle;
};

// Hand out force respawn actions to commanders 
if (vehicleVarName player isEqualTo "BLU_PL") then {
	_bluaction = ["bforcerespawn","Force a Respawn","",{[] spawn CCE_fnc_forceBLU;},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","ACE_Equipment"], _bluaction, true] call ace_interact_menu_fnc_addActionToObject;
};
if (vehicleVarName player isEqualTo "OPF_COY") then {
	_opfaction = ["oforcerespawn","Force a Respawn","",{[] spawn CCE_fnc_forceOPF;},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","ACE_Equipment"], _opfaction, true] call ace_interact_menu_fnc_addActionToObject;
};