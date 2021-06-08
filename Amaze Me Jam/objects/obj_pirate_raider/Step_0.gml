/// @description Insert description here
// You can write your code in this editor

event_inherited();
if(!instance_exists(obj_player)) exit;
if(!dead)
{
	attack_target(obj_player,250,bullet_timer,1,2);
}