/// @description path
if(instance_exists(path_target))
{
	mp_grid_path(global.grid, path, x, y, path_target.x, path_target.y, 1);
	alarm_set(3,60);
}