/// @description Insert description here
// You can write your code in this editor
event_inherited();
rotation_dir= choose(-0.33,0.33);
image_blend = c_white
image_speed =1;
sequence_element = -1;
target = obj_player;
can_dock = true;
range = 125;
//Hunt 
kill_mission = new mission_kill();
//Escort
escort_mission = new mission_escort();
//fetch
fetch_mission = new mission_salvage();


missions = array_create();
missions[0] = kill_mission;
missions[1] = escort_mission;
missions[2] = fetch_mission;

alarm_set(2,7200);
