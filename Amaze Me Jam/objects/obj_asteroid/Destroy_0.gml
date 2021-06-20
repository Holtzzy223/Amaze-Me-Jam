/// @description 
if(instance_exists(obj_player))
{
	if(obj_player.current_mission != noone && obj_player.current_mission._status = STATUS.ACTIVE && obj_player.current_mission._type = TYPE.KILL)
	{
		if(enemy_name == object_get_name(obj_player.current_mission._kill_target))
		{
			global.mission_kills++;
			if(global.mission_kills >= obj_player.current_mission._kill_amount)
			{
				obj_player.current_mission.complete_mission();
				global.mission_kills = 0;
			}
		}
	}
}