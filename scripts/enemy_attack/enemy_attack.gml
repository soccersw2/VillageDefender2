/// @desc enemy_attack(target)
/// @param target	Target to attack
// Sword Attack
var target = argument0;

if ((image_index == 0 || image_index == 6 || image_index == 11))
{
	var hb = instance_create_layer(x + lengthdir_x(game.cellSize/2, point_direction(x,y,target.x,target.y)),
			y + lengthdir_y(game.cellSize/2, point_direction(x,y,target.x,target.y)), "Instances", obj_hb_enemy);
		
	with(hb)
	{
		with(instance_place(x, y, target))
		{
			// Do damage to player;			
		}
	}
}
else instance_destroy(obj_hb_enemy);