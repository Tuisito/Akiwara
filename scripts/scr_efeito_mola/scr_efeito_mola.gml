function inicia_efeito_mola(val = 1)
{
    escalax = val;
    escalay = val;
}
function efeito_mola(_escalax = 1, _escalay = 1)
{
    escalax = _escalax;
    escalay = _escalay;
}
function retorna_mola(_qtd = .3, val = 1)
{
    escalax = lerp(escalax, val, _qtd);
    escalay = lerp(escalay, val, _qtd);
}
function desenha_efeito_mola()
{
    draw_sprite_ext(sprite_index, image_index, x, y, escalax, escalay, image_angle, image_blend, image_alpha);
}