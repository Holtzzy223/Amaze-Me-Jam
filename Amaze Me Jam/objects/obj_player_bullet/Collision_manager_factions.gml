/// @description Insert description here
// You can write your code in this editor
//instance_destroy(id);
if(other.faction==faction) exit;
if(other.faction==FACTION.ENEMY) other.damage_enemy(damage);
if(other.faction==FACTION.ALLY)
{
	if(other.object_index == obj_player.object_index)
	{
		other.damage_player(damage);
	}
}