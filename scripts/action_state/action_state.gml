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

// Sword Attack
if (itemEquipped == Item.sword && lMouseClicked && stamina > 1
	&& (image_index == 0 || image_index == 3 || image_index == 6 || image_index == 9 || image_index == 12)) 
{
	var hb = instance_create_layer(x + lengthdir_x(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y)), y + 
		lengthdir_y(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y)), "Instances", obj_hitbox);
		
	with(hb)
	{
		with(instance_place(x, y, obj_enemy))
		{
			enemy_attacked(damage);
			
		}
	}
	stamina -= 10/60;
}
else instance_destroy(obj_hitbox);

// Stamina Regineration
if (stamina < 100 && !input_run && !lMouseClicked)
{
	if (stamina < 30) stamina += 10/60;
	else if (stamina >= 30 && stamina < 60) stamina += 15/60;
	else stamina += 20/60;
}



