/// @description 
if(layer_sequence_exists("GUI", sequence_element))
{
	
	draw_set_text(c_silver,fnt_pause,fa_center,fa_center)
	draw_set_alpha(wave(0.5,1,10,2))
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"PAUSE")
}
