/// @desc Add item definition to itemDefinitions array
/// @param slot
/// @param name 
/// @param sprite
/// @param cost
/// @param hp

var _slot   = argument0;
var _name	= argument1;
var _sprite	= argument2;
var _cost	= argument3;
var _hp		= argument4;

wallDefinitions[_slot, WallProp.name]		= _name;
wallDefinitions[_slot, WallProp.sprite]		= _sprite;
wallDefinitions[_slot, WallProp.cost]		= _cost;
wallDefinitions[_slot, WallProp.hp]			= _hp;