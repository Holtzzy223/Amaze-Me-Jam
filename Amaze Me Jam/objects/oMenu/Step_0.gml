/// @desc Control Menu
//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}

	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}

	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		//ScreenShake(4,30);
		menu_control = false;
		audio_play_sound(sndDeath1,10,false);
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top) 
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		
		if (mouse_check_button_pressed(mb_left))
		{
			menu_x_target = gui_width+200;
			menu_committed = menu_cursor;
			//ScreenShake(4,30);
			menu_control = false;
		//	audio_play_sound(sndDeath1,10,false);	
		}
		
	}
	
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: //SlideTransition(TRANSITION.NEXT); 
		room_goto(rm_game); 
		break;
		case 1: 
		{
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
		}
		break;
		case 0: game_end(); break;
	}
}