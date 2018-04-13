///plan(target_x, target_y)
// Follow Path
target_x = argument0;
target_y = argument1;

mp_grid_path(global.grid, path, x, y, target_x, target_y, false);
path_start(path, 1, path_action_stop, false);