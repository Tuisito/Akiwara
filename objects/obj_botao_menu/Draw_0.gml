squiggle_begin(.8);
draw_sprite_ext(spr_botao_grande_sombra, 0, x+3, y+5, image_xscale, image_yscale, _angle, image_blend, .3);
draw_sprite_ext(spr_botao_grande, 0, x, y, image_xscale, image_yscale, _angle, image_blend, image_alpha);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_botao);
squiggle_end();

squiggle_draw_text_transformed(x, y, texto, escala_txt, escala_txt, _angle);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
