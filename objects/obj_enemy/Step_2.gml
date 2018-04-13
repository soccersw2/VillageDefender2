// AI path movement
motion_add(point_direction(x, y, planner.x, planner.y), spd);

target_x = obj_player.x;
target_y = obj_player.y;

with (planner)
{
	x = follower.x;
	y = follower.y;
	plan(other.target_x, other.target_y);
}

script_execute(state);