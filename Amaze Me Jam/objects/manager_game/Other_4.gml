/// @description Insert description here
// You can write your code in this editor
if(room != rm_menu && global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	instance_create_layer(0,0,"Instances_controllers",obj_camera);
	instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	instance_create_layer(0,0,"Instances_controllers",manager_particles);
	alarm_set(1,10);
	global.new_game = false;
}
if(room != rm_menu && !global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	instance_create_layer(0,0,"Instances_controllers",manager_particles);
	//instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	if(!global.player_killed)
	{
		load_game(SAVEFILE);
	}
	alarm_set(1,300);
	global.player_killed = false;
}
if(!audio_is_playing(snd_bgm1))
{
	audio_play_sound(snd_bgm1,1,true);
}
