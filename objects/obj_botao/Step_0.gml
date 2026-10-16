pega_input();
if (position_meeting(mouse_x, mouse_y, self))
{
    
    tween(self, "escala_txt", 1.5, tween_animation.back, 40);
    tween(self, "image_xscale", 1.3, tween_animation.back, 40);
    if (mouse_click)
    {
        toca_som(beep, .1);
        tween(self, "image_xscale", 1, tween_animation.bounce_out, 1);
        tween(self, "escala_txt", 3, tween_animation.bounce_out, 1);
        switch (texto) 
        {
        	case "maior":
                with (obj_genio)
                {
                    numb_min = numb;
                    numb = round((numb_max+numb_min)/2);
                }
            break;
            case "menor":
                with (obj_genio)
                {
                    numb_max = numb;
                    numb = round((numb_max+numb_min)/2);
                }
            break;
            case "certo":
                obj_genio.acertei = true;
            break;
            case "avançar":
                with (obj_dialogo) 
                {
                    index++;
                }
                
                if (obj_genio.acertei)
                {
                    game_restart();
                }
            break;    
        }
    }
}
else
{
    tween(self, "image_xscale", 1, tween_animation.bounce_out, 20);
    tween(self, "escala_txt", 1, tween_animation.bounce_out, 20);
}

image_yscale = image_xscale;