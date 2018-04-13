// Walls active
if (input_z) 
{
	if (itemEquipped != Item.walls)
	{
		itemEquipped = Item.walls;
		itemAmmo = inventory[Item.walls, ItemProperties.amount];
		
		instance_create_layer(x, y, "Walls", obj_wall_temp);
	}
	else 
	{
		itemEquipped = Item.sword;
		itemAmmo = inventory[Item.sword, ItemProperties.amount];
		instance_destroy(obj_wall_temp);
	}
}

// Switch equipped item
if (input_q) 
{
	itemEquipped = Item.sword;
	itemAmmo = inventory[Item.sword, ItemProperties.amount];
}

if (input_e) 
{
	itemEquipped = Item.bow;
	itemAmmo = inventory[Item.bow, ItemProperties.amount];
}

if (input_1) 
{
	itemEquipped = Item.inv1;
	itemAmmo = inventory[Item.inv1, ItemProperties.amount];
}

if (input_2) 
{
	itemEquipped = Item.inv2;
	itemAmmo = inventory[Item.inv2, ItemProperties.amount];
}

if (input_3) 
{
	itemEquipped = Item.inv3;
	itemAmmo = inventory[Item.inv3, ItemProperties.amount];
}