/// @description Insert description here
// You can write your code in this editor
if(room != rm_menu && global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	instance_create_layer(0,0,"Instances_controllers",obj_camera);
	instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	instance_create_layer(0,0,"Instances_controllers",manager_particles);
	alarm_set(1,300);
}
if(room != rm_menu && !global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	instance_create_layer(0,0,"Instances_controllers",manager_particles);
	//instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	load_game(SAVEFILE);
	alarm_set(1,300);

}
if(!audio_is_playing(snd_bgm1))
{
	audio_play_sound(snd_bgm1,1,true);
}
