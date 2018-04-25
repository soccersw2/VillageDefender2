/// @desc handle_purchase()
/// @param array  categoryArray with tiers of selected item

var array = argument0;
//var index = argument1;

obj_player.itemAmmo++;
obj_player.coins -= itemCost;

switch(currentCategory)
{
	case ShopCategory.bows:
		
		break;
	case ShopCategory.arrows:
		obj_player.inventory[Item.bow, ItemProperties.amount] += 1;
		
		break;
	case ShopCategory.swords:
		ownedArray[currentCategory, i] = 0;
		break;
	case ShopCategory.walls:
		obj_player.inventory[Item.walls, ItemProperties.amount] += 1;
		break;
	case ShopCategory.potions:
		ownedArray[currentCategory, i] = 0;
		break;

}