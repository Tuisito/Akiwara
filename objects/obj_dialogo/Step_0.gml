y = obj_genio.y-40;
texto[2] = "Seu número é "+string(obj_genio.numb)+"?";
index = clamp(index, 0, 2);

if (index == 2)
{
    
    if (!criei)
    {
        var _x = 0;
        var _index = 0;
        var _texto = ["menor", "certo", "maior"];
        repeat (3)
        {
            var botoes = instance_create_layer(240+_x, 192, "botoes", obj_botao);
            botoes.texto = _texto[_index];
            _index++;
            _x += 90;
        }
        criei = true;
    }
}