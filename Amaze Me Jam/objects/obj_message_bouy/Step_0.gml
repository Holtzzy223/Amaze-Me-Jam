/// @description 
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target_in_range(target,range))
	{
			target.speed -=1;
			target.current_mission = new_mission;
			target.current_mission.display_mission()
	}
}