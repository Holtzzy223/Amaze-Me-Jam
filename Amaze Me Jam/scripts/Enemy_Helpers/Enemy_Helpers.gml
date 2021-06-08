// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_in_range(_range)
{
	if(point_distance(x,y,obj_player.x,obj_player.y)<=_range)
	{
		
		return true;
	}
	else
	{
		return false;
	}

}