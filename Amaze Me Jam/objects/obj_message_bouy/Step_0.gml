/// @description 
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target.hp>=1)
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
					save_game(SAVEFILE)
					can_interact = false;
				}
				alarm_set(1,900);
			
		}
	}
}