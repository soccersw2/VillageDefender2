// AI path movement
{
	motion_add(point_direction(x, y, planner.x, planner.y), spd);
	
	with (planner)
	{
		// Hit; stay idle
		if(other.hit)
		{
			targetx = x;
			targety = y;
		}
		// Player in range; move to player
		else if (collision_circle(x, y, 200, obj_player, false, true))
		{
			targetx = obj_player.x;
			targety = obj_player.y;
		}
		// Roaming; move to hub
		else 
		{
			targetx = obj_hub.x;
			targety = obj_hub.y;
			symbolTimer = -1; // temp 
		}

		x = follower.x;
		y = follower.y;
		plan(targetx, targety);
		
	}
}

script_execute(moveState);