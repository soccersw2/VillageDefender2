/// @desc Add item definition to itemDefinitions array
/// @param slot
/// @param name 
/// @param sprite
/// @param cost
/// @param spd
/// @param staminaCost
/// @param range


var _slot		= argument0;
var _name		= argument1;
var _sprite		= argument2;
var _cost		= argument3;
var _spd		= argument4;
var _staminaCost= argument5;
var _range		= argument6;

bowDefinitions[_slot, BowProp.name]		= _name;
bowDefinitions[_slot, BowProp.sprite]	= _sprite;
bowDefinitions[_slot, BowProp.cost]		= _cost;
bowDefinitions[_slot, BowProp.spd]		= _spd;
bowDefinitions[_slot, BowProp.staminaCost]		= _staminaCost;
bowDefinitions[_slot, BowProp.range]		= _range;