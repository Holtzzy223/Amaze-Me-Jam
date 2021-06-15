/// @description Insert description here
// You can write your code in this editor
randomize();
global.new_game = true;
global.player_killed = false;
global.game_pause = false;
global.text_speed = 1;
global.mission_kills = 0;

window_set_cursor(cr_none)

cursor_sprite = spr_cursor;
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

