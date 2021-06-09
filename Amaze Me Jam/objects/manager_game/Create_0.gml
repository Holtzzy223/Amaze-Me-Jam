/// @description Insert description here
// You can write your code in this editor
randomize();
instance_create_layer(0,0,"Instances_controllers",manager_Spawner);
instance_create_layer(room_width/2,room_height/2,"Instances_controllers",obj_player);
if(!audio_is_playing(snd_bgm1))
{
	audio_play_sound(snd_bgm1,1,true);
}
enum FACTION
{
	ALLY,
	ENEMY,
	NEUTRAL
}
