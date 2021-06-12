/// @description left click button
if (!file_exists(SAVEFILE))
{
	global.new_game = true;
	//SlideTransition(TRANSITION.NEXT)
	room_goto(rm_game); 
}
else
{
	//continue
	global.new_game = false;
	//SlideTransition(TRANSITION.GOTO);
	room_goto(rm_game)
}


