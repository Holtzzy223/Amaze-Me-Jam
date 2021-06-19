/// @description randomize missions
kill_mission = new mission_kill();
escort_mission = new mission_escort();
fetch_mission = new mission_salvage();
missions[0] = kill_mission;
missions[1] = escort_mission;
missions[2] = fetch_mission;

alarm_set(2,3600);