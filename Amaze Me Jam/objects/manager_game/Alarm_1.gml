/// @description AUTOSAVE
// You can write your code in this editor
if(instance_exists(obj_player))
{
	if(obj_player.hp > 1)
	{
		save_game(SAVEFILE);
	}
}
alarm_set(1,9000);