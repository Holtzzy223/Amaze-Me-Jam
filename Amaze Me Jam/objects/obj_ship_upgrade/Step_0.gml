/// @description 
if(instance_exists(obj_player))
{
	speed=obj_player.speed;
	_time += speed*0.5 / room_speed;
	
	image_alpha = wave(0.4,1,4,0.5);
}
else
{
	instance_destroy(id);
}