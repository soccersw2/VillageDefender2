/// @desc handle_purchase()
/// @param array  categoryArray with tiers of selected item

var array = argument0;
//var index = argument1;

//obj_player.itemAmmo++;
//obj_player.coins -= itemCost;
switch(currentCategory)
{
	case ShopCategory.bows:
		// Upgrade player item bow attributes 
		
		break;
		
	case ShopCategory.arrows:
		if(obj_player.inventory[Item.bow, ItemProperties.amount] 
			< obj_player.inventory[Item.bow, ItemProperties.maxAmount])
		{
			obj_player.inventory[Item.bow, ItemProperties.amount] += 1;
			obj_player.coins -= itemCost;
		}
		break;
		
	case ShopCategory.swords:
		// Upgrade player item sword attributes 
		
		break;
		
	case ShopCategory.walls:
		if(obj_player.inventory[Item.walls, ItemProperties.amount] 
			< obj_player.inventory[Item.walls, ItemProperties.maxAmount])
		{
			obj_player.inventory[Item.walls, ItemProperties.amount] += 1;
			obj_player.coins -= itemCost;
		}
		
		break;
		
	case ShopCategory.potions:
		switch(itemType)
		{
			case 1:	//hp
				if(obj_player.inventory[Item.inv1, ItemProperties.amount] 
					< obj_player.inventory[Item.inv1, ItemProperties.maxAmount])
				{
					obj_player.inventory[Item.inv1, ItemProperties.amount] += 1;
					obj_player.coins -= itemCost;
				}
				break;
				
			case 2:	//stamina
				if(obj_player.inventory[Item.inv2, ItemProperties.amount] 
					< obj_player.inventory[Item.inv2, ItemProperties.maxAmount])
				{
					obj_player.inventory[Item.inv2, ItemProperties.amount] += 1;
					obj_player.coins -= itemCost;
				}
				break;
				
			case 3:	//perk
				if(obj_player.inventory[Item.inv3, ItemProperties.amount] 
					< obj_player.inventory[Item.inv3, ItemProperties.maxAmount])
				{
					obj_player.inventory[Item.inv3, ItemProperties.amount] += 1;
					obj_player.coins -= itemCost;
				}
				break;
				
			default:
				break;
		}
		
		break;
}