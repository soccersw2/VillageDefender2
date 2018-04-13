// Walls active
if (input_z) 
{
	if (itemEquipped != item.walls)
	{
		itemEquipped = item.walls;
		instance_create_layer(x, y, "Walls", obj_wall_temp);
	}
	else 
	{
		itemEquipped = item.sword;
		instance_destroy(obj_wall_temp);
	}
}

// Sword Attack
if (stamina > 1 && lMouseClicked && itemEquipped == item.sword
	&& (image_index == 3 || image_index == 6 || image_index == 9 || image_index == 12)) 
{
	var hb = instance_create_layer(x + lengthdir_x(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y)), y + 
		lengthdir_y(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y)), "Instances", obj_hitbox);
		
	with(hb)
	{
		with(instance_place(x, y, obj_enemy))
		{
			attack_enemy(damage);
			
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

// Switch equipped item
if (input_q) itemEquipped = item.sword;

if (input_e) itemEquipped = item.bow;

if (input_1) itemEquipped = item.inv1;

if (input_2) itemEquipped = item.inv2;

if (input_3) itemEquipped = item.inv3;

