/// @description Insert description here
// You can write your code in this editor
image_angle+=rotation_dir;
move_wrap(true,true,sprite_width/2);
if(hp <=0)
{
	switch(image_index)
	{
		case 0:
			image_index = 1;
			var child = instance_create_depth(x+choose(sprite_width,-sprite_width),y,depth,obj_asteroid);
			child.image_index = 1;
			hp =5;
		break;
		case 1:
			image_index = 2;
			var child = instance_create_depth(x+choose(sprite_width,-sprite_width),y,depth,obj_asteroid);
			child.image_index = 2;
			hp = 3;
		break;
		case 2:
			image_index = 3;
			var child = instance_create_depth(x+choose(sprite_width,-sprite_width),y,depth,obj_asteroid);
			var child_second = instance_create_depth(x+choose(sprite_width,-sprite_width),y,depth,obj_asteroid);
			child.image_index = 3;
			child_second.image_index = 3;
			hp = 2;
		break;
		case 3:
			instance_destroy(id);
		break;
	}
	
}