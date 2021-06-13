/// @description AUTOSAVE
// You can write your code in this editor
if(!global.game_pause)
{	
	if(instance_exists(obj_player))
	{
		if(obj_player.hp > 1)
		{
			save_game(SAVEFILE);
		}
	}
}
alarm_set(1,9000);