/// @description Insert description here
// You can write your code in this editor
if(other.faction == faction) exit;

if(other.faction ==FACTION.ENEMY)
{
	if(!other.dead)
	{
		damage_player(other.damage);
	}
}