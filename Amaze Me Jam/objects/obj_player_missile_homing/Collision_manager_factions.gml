/// @description Insert description here
// You can write your code in this editor

if(other.faction==faction) exit;
if(other.faction==FACTION.ENEMY)other.damage_enemy(enemy_damage);
if(other.faction==FACTION.ALLY)
{
	if(other.object_index == obj_player.object_index)
	{
		other.damage_player(player_damage);
	}
}
global.camera_shake = 10;
sprite_index = spr_boom;
image_speed = 1;

if(sprite_index == spr_boom)
{
	if(image_index>image_number-1)
	{
		instance_destroy(id);
	}
}