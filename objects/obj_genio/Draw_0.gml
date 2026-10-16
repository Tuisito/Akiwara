draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_botao);
squiggle_begin(.8);

draw_sprite_ext(spr_genio_sombra, 0, x+3, y+5, image_xscale, image_yscale, image_angle, image_blend, .3);
draw_self();

squiggle_end();
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);