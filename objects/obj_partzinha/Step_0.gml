if (global.hitstop) exit;
    
vida_atual--;

var _val = vida_atual / vida_max;

image_alpha = vida_atual/vida_max;
velh = _val * velh_origin * _val;
velv = _val * velv_origin * _val;
image_xscale = _val*escala_origin;
image_yscale = image_xscale;

var nova_cor = merge_colour(c_white, cor, _val*2);

cor = nova_cor;

if (vida_atual <= 0)
    instance_destroy();

x += velh;
y += velv;
