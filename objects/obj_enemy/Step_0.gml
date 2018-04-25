// Reset variables
path_speed = spd; // Reset path speed 

// Set correct sprite
enemy_set_sprite();

///AI
//(path.path_index != -1) if path started
var spot_dir = point_direction(x,y,obj_player.x,obj_player.y) //view line check direction
var target= collision_line(x,y,x+lengthdir_x(detectRadius,spot_dir)
							,y+lengthdir_y(detectRadius,spot_dir),obj_player,true,true) //checks for player
var pathValid = false; // If there is a valid path and path started


if (hit)
{
	path_end();
	// recoil 
	speed = 0;
}
else
{
	// If player in radius, follow player
	if (target != noone)
	{
		currentTarget = instance_nearest(x, y, obj_player);
		pathValid = path_planner(currentTarget);
	}

	// If player not in radius or no path to player, follow hub
	if (!pathValid)
	{
		currentTarget = inst_56F9A717;
		pathValid = path_planner(currentTarget);
		//if (!pathValid) show_message("path not valid");
	}

	// If no path to player or hub, follow wall
	if (!pathValid)
	{
		currentTarget = instance_nearest(x, y, obj_wall);
		pathValid = path_planner(currentTarget);
	}
	
	// If still no path
	if (!pathValid)
	{
		path_end();
		speed = 0;
	}

	// Attack player
	if (distance_to_object(currentTarget) <= 12)
	{
		currentState = State.attacking;
	
		path_speed = 0;
		sprite_index = currentAttack;
	
		if (timeBtwnAttacks <= 0) 
		{
			do_attack(currentTarget);
			timeBtwnAttacks = 60;
		}
		else if (timeBtwnAttacks > 0) timeBtwnAttacks--;
		
	}
	else 
	{
		currentState = State.running;
	}
}
