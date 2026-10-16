squiggle_begin(.8);
draw_sprite_ext(spr_dialogo_sombra, 0, x+3, y+5, image_xscale, image_yscale, image_angle, image_blend, .3);
draw_self();
squiggle_end();

draw_set_font(fnt_botao_pequeno);

if (!obj_genio.acertei)
    squiggle_draw_text(x+20, y-5, texto[index]);
else
    squiggle_draw_text(x+20, y-5, texto_acrt);

draw_set_font(-1);