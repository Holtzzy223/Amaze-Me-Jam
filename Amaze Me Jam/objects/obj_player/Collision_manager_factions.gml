/// @description Insert description here
// You can write your code in this editor
if(invincible) exit;
if(other.faction == faction) exit;
global.camera_shake = 3;
if(other.faction ==FACTION.ENEMY)
{
	if(!other.dead)
	{
		damage_player(other.damage);
	}
}