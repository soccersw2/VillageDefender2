/// @desc Path planner
/// @param target	Destination of path to create

var target = argument0;
	
var target_x = (target.x div game.cellSize)*game.cellSize+23;
var target_y = (target.y div game.cellSize)*game.cellSize+23;
	
var validPath = mp_grid_path(global.grid,path,x,y,target_x,target_y,1);

if (validPath)
{
	path_start(path,spd,path_action_stop,false);
	return true;
}

else 
{
	return false;
}