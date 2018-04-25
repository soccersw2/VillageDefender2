/// @desc Add item definition to itemDefinitions array
/// @param slot
/// @param name 
/// @param sprite
/// @param cost
/// @param type
/// @param reginAmnt


var _slot		= argument0;
var _name		= argument1;
var _sprite		= argument2;
var _cost		= argument3;
var _type		= argument4;
var _reginAmnt= argument5;

potionDefinitions[_slot, PotionProp.name]		= _name;
potionDefinitions[_slot, PotionProp.sprite]	= _sprite;
potionDefinitions[_slot, PotionProp.cost]		= _cost;
potionDefinitions[_slot, PotionProp.type]		= _type;
potionDefinitions[_slot, PotionProp.reginAmnt]		= _reginAmnt;
