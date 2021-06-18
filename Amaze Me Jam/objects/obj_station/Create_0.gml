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
new_mission = new mission();
new_mission._type = TYPE.KILL;
new_mission._reward = REWARD.ORE;
new_mission._reward_text = "Reward: A Metric Butt Tonne of ORE"
new_mission._ore_reward = 20;
new_mission._kill_amount = 3;
new_mission._kill_target = obj_hunter_seeker;
new_mission._intro = "A squadron of pirates has been\n plaguing this sector for two months \n please deal with these intelopers immediatley.."
new_mission._title = "Hunting the Hunters";
new_mission._tag_line = " A Game of Cat and Mouse...";
new_mission._description = "Hunt down and DESTROY ("+string(new_mission._kill_amount)+") \n Hunter Seeker Class pirate vessels. ";
//Escort
escort_mission = new mission();
escort_mission._type = TYPE.ESCORT;
escort_mission._reward = REWARD.ORE;
escort_mission._reward_text = "Reward: A Metric Butt Tonne of ORE"
escort_mission._ore_reward = 40;
escort_mission._escort_target = obj_ally_dart;
escort_mission._escort_name = "Allied Republi Dart"
escort_mission._intro = "An allied Dart Class fighter is damaged\n and needs to be escorted to the Station for repairs.."
escort_mission._title = "A Friend In Need";
escort_mission._tag_line = "On the road again...";
escort_mission._description = "!!!!!URGENT!!!!!\n " + string(escort_mission._escort_name) + " in need of assistance...\n Please LOCATE and ESCORT("+string(new_mission._escort_name)+") \n to home station... ";


missions = array_create();
missions[0] = new_mission;
missions[1] = escort_mission;

