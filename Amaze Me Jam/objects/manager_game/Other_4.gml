/// @description Insert description here
// You can write your code in this editor
global.grid = mp_grid_create(0, 0, room_width / 32, room_height /32, 32, 32);
var song_choice = irandom(5)
if(!audio_is_playing(bgm_songs[song_choice]))
{
	audio_stop_all();
	audio_play_sound(bgm_songs[song_choice],1,true);
}
if(room != rm_menu && global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	//instance_create_layer(room_width/2+(irandom_range(irandom_range(-14000,-10000),irandom_range(10000,14000))),room_height/2+(irandom_range(irandom_range(-14000,-10000),irandom_range(10000,14000))),"Instances_controllers",obj_player);
	spawn_object_at_camera_bounds(obj_player,1,"Instances_controllers",17000)

	alarm_set(2,60);
	global.new_game = false;
}
else
if(room != rm_menu && !global.new_game)
{
	instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
	
	if(file_exists(SAVEFILE))
	{
		load_game(SAVEFILE);
	}
	else
	{
		spawn_object_at_camera_bounds(obj_player,1,"Instances_controllers",17000)
		//instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
	}
	
	
}
if(room != rm_menu)
{
	
	cursor_sprite = spr_reticle;
}
