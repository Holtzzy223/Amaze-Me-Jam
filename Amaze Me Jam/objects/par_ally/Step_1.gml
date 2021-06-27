/// @description 
move_wrap(true,true,sprite_width/2);
if(instance_exists(obj_player))
{

	if(target_in_range(obj_station,_range))
	{
		follow_active = false;
		move_towards_point(obj_station.x,obj_station.y,8);
	}
	if(place_meeting(x,y,obj_station))
	{
		if(obj_player.current_mission!=undefined)
		{
			
			obj_player.targets_fetched++;
			obj_player.allies_saved++;
			if(obj_player.targets_fetched >= obj_player.current_mission._fetch_amount)
			{
				obj_player.current_mission.complete_mission();
			}
			
		}
		instance_destroy(id);
	}
}