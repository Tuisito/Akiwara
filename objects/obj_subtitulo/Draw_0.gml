var _x = room_width/2;
var _y = room_height/2;

draw_set_valign(1);
draw_set_halign(1);
draw_set_font(fnt_subtitulo);

squiggle_draw_text_colour(_x+3, _y-15+5, subtitulo, c_black, c_black, c_black, c_black, .3);
squiggle_draw_text(_x, _y-15, subtitulo);

draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);