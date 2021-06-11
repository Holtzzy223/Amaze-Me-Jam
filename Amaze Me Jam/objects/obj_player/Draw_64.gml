/// @description Insert description here
// You can write your code in this editor
var health_amt;
health_amt = (hp / max_hp) * 100;
draw_healthbar(1600, 32, 1800, 48, health_amt, c_black, c_red, c_lime, 0, true, true);

var energy_amt;
energy_amt = (energy / max_energy) * 100;
draw_healthbar(1600, 48, 1800, 52, energy_amt, c_dkgrey, c_maroon, c_yellow, 0, true, true);
