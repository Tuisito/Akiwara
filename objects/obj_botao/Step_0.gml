pega_input();
if (position_meeting(mouse_x, mouse_y, self))
{
    tween(self, "escala_txt", 1.5, tween_animation.back, 40);
    tween(self, "image_xscale", 1.3, tween_animation.back, 40);
    _angle_inicio = 0 + sine_wave(current_time/1000, 3, qtd)
    if (mouse_click)
    {
        tween(self, "image_xscale", 1, tween_animation.bounce_out, 1);
        tween(self, "escala_txt", 3, tween_animation.bounce_out, 1);
        switch (texto) 
        {
        	case "maior":
                with (obj_genio)
                {
                    numb_min = numb;
                    numb = (round(numb * 1.5));
                }
            break;
            case "menor":
                with (obj_genio)
                {
                    numb_max = numb;
                    numb = round((numb / 2));
                }
            break;
            case "certo":
                game_restart();
            break;
        }
    }
}
else
{
    tween(self, "image_xscale", 1, tween_animation.bounce_out, 20);
    tween(self, "escala_txt", 1, tween_animation.bounce_out, 20);
    _angle_inicio = 0;
}

tween(self, "_angle", _angle_inicio);

image_yscale = image_xscale;