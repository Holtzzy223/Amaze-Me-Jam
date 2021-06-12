/// @description Insert description here
// You can write your code in this editor
with (instance_create_layer(x,y-64,layer,obj_world_text))
{
	var posx = obj_player.x;
	var posy = obj_player.y;
	text  = string(posx)+string(posy);
	length = string_length(text);
	_reator = id;
	
}