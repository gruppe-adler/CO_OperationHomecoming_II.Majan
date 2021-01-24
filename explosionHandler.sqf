if (isServer) then {

    ["ace_explosives_detonate", {
        params ["_unit", "_explosive"];

        private _barricadestuff = nearestObjects [_explosive, ["Land_Barricade_01_10m_F", "Land_Barricade_01_4m_F", "Fort_Barricade", "Fort_Barricade_EP1"], 10, true];

        [_explosive, _barricadestuff] execVM "explosionDebris.sqf";
        
    }] call CBA_fnc_addEventhandler;
};

// [QGVAR(detonate), [_unit, _item select 0, _item select 1]] call CBA_fnc_serverEvent;