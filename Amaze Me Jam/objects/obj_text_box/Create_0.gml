/// @description INIT values
#macro TEXT_BUFFER 7
// You can write your code in this editor
padding = -160;
x1= display_get_width()/2;
y1 = display_get_height()/2 - padding;
x2 = display_get_width()/2;
y2= display_get_height();

x1_target = 0;
x2_target = display_get_width();

lerp_prog = 0;
text_prog = 0;
timing = 200;
display_text = "I'm a PRETTY PRETTY BOY!"

backer = 0;