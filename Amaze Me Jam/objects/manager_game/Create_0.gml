/// @description Insert description here
// You can write your code in this editor
instance_create_layer(0,0,"Instances",manager_asteroids);
instance_create_layer(room_width/2,room_height/2,"Instances",obj_player);
if(!audio_is_playing(snd_bgm1))
{
	audio_play_sound(snd_bgm1,1,true);
}