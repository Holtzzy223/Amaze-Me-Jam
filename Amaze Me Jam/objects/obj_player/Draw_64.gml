/// @description Insert description here
// You can write your code in this editor
if(!global.game_pause)
{
	var health_amt;
	health_amt = (hp / max_hp) * 100;draw_healthbar(1600, 32, 1900, 64, health_amt, c_black, c_red, c_lime, 0, true, true);
	player_hp_draw = lerp(player_hp_draw, hp, 0.1);
	
	
	
	var energy_amt;
	energy_amt = (energy / max_energy) * 100;
	draw_healthbar(1600, 64, 1900, 80, energy_amt, c_dkgrey, c_maroon, c_yellow, 0, true, true);
	
	var shield_amt;
	shield_amt = (shield / max_shield) * 100;
	if(has_shield)
	{
		draw_healthbar(1600, 80, 1900, 92, shield_amt, c_ltgrey, c_maroon, c_aqua, 0, true, true);
	}
	draw_set_text(c_yellow,fnt_title_mid,fa_left,fa_middle);
	draw_text(1600,124,"Ore: "+string(ore_amount)+" kT");
	if(current_mission != undefined && current_mission._status == STATUS.ACTIVE)
	{
		draw_set_text(c_yellow,fnt_desc,fa_center,fa_middle)
		switch(current_mission._type)
		{
			case TYPE.KILL:
			draw_sprite(current_mission._target_sprite,0,display_get_gui_width()/2,48);
			draw_text(display_get_gui_width()/2,108,string(global.mission_kills)+" / "+ string(current_mission._kill_amount) +" : Destroyed");
			break;
			case TYPE.ESCORT:
			draw_text(display_get_gui_width()/2,28,"Locate and Escort: "+string(targets_fetched)+"/ "+string(current_mission._fetch_amount));
			draw_sprite(current_mission._target_sprite,0,display_get_gui_width()/2 ,76);
			break;
			case TYPE.TUTORIAL:
			draw_sprite_ext(spr_station_strip65,0,display_get_gui_width()/2,76,0.75,0.75,0,c_white,wave(0.5,0.8,7,1));
			draw_text(display_get_gui_width()/2,28,"Locate Alpha Station");
			break;
			
		}
		draw_set_text(c_white,fnt_desc,fa_left,fa_top);
	}
	else
	{
		path_target = obj_station;
	}
}


	
