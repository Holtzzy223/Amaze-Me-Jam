/// @description Insert description here
// You can write your code in this editor
image_angle+=rotation_dir;
move_wrap(true,true,sprite_width/2);
_time += 1 / room_speed;
if(hp <=0)
{
	switch(sprite_index)
	{
		case spr_asteroid_large:
			sprite_index = spr_asteroid_med;
			var child = instance_create_depth(x+choose(sprite_width/2,-sprite_width/2),y,depth,obj_asteroid);
			child.sprite_index = spr_asteroid_med;
			hp =5;
			repeat(10)
			{
				instance_create_depth(x,y,depth,obj_debris);
			}		
		break;
		case spr_asteroid_med:
			sprite_index = spr_asteroid_small;
			var child = instance_create_depth(x+choose(sprite_width/2,-sprite_width/2),y,depth,obj_asteroid);
			child.sprite_index = spr_asteroid_small;
			repeat(10)
			{
				instance_create_depth(x,y,depth,obj_debris);
			}
			hp = 3;
		break;
		case spr_asteroid_small:
			sprite_index = spr_asteroid_tiny;
			var child = instance_create_depth(x+choose(sprite_width/2,-sprite_width/2),y,depth,obj_asteroid);
			var child_second = instance_create_depth(x,y,depth,obj_asteroid);
			child.sprite_index = spr_asteroid_tiny;
			child_second.sprite_index = spr_asteroid_tiny;
			repeat(15)
			{
				instance_create_depth(x,y,depth,obj_debris);
			}
			hp = 2;
		break;
		case spr_asteroid_tiny:
			instance_destroy(id);
			repeat(25)
			{
				instance_create_depth(x,y,depth,obj_debris);
			}
		break;
	}
	
}
if(instance_place(x,y,obj_asteroid))
{
	speed = 0;
	if(sprite_index != spr_asteroid_tiny)
	{
		hp-=0.005;
	}
	image_blend = random_range(c_yellow,c_red);
	deflection_dir = -(direction+image_angle);
	motion_set(deflection_dir,1);

}
if(place_meeting(x,y,obj_shield))
{
	hp = 0;
}