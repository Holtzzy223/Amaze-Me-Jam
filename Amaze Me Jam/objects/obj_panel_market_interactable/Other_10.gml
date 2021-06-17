/// @description 
if(instance_exists(obj_player))
{
	if(obj_player.ore_amount >= upgrade_cost && can_buy)
	{
		obj_player.ore_amount-=upgrade_cost;
		
		can_buy = false;
	}
}