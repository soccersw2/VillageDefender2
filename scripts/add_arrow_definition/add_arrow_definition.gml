/// @desc Add item definition to itemDefinitions array
/// @param slot
/// @param name 
/// @param sprite
/// @param cost
/// @param damage
/// @param length


var _slot		= argument0;
var _name		= argument1;
var _sprite		= argument2;
var _cost		= argument3;
var _damage		= argument4;
var _length= argument5;

arrowDefinitions[_slot, ArrowProp.name]		= _name;
arrowDefinitions[_slot, ArrowProp.sprite]	= _sprite;
arrowDefinitions[_slot, ArrowProp.cost]		= _cost;
arrowDefinitions[_slot, ArrowProp.damage]		= _damage;
arrowDefinitions[_slot, ArrowProp.length]		= _length;