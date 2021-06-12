/// @description 
player_hp += (keyboard_check(vk_right) - keyboard_check(vk_left));
player_hp_draw = lerp(player_hp_draw, player_hp, 0.1);