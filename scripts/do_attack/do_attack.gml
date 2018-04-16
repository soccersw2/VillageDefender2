/// @desc enemy_attack(target)
/// @param target	Target to attack
// Sword Attack
//show_message("doing damage");
var target = argument0;

var hb = instance_create_layer(x + lengthdir_x(game.cellSize/2, point_direction(x,y,target.x,target.y)),
		y + lengthdir_y(game.cellSize/2, point_direction(x,y,target.x,target.y)), "Instances", obj_hb);
		
with(hb)	target = (instance_place(x, y, target))
	
do_damage(target);