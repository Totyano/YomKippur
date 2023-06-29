// allow players in leadership roles AND that are on opfor to whistle
private _unitRole = typeOf player;
if (_unitRole in ["potato_e_plt","potato_e_coy","potato_e_ftl","potato_e_sl"]) then {
	[] call CCE_fnc_addPlayerWhistle;
};