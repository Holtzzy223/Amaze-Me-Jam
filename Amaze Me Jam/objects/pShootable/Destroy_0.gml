/// @desc ???
if (health_drop == true){
var chance = irandom_range(1,100);
	if (chance <= 33 )||(chance <= 66) 
	{
	instance_create_layer(x,bbox_top,"Player",oHealth);
	}
	if (chance == 100)
		{
			for(var i = 0; i <=3; i++ )
			{
				instance_create_layer(x + i*chance,bbox_top + i*chance*choose(-1,1),"Player",oHealth);
			}
		}
}
for(var i = 0; i <= irandom_range(1,5)*coin_mod;i++ )
{
	var inst = instance_create_layer(x+(i*choose(-2.5,2.5)),bbox_top + i*-1.6,"Player",o_gem);
	with(inst){
	while (true) {
    done = true;
    with(oWall) {
        if(point_distance(other.x, other.y, x, y) < 16) {
            other.x = x + (sprite_width/4);
            other.y = y + (sprite_height/4);
            done = false;
        } 
    }
    if (done) {
        break;
    }
}
}
	
}
if (beast_crate == true)
{
	for(var i = 0; i <= beastCount;i++ )
{
	
	instance_create_layer(x+(i*choose(-2.5,2.5)),bbox_top + (i*-1.6),"Enemy",beastType);
}
}
audio_sound_pitch(snDeath,choose(0.6,0.8,1.0));
audio_play_sound(snDeath,5,false);