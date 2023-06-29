params ["_player", "_whistleType"];

_close = ("close_" + _whistleType);
_medium = ("medium_" + _whistleType);
_far = ("far_" + _whistleType);

{
	_distance = _player distance2D _x;
	switch true do {
		case (_distance < 50): {[_player, [_close, 250]] remoteExec ["say3D", _x];};
		case (_distance < 750 && _distance > 50): {[_player, [_medium, 1750]] remoteExec ["say3D", _x];};
		case (_distance < 1500 && _distance > 750): {[_player, [_far, 2250]] remoteExec ["say3D", _x];};
	};
} forEach allPlayers;