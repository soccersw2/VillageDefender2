var targetEnemy;
var xPosBox = x + lengthdir_x(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y));
var yPosBox = y + lengthdir_y(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y));

// Melee Attack
if (itemEquipped == Item.sword && lMouseClicked && stamina > 1
	&& (image_index == 0))
{
	var hb = instance_create_layer(xPosBox, yPosBox, "Instances", obj_hb);		
		
	with(hb)
	{
		targetEnemy = instance_place(x, y, obj_enemy)		
	}

	do_damage(targetEnemy);
	
	stamina -= 10/60;
}








