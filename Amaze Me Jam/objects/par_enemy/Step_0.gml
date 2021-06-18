/// @description Insert description here
// You can write your code in this editor
_time += 1 / room_speed;
value = wave(0,1+_time,3,0.25);
if(global.game_pause) exit;
if(dead)
{
	global.camera_shake = 3;
	image_alpha -= 0.1;
	image_angle +=5;
}

if(image_alpha<=0)
{
	
	instance_destroy(id);
}
if(!dead)
{
	thrust_counter++;
	if(thrust_counter >=4)
	{
		thrust_counter = 0 ;
		if(speed >= 2)
		{
			part_particles_create(manager_particles.particle_system,x-lengthdir_x(sprite_width*0.4,image_angle), y-lengthdir_y(sprite_height/2,image_angle),manager_particles.particle_exhaust_enemy_raider,1);
		}
	}
}
// no bunches

var _pushspd = 2;
var _col = instance_place(x,y,par_enemy);
if(_col){
    var _dist = sign(x - _col.x) * _pushspd;
    if(!place_meeting(x + _dist, y, manager_faction_ally))
        x += _dist;
}
