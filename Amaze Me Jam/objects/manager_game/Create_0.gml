/// @description Insert description here
// You can write your code in this editor
randomize();
global.new_game = true;
global.player_killed = false;
global.game_pause = false;
global.text_speed = 1;
global.mission_kills = 0;
global.inventory = ds_list_create();
window_set_cursor(cr_none)
//tut
mission_tutorial = new mission();
mission_tutorial._type = TYPE.TUTORIAL;
mission_tutorial._reward = REWARD.ORE
mission_tutorial._intro = "....Attn Allied Ship...\nYou've entered a pirate infested zone!\n Please head towards the nearest Republic Station..\n Ive sent the coordinates to your tracker";
mission_tutorial._description = "Ship Systems Overview: \nPress 'T' to display tracker \nPress 'Space' to engage thrusters\n Left MB and Right MB to fire Cannons/Laser";
mission_tutorial._complete_text = "Thank the gods youve made it...\n please dock at your conveinience.";
cursor_sprite = spr_cursor;
bgm_songs = array_create();
bgm_songs[0] = snd_bgm1;
bgm_songs[1] = snd_mus_solarwinds;
bgm_songs[2] = snd_mus_gravity;
bgm_songs[3] = snd_mus_meteorain;
bgm_songs[4] = snd_mus_velocity;
bgm_songs[5] = snd_mus_odinus;
enum FACTION
{
	ALLY,
	ENEMY,
	NEUTRAL
}

enum OBJ_TYPE
{
	PLAYER,
	NPC,
	BOSS,
	TRADER,
}

enum SHIP
{
	STANDARD,
	DART,
	BOMBER
}

enum LASER
{
	STANDARD,
	RUBY,
	EMERALD,
	OMEGA
}
