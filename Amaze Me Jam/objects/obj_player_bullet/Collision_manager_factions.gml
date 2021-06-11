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
instance_destroy(id);