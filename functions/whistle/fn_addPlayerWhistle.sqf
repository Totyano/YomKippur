//Creates the Ace Self Interact to reset to last checkpoint
// Adds action to check fuel levels for all land vehicles
_action = ["Whistles", "Whistles", "functions\whistle\textures\whistle.paa", {"";}, {true}, {}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;

_playerWhistle_LONG = ["playerWhistle_1","<t color='#232ccf'>LONG</t>","functions\whistle\textures\whistle.paa", {[player, "long"] remoteExec ["CCE_fnc_whistleServerBackend", 2];}, {true}, {}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment", "Whistles"], _playerWhistle_LONG] call ace_interact_menu_fnc_addActionToObject;
_playerWhistle_SHORT = ["playerWhistle_2","<t color='#228dc7'>SHORT</t>","functions\whistle\textures\whistle.paa", {[player, "short"] remoteExec ["CCE_fnc_whistleServerBackend", 2];}, {true}, {}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment", "Whistles"], _playerWhistle_SHORT] call ace_interact_menu_fnc_addActionToObject;
_playerWhistle_SHORT_LONG = ["playerWhistle_3","<t color='#b82837'>SHORT LONG</t>","functions\whistle\textures\whistle.paa", {[player, "short_long"] remoteExec ["CCE_fnc_whistleServerBackend", 2];}, {true}, {}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment", "Whistles"], _playerWhistle_SHORT_LONG] call ace_interact_menu_fnc_addActionToObject;
_playerWhistle_SHORT_SHORT_LONG = ["playerWhistle_4","<t color='#c4931f'>SHORT SHORT LONG</t>","functions\whistle\textures\whistle.paa", {[player, "short_short_long"] remoteExec ["CCE_fnc_whistleServerBackend", 2];}, {true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment", "Whistles"], _playerWhistle_SHORT_SHORT_LONG] call ace_interact_menu_fnc_addActionToObject;

systemChat "|CCE System| : Whistles Available, Go To [ Equipment > Whistles ] To Access Your Whistles!";
