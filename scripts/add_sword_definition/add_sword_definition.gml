/// @desc Add item definition to itemDefinitions array
/// @param slot
/// @param name 
/// @param sprite
/// @param cost
/// @param damage
/// @param spd
/// @param staminaCost

var _slot		= argument0;
var _name		= argument1;
var _sprite		= argument2;
var _cost		= argument3;
var _damage		= argument4;
var _spd		= argument5;
var _staminaCost = argument6;

swordDefinitions[_slot, SwordProp.name]		= _name;
swordDefinitions[_slot, SwordProp.sprite]	= _sprite;
swordDefinitions[_slot, SwordProp.cost]		= _cost;
swordDefinitions[_slot, SwordProp.damage]		= _damage;
swordDefinitions[_slot, SwordProp.spd]		= _spd;
swordDefinitions[_slot, SwordProp.staminaCost]		= _staminaCost;