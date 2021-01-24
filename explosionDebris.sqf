params ["_vehicle", "_barricadestuff"];

private _position = getPos _vehicle;

{
    deleteVehicle _x;
} forEach _barricadestuff;

/*
for "_i" from 1 to 4 do {
    private _tyre = createVehicle ["Land_Tyre_F", _position, [], 0, "CAN_COLLIDE"];
    _tyre setVelocity [-5 + random 10, -5 + random 10, 10];
};

for "_i" from 1 to 2 do {
    private _helper = createVehicle ["Land_Can_Dented_F", _position, [], 0, "CAN_COLLIDE"];
    private _object = createVehicle ["gm_pallet_01", _position, [], 0, "CAN_COLLIDE"];
    _object attachTo [_helper];
    _helper setVelocity [-5 + random 10, -5 + random 10, 10];
};
*/


/*
model = "\a3\Weapons_F_Orange\Ammo\leaflet_05_f.p3d";
model = "\CA\Structures\Misc\Armory\Pneu\pneu.p3d";
model = "\ca\misc\PaletaA.p3d";
*/

private _source = "#particlesource" createVehicleLocal [0, 0, 0];  
_source setPos _position;  
_source setParticleCircle [0, [0, 0, 0]];  
_source setParticleRandom [0, [2, 2, 1], [5, 5, 20], 3, 0.25, [0, 0, 0, 0.1], 0, 0];  
_source setParticleParams [
    ["\a3\Weapons_F_Orange\Ammo\leaflet_05_f.p3d", 1, 0, 1], "", "SpaceObject", 0.5, 120, 
    [0, 0, 2], [2, 2, 5], 0.5, 200, 0.2, 0.075, [1, 1, 1], [[0.3, 0.3, 0.3, 1], [0.3, 0.3, 0.3, 0.3], [0.3, 0.3, 0.3, 0]], 
    [0.08], 1, 0, "", "", _this,0,true,0.1
];  
_source setDropInterval 0.01; 
 
[{ 
    params ["_source"]; 
    deleteVehicle _source; 
}, [_source] ,1] call CBA_fnc_waitAndExecute;

/*
private _source = "#particlesource" createVehicleLocal [0, 0, 0];  
_source setPos _position;  
_source setParticleCircle [0, [0, 0, 0]];  
_source setParticleRandom [0, [2, 2, 1], [5, 5, 4], 0, 0.25, [0, 0, 0, 0.1], 0, 0];  
_source setParticleParams [
    ["\CA\Structures\Misc\Armory\Pneu\pneu.p3d", 1, 0, 1], "", "SpaceObject", 0.5, 120, 
    [0, 0, 2], [2, 2, 5], 0.5, 200, 0.2, 0.075, [1, 1, 1], [[0.3, 0.3, 0.3, 1], [0.3, 0.3, 0.3, 0.3], [0.3, 0.3, 0.3, 0]], 
    [0.08], 1, 0, "", "", _this,0,true,0.7
];  
_source setDropInterval 0.01; 
 
[{ 
    params ["_source"]; 
    deleteVehicle _source; 
}, [_source] ,0.01] call CBA_fnc_waitAndExecute;


private _source = "#particlesource" createVehicleLocal [0, 0, 0];  
_source setPos _position;  
_source setParticleCircle [0, [0, 0, 0]];  
_source setParticleRandom [0, [2, 2, 1], [5, 5, 4], 0, 0.25, [0, 0, 0, 0.1], 0, 0];  
_source setParticleParams [
    ["\ca\misc\PaletaA.p3d", 1, 0, 1], "", "SpaceObject", 0.5, 120, 
    [0, 0, 2], [2, 2, 5], 0.5, 200, 0.2, 0.075, [1, 1, 1], [[0.3, 0.3, 0.3, 1], [0.3, 0.3, 0.3, 0.3], [0.3, 0.3, 0.3, 0]], 
    [0.08], 1, 0, "", "", _this,0,true,0.15 
];  
_source setDropInterval 0.01; 
 
[{ 
    params ["_source"]; 
    deleteVehicle _source; 
}, [_source] ,0.011] call CBA_fnc_waitAndExecute;
*/

private _source = "#particlesource" createVehicleLocal [0, 0, 0];  
_source setPos _position;  
_source setParticleCircle [0, [0, 0, 0]];  
_source setParticleRandom [0, [5, 5, 6], [5, 5, 4], 0, 0.25, [0, 0, 0, 0.1], 0, 0];  
_source setParticleParams [
    ["\A3\Data_F\ParticleEffects\Pstone\Pstone", 1, 0, 1], "", "SpaceObject", 0.5, 120, 
    [0, 0, 2], [2, 2, 5], 0.5, 200, 0.2, 0.075, [.2, .2, .2], [[0.3, 0.3, 0.3, 1], [0.3, 0.3, 0.3, 0.3], [0.3, 0.3, 0.3, 0]], 
    [0.08], 1, 0, "", "", _this,0,true,0.1
];  
_source setDropInterval 0.01; 
 
[{ 
    params ["_source"]; 
    deleteVehicle _source; 
}, [_source], 1] call CBA_fnc_waitAndExecute;


private _simpleObjects = [
    "CUP_washing_machine",
    "Paleta1",
    "Paleta1",
    "Paleta1",
    "Paleta1",
    "Paleta1",
    "Paleta1",
    "Land_Slums02_pole",
    "Land_PoleWall_01_pole_F",
    "Land_MetalBarrel_F",
    "Land_Pneu",
    "Land_Pneu",
    "Land_Pneu",
    "Land_Pneu",
    "gm_barrel_rusty",
    "Land_WaterBottle_01_compressed_F",
    "Land_GarbageBarrel_02_F",
    "Land_Bucket_painted_F",
    "Land_Shovel_F"
];

for "_i" from 1 to 10 do {
    private _object = createVehicle [selectRandom _simpleObjects, _position, [], 0, "CAN_COLLIDE"];
    // _object setVelocity [-7 + random 14, -7 + random 14, 10];
    private _helper = createVehicle ["Land_Can_Dented_F", _position, [], 0, "CAN_COLLIDE"];
    _object attachTo [_helper];
    _helper setVelocity [-7 + random 14, -7 + random 14, 10];
};