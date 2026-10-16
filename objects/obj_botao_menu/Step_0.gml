pega_input();
if (position_meeting(mouse_x, mouse_y, self))
{
    tween(self, "image_xscale", 1.3, tween_animation.back, 40);
    tween(self, "escala_txt", 2, tween_animation.back, 40);
    _angle_inicio = 0 + sine_wave(current_time/1000, 3, qtd);
    if (mouse_click)
    {
        toca_som(beep, .1);
        tween(self, "image_xscale", 1, tween_animation.bounce_out, 1);
        tween(self, "escala_txt", 2, tween_animation.bounce_out, 1);
        room_goto(rm_jogo);
    }
}
else
{
    tween(self, "image_xscale", 1, tween_animation.bounce_out, 30);
    tween(self, "escala_txt", 1, tween_animation.bounce_out, 30);
    _angle_inicio = 0;
}

tween(self, "_angle", _angle_inicio);

image_yscale = image_xscale;