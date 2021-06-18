/// @description Insert description here
// You can write your code in this editor
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
//station direction indicator




	
