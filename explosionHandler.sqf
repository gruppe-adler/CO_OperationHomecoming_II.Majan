params ["_vehicle"];

_vehicle addEventHandler ["HandleDamage", {
    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

    hint str _projectile;

    switch (_projectile) do { 
        case "SatchelCarge_Remote_Ammo" : {
            [_unit] execVM "explosionDebris.sqf";
        };
        case "rhs_ammo_m136_penetrator" : {
            if (_unit getVariable ["hitByAT", false]) then {
                [_unit] execVM "explosionDebris.sqf";
            };
            _unit setVariable ["hitByAT", true, true];
        };

        default {  /*...code...*/ }; 
      };  
}];