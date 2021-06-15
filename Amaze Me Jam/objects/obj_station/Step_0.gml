/// @description Insert description here
// You can write your code in this editor
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target_in_range(target,range))
	{
			
			//script_execute_ext(entity_activate_func,entity_func_args);
			target.current_mission = new_mission;
			target.current_mission.accept_mission();

	}
}

