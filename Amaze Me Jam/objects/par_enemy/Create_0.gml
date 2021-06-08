/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

speed = 2;
direction =  random(360);

image_angle = direction;

hp = 1;
dead = false;
bullet_speed = 4;
invincible = false;
flash = false;
function damage_enemy(_damage)
{
	if(!invincible)
	{
		hp -=_damage;
		
		//Dead Check
		if(hp <=0)
		{
			repeat(25)
			{
				instance_create_layer(x,y,layer,obj_debris);
			}
			dead = true;
			
		}
		else
		{
			invincible = true;
			//flash
			flash = true;
			alarm_set(0,30);
			//bounce
			motion_set(-direction+random_range(-5,5),1);
		}
		
	}
}