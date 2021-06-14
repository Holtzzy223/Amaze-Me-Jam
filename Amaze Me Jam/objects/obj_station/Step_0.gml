/// @description Insert description here
// You can write your code in this editor
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target_in_range(target,range))
	{
			
			target.current_mission = new_mission;
			target.current_mission.display_mission();
			if(instance_exists(obj_text_box))
			{
				obj_player.speed = 0;
			}
	}
}

