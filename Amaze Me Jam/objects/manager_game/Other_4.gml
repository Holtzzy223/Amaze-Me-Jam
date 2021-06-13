/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(snd_bgm1))
{
	audio_play_sound(snd_bgm1,1,true);
}
if(room != rm_menu && global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	instance_create_layer(0,0,"Instances_controllers",manager_particles);
	alarm_set(1,10);
	global.new_game = false;
}
else
if(room != rm_menu && !global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	instance_create_layer(0,0,"Instances_controllers",manager_particles);
	if(file_exists(SAVEFILE))
	{
		load_game(SAVEFILE);
	}else
	{
		instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	}
	alarm_set(1,300);
	
}
if(room != rm_menu)
{
	
	cursor_sprite = spr_reticle;
}
