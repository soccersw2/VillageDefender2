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
if (stamina > 1 && lMouseClicked && itemEquipped == item.sword) 
{
	instance_destroy(obj_hitbox);
	instance_create_layer(x + lengthdir_x(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y)), y + 
		lengthdir_y(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y)), "Instances", obj_hitbox);
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

if (input_q) itemEquipped = item.sword;

if (input_e) itemEquipped = item.bow;

if (input_1) itemEquipped = item.inv1;

if (input_2) itemEquipped = item.inv2;

if (input_3) itemEquipped = item.inv3;

