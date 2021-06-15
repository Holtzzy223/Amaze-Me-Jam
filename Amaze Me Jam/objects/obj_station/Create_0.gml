/// @description Insert description here
// You can write your code in this editor
event_inherited();
rotation_dir= choose(-0.33,0.33);
image_blend = c_white
image_speed =1;

target = obj_player;
range = 125;
new_mission = new mission();
new_mission._title = "Tutorial Test Mission";
new_mission._tag_line = "THE TESTING OF TESTS";