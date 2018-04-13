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





