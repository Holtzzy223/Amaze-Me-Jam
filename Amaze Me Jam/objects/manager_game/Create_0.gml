/// @description Insert description here
// You can write your code in this editor
randomize();
global.new_game = true;
global.text_speed = 10;
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

enum MISSION
{
	TUTORIAL,
	ESCORT,
	KILL,
	FETCH
}