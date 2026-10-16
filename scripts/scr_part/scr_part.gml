function cria_part(vida_min = 30, vida_max = 60, _x = 0, _y = 0, _velh = 0, _velv = 0, _cor = c_white)
{
    var existe = instance_exists(obj_part_manager);
    
    if (!existe) instance_create_depth(0, 0, 0, obj_part_manager);
        
    with(obj_part_manager)
    {
        var _qtd = irandom_range(10, 50);
        var _vel = abs(_velh) + abs(_velv);
        var _dir = point_direction(0, 0, _velh, _velv);
        
        repeat (_qtd) 
        {
            var _part = instance_create_layer(_x+random_range(-15, 15), _y+random_range(5, 10), "part", obj_partzinha);
            with(_part)
            {
                var _tam = random_range(.2, .5);
                var _random = 20
                var _dir_part = _dir + random_range(-_random, _random);
                var _vida = irandom_range(vida_min, vida_max);
                
                _part.velh_origin = lengthdir_x(_vel, _dir_part);
                _part.velv_origin = lengthdir_y(_vel, _dir_part);
                _part.escala_origin = _tam;
                _part.image_xscale = _tam;
                _part.image_yscale = _tam;
                _part.image_angle = _dir_part;
                _part.vida_max = _vida;
                _part.vida_atual = _vida;
                _part.cor = _cor;
                _part.sprite_index = choose(spr_part, spr_triang, spr_ball, spr_quad);
            }
        }
    }
}