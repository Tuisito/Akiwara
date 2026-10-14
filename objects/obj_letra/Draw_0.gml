draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_titulo);

squiggle_draw_text_transformed_colour(x+3, y+5, letra, escala_txt, escala_txt, image_angle, c_black, c_black, c_black, c_black, .3);
squiggle_draw_text_transformed_colour(x, y, letra, escala_txt, escala_txt, image_angle, cor, cor, cor, cor, 1);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);