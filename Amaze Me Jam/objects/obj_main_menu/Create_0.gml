sequence_element = -1
if (!layer_sequence_exists("GUI", sequence_element)) 
{
	sequence_element = layer_sequence_create("GUI", display_get_gui_width()/2,display_get_gui_height()/2, seq_gui_main);
}
