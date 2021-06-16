/// @description 
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target_in_range(target,range))
	{
			if(can_interact)
			{
				with(manager_factions)
				{
					speed = 0;
				}
				if!(instance_exists(obj_text_box))
				{
					script_execute_ext(dialogue_script,dialogue_scripts_args);
				}
				can_interact = false;
			}
			//target.current_mission = new_mission;
			//target.current_mission.display_mission()
	}
}