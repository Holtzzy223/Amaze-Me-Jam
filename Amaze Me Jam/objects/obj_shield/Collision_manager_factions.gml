/// @description 
if(instance_exists(obj_player))
{
	if(other.faction!=obj_player.faction)
	{
		obj_player.shield-=4;
	}
}