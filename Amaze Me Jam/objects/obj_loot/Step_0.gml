/// @description 
y = ystart + sin(get_timer()/500000)*5;
image_xscale = wave(-1,1,2,0.5);

image_alpha = wave(0.25,0.65,2,0.35);

if(target_in_range(target,350))
{
	image_angle = angle_difference(image_angle,target.image_angle);
	move_towards_point(target.x,target.y,10);
	//x = approach(x,target.x,4);
	//y = approach(y,target.y,4);
	//x=lerp(x,target.x,1)
	//y=lerp(y,target.y,1)
}