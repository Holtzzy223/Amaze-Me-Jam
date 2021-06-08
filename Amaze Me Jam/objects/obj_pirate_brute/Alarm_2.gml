/// @description Lay Mines
// You can write your code in this editor


instance_create_layer(x-lengthdir_x(sprite_width/2,image_angle),y-lengthdir_y(sprite_height/2,image_angle),layer,obj_magnetic_mine);
alarm_set(2,mine_timer);