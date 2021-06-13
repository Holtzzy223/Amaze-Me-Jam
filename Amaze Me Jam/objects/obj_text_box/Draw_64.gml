/// @description Draw Text Box
draw_sprite_stretched_ext(spr_text_box,0,x1,y1,x2-x1,y2-y1,c_white,1);
//TODO use dra_set_text
draw_set_font(fnt_text_box);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_black);

var _print = string_copy(display_text,1,text_prog);
draw_text((x1+x2)/2,y1+TEXT_BUFFER,_print);
draw_set_color(c_white);
draw_text((x1+x2)/2,y1+(TEXT_BUFFER - 1),_print);

