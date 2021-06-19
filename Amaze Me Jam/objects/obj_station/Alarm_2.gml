/// @description randomize missions
kill_mission = new mission_kill();
escort_mission = new mission_escort();

missions[0] = kill_mission;
missions[1] = escort_mission;

alarm_set(2,3600);