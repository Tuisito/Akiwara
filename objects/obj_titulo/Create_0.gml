letras = ["A", "K", "I", "W", "A", "R", "A"];
cor_letra = [];
subtexto = "O gênio da matemática";
cor_sombra = make_colour_hsv(0, 0, 0);
desenha_titulo = function()
{
    draw_set_halign(1);
    draw_set_valign(1);
    draw_set_font(fnt_titulo);
    var _qtd = array_length(letras);
    var _add = 107;
    for (var i = 0; i < _qtd; i++) 
    {
        var _x = room_width/2;
        squiggle_draw_text_colour(_x-_add+2, y+3, letras[i], cor_sombra, cor_sombra, cor_sombra, cor_sombra, .5);
        squiggle_draw_text(_x-_add, y, letras[i]);
        _add -= 36;
    }
    draw_set_font(fnt_subtitulo);
    var _add2 = 40;
    squiggle_draw_text_colour(room_width/2+2, y+_add2+3, subtexto, cor_sombra, cor_sombra, cor_sombra, cor_sombra, .5);
    squiggle_draw_text(room_width/2, y+_add2, subtexto)
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_font(-1);
    
}