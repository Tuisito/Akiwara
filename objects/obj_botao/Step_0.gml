pega_input();
if (position_meeting(mouse_x, mouse_y, self))
{
    tween(self, "escala_txt", 1.5, tween_animation.back, 40);
    tween(self, "image_xscale", 1.3, tween_animation.back, 40);
    if (mouse_click)
    {
        tween(self, "image_xscale", 1, tween_animation.bounce_out, 1);
        tween(self, "escala_txt", 1, tween_animation.bounce_out, 1);
        switch (texto) 
        {
        	case "maior":
                with (obj_genio)
                {
                    numb = numb_min;
                    numb = numb+round((numb / 2));
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