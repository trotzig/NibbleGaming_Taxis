//init_cab2.sqf | NibbleGaming Taxis v.1 | by Fivenine

addcab = player addaction ["<t color='#00FF00'>Call for Taxi</t>",{
if (cab2occupied) then {
["cabtext",["Currently occupied, please try again in moment"]] call bis_fnc_showNotification; 
} else {
["cabtext",["Calling for cab, it should arrive shortly"]] call bis_fnc_showNotification; 
callcab = "cab2";
publicVariableServer "callcab";
//	if (isNil "gotcabinit") then {
//	[] execVM "Taxis\player_cab.sqf";
//	};

player removeaction addcab;
};
},"",95,false,false,"",""];
