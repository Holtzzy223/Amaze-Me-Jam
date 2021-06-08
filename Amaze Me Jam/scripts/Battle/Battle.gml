// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function target_in_range(_target,_range)
{
	if(point_distance(x,y,_target.x,_target.y)<=_range)
	{
		
		return true;
	}
	else
	{
		return false;
	}

}

