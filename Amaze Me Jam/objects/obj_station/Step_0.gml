/// @description Insert description here
// You can write your code in this editor
image_angle +=rotation_dir;
direction = random(360);
speed = 0.33;
_time += 1 / (image_angle+1);
if instance_exists(target)
{
	if(target_in_range(target,range))
	{
			
			target.current_mission = new_mission;
			target.current_mission.display_mission();
			if(instance_exists(obj_text_box))
			{
				
			}
	}
}

