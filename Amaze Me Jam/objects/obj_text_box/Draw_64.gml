/// @description Draw Text Box
draw_sprite_stretched_ext(spr_text_box,0,x1,y1,x2-x1,y2-y1,c_white,1);
//TODO use dra_set_text
draw_set_text(c_black,fnt_text_box,fa_center,fa_top);
var _print = string_copy(display_text,1,text_prog);

if(responses[0]!=-1 && text_prog>=string_length(display_text))
{
	for(var i = 0; i < array_length(responses); i++)
	{
	
		_print += "\n"
		if(i == response_selected)
		{
			_print += "... ";
		}

		_print += responses[i];

		if(i == response_selected)
		{
			_print += " ...";
		}
	}
}

draw_text((x1+x2)/2,y1+text_pad,_print);
draw_set_color(c_white);
draw_text((x1+x2)/2,y1+(text_pad - 1),_print);

