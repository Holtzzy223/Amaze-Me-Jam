/// @description 

// Inherit the parent event
event_inherited();

repeat(35)
{
	instance_create_layer(x+irandom_range(-160,160),y+irandom_range(-160,160),"Instances",obj_ore)
}
