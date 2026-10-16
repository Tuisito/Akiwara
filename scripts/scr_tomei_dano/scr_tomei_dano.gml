function inicia_tomei_dano()
{
    tomei_dano = false;
}
function timer_tomei_dano(_tempo = 5)
{
    tomei_dano = _tempo;
}
function contador_tomei_dano()
{
    if (tomei_dano > 0)
    {
        tomei_dano--;
    }
}
function efeito_branco(_funcao_mola = draw_self)
{
    if (tomei_dano)
    {
        shader_set(sh_branco);
        _funcao_mola();
        shader_reset();
    }
    else
        _funcao_mola();
}