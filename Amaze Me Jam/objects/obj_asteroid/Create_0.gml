/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = choose(0,1,2,3);
direction = random(360);
image_angle = random(360);

speed = 1;
rotation_dir = choose(-1,1);
switch(image_index)
{
	case 0:
		hp = 7;
	break;
	case 1:
		hp = 5;
	break;
	case 2:
		hp = 3;
	break;
	case 3:
		hp = 2;
	break;
}
add = 0.4;
uni_add = shader_get_uniform(sh_bloom, "add");
uni_time = shader_get_uniform(sh_bloom, "time");