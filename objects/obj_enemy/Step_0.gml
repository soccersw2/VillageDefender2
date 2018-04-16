// Set correct sprite
enemy_set_sprite();




///AI
//(path.path_index != -1) if path started
var spot_dir = point_direction(x,y,obj_player.x,obj_player.y) //view line check direction
var target= collision_line(x,y,x+lengthdir_x(detectRadius,spot_dir)
							,y+lengthdir_y(detectRadius,spot_dir),obj_player,true,true) //checks for player
var pathValid = false; // If there is a valid path and path started

path_speed = spd; // Reset path speed 
	
// If player in radius, follow player
if instance_exists(target) 
	currentTarget = obj_player;
	pathValid = path_planner(currentTarget);

// If player not in radius or no path to player, follow hub
if (!instance_exists(target) || !pathValid)
	currentTarget = obj_hub;
	pathValid = path_planner(currentTarget);

// If no path to player or hub, follow wall
if (!pathValid)
	currentTarget = instance_nearest(x, y, obj_wall)
	pathValid = path_planner(currentTarget);

// Attack player
if (distance_to_object(currentTarget) <= 12)
{
	path_speed = 0;
	sprite_index = currentAttack;
	
	enemy_attack (obj_player);
}

