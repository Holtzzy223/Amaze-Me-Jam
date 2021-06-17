/// @description 
var _pushspd = 2;
var _col = instance_place(x,y,par_enemy);
if(_col){
    var _dist = sign(x - _col.x) * _pushspd;
    if(!place_meeting(x + _dist, y, manager_faction_ally))
        x += _dist;
}

y = ystart + sin(get_timer()/500000)*5;
image_xscale = wave(-1,1,2,0.5);

image_alpha = wave(0.5,0.8,3,0.35);

if(target_in_range(target,350))
{
	image_angle = angle_difference(image_angle,target.image_angle);
	move_towards_point(target.x,target.y,10);
	//x = approach(x,target.x,4);
	//y = approach(y,target.y,4);
	//x=lerp(x,target.x,1)
	//y=lerp(y,target.y,1)
}
