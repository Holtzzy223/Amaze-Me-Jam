/// @description Insert description here
// You can write your code in this editor
if(other.faction == faction) exit;

if(other.faction == FACTION.ALLY)
{
		global.camera_shake = 30;
		sprite_index = spr_boom;
		image_speed = 1;
}