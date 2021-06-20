/// @description 

// Inherit the parent event
event_inherited();

repeat(35)
{
	instance_create_layer(x+irandom_range(-100,100),y+irandom_range(-100,100),"Instances",obj_ore)
}
