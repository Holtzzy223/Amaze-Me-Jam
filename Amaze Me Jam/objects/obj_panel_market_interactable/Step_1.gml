/// @description 
var _mouse_gui_x = device_mouse_x_to_gui(0);
var _mouse_gui_y = device_mouse_y_to_gui(0);

if (position_meeting(_mouse_gui_x, _mouse_gui_y, id)&&!acquired) 
{
	image_alpha = wave(1,0.7,3,1);
	//image_yscale = lerp(image_yscale, init_scale_y + (extra_height_on_hover / sprite_get_height(sprite_index)), 0.1);
	audio_sound_pitch(snd_menu_pluck,random_range(0.8,1))
	if(!audio_is_playing(snd_menu_pluck)&&!sound_played)
	{
		audio_play_sound(snd_menu_pluck,1,false);
		sound_played = true
	}

	if(mouse_check_button_released(mb_left)&&obj_player.ore_amount >= upgrade_cost)
	{
		audio_sound_pitch(snd_menu_select,random_range(0.8,1.1))
		audio_play_sound(snd_menu_select,1,false);
		event_user(0);
	}
	else 
	if(mouse_check_button_released(mb_left))
	{
		audio_sound_pitch(snd_menu_select,random_range(0.5,0.6));
		audio_play_sound(snd_menu_select,1,false);
	}
	
}
else 
{
	image_alpha = lerp(image_alpha,0.5,0.1);
	image_blend = c_ltgray;
	//image_yscale = lerp(image_yscale, init_scale_y, 0.2);
	sound_played = false;
}