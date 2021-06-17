if(instance_exists(obj_player) && can_buy)
{
	if(obj_player.ore_amount >= upgrade_cost)
	{
		obj_player.ore_amount -= upgrade_cost;
		instance_create_layer(obj_player.x,obj_player.y,"Instances_controllers",obj_shield)
		can_buy = false;
	}
}

