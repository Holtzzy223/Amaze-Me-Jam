/// @description 
event_inherited();
if(target_in_range(obj_station,_range))
{
	if(instance_exists(obj_player))
	{
		if(obj_player.current_mission._type == TYPE.ESCORT && obj_player.current_mission._status = STATUS.ACTIVE)
		{
			obj_player.current_mission.complete_mission();
			speed = 0;
			image_alpha -= 0.01;
		}
	}
}
if(image_alpha<=0)
{
	instance_destroy(id);
}