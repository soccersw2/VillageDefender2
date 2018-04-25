/// @desc Add item definition to itemDefinitions array
/// @param type Type of Item Enum
/// @param spriteIndex Of Sprite To Show In GUI
/// @param amount Amount Of This Item Type WE Currently Hold
/// @param maxAmount maxAmount of this item we can hold

var _typeOfItem	= argument0;
var _sprite		= argument1;
var _name		= argument2;
var _amount		= argument3;
var _maxAmount	= argument4;

itemDefinitions[_typeOfItem, ItemProperties.sprite]	= _sprite;
itemDefinitions[_typeOfItem, ItemProperties.name]	= _name;
itemDefinitions[_typeOfItem, ItemProperties.amount]	= _amount;
itemDefinitions[_typeOfItem, ItemProperties.maxAmount] = _maxAmount;