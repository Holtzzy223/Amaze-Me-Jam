/// @description 
y = ystart + sin(get_timer()/500000)*5;
image_xscale = wave(-1,1,2,0.5);
image_blend = wave(c_blue,c_aqua,10,1);
image_alpha = wave(0.25,0.65,2,0.35);