squiggle_begin(.8);
draw_sprite_ext(spr_botao_pequeno_sombra, 0, x+3, y+5, image_xscale, image_yscale, image_angle, image_blend, .3);
draw_sprite_ext(spr_botao_pequeno, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_botao_pequeno);
squiggle_end();

squiggle_draw_text_transformed(x, y, texto, escala_txt, escala_txt, image_angle);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);