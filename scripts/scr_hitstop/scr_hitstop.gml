global.hitstop = false;

function ativa_hitstop(_tempo = 30)
{
    var _existe = instance_exists(obj_hitstop);
    
    if (!_existe) instance_create_depth(0, 0, 0, obj_hitstop);
        
    global.hitstop = true;
    obj_hitstop.timer_hitstop = _tempo;
    
    trava_backgrounds(obj_hitstop.lista_back);
}

function background_pega()
{
    var _layers = layer_get_all();
    
    var _qtd = array_length(_layers);
    
    var _bgs = [];
    
    for (var i = 0; i < _qtd; i++) 
    {
        var _atual = _layers[i];
        
        var _back = layer_background_get_id(_atual);
        
        if (_back != -1)
        {
            var _nome = layer_get_name(_atual);
            array_push(_bgs, _nome);
        }
    }
    return _bgs;
}

function trava_backgrounds(_lista_back)
{
    var _qtd = array_length(_lista_back);
    
    for (var i = 0; i < _qtd; i++) 
    {
    	var _atual = _lista_back[i];
        
        var _hspeed = layer_get_hspeed(_atual);
        var _vspeed = layer_get_vspeed(_atual);
        
        array_push(obj_hitstop.bgs_hspeed, _hspeed);
        array_push(obj_hitstop.bgs_vspeed, _vspeed);
        
        layer_hspeed(_atual, 0);
        layer_vspeed(_atual, 0);
    }
}

function destrava_background(_hspeed, _vspeed, _lista_back)
{
    var _qtd = array_length(_lista_back);
    
    for (var i = 0; i < _qtd; i++) 
    {
        var _atual = _lista_back[i];
        
        layer_hspeed(_atual, _hspeed[i]);
        layer_vspeed(_atual, _vspeed[i]);	
    }
}