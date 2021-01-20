params ["_vehicle"];

_vehicle addEventHandler ["HandleDamage", {
    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

    switch (_projectile) do { 
        case "SatchelCarge_Remote_Ammo" : {
            [_unit] execVM "explosionDebris.sqf";
        };
        default {  /*...code...*/ }; 
      };  
}];