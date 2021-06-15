/// @description 
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target_in_range(target,range))
	{
			target.speed -=1;
			if!(instance_exists(obj_text_box))
			{
				script_execute_ext(dialogue_script,dialogue_scripts_args);
			}
			//target.current_mission = new_mission;
			//target.current_mission.display_mission()
	}
}