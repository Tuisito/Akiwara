if (instance_exists(obj_partzinha))
{
    gpu_set_blendmode(bm_add);
    with(obj_partzinha)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*2, image_yscale*2, image_angle, cor, image_alpha/2);
    }
    gpu_set_blendmode(bm_normal);
}