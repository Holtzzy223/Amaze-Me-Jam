/// @description 
if (!layer_sequence_exists("GUI", sequence_element)) {
	sequence_element = layer_sequence_create("GUI", 0, 0, seq_gui);
}
else {
	layer_sequence_destroy(sequence_element);
}