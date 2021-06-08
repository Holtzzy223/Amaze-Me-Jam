/// @description Insert description here
// You can write your code in this editor

event_inherited();
if(!instance_exists(obj_player)) exit;
if(!dead)
{
	if(player_in_range(250))
	{
		var _angle = point_direction(x,y,obj_player.x,obj_player.y);
		_angle = image_angle  - angle_difference(image_angle,_angle);
		image_angle = lerp(image_angle,_angle,0.1); 
		direction = image_angle;
		bullet_timer--;
		if(bullet_timer <=0)
		{
			spawn_projectile(obj_player_bullet,direction,3,faction,snd_pewpew);
			bullet_timer = 60;
		}
	}
	else
	{
	
	}
}