draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_botao);
squiggle_begin(.8);

draw_sprite_ext(spr_genio_sombra, 0, x+3, y+5, image_xscale, image_yscale, image_angle, image_blend, .3);
draw_self();

squiggle_end();
squiggle_draw_text(x+60, y, numb);
squiggle_draw_text(x+60, y+20, numb_min);
squiggle_draw_text(x+60, y-20, numb_max);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);