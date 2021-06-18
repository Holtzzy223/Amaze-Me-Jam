/// @description Insert description here
// You can write your code in this editor
move_wrap(true,true,sprite_width/2);
if(has_shield)
{
	if(shield<max_shield)
	{
		shield+=0.001;
	}
	shield = clamp(shield,0,max_shield);
	if(shield==max_shield)
	{
		if(!instance_exists(obj_shield))
		{
			instance_create_layer(x,y,layer,obj_shield)
		}
	}
}