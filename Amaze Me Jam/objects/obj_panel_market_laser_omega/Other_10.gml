if(instance_exists(obj_player) && can_buy)
{
	if(obj_player.ore_amount >= upgrade_cost)
	{
		obj_player.ore_amount -= upgrade_cost;
		obj_player.current_laser = LASER.RUBY
		can_buy = false;
	}
}

