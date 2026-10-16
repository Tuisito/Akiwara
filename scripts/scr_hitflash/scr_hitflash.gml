function ativa_hitflash()
{
    var _flash = instance_create_depth(0, 0, 0, obj_hitflash);
    var _spr_w = _flash.sprite_width;
    var _spr_h = _flash.sprite_height;
    var _porpo_h = room_height / _spr_h;
    var _porpo_w = room_width / _spr_w;
    
    _flash.image_xscale = _spr_w;
    _flash.image_yscale = _spr_h;
}