/// @description Insert description here
// You can write your code in this edito
spawn_count = random_range(6,10);

for(i = 0; i <spawn_count;i++)
{
	instance_create_depth(random_range(0,room_width),random_range(0,room_height),depth,obj_asteroid);
}