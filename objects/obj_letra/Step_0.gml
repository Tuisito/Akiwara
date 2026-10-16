pega_input();
y = ystart + sine_wave(current_time/1000, tempo, distancia);

if (position_meeting(mouse_x, mouse_y, self))
{
    tween(self, "escala_txt", 2.5, tween_animation.back, 40);
    _angle_inicio = 0 + sine_wave(current_time/1000, 3, qtd);
    if (!mudou)
    {
        r = irandom(255);
        g = irandom(255);
        b = irandom(255);
        var _cor = make_colour_rgb(r, g, b);
        tween(self, "cor", _cor, tween_animation.bounce, 20);
        mudou = true;
    }
    
    if (mouse_click)
    {
        tween(self, "escala_txt", 1, tween_animation.bounce_out, 1);
    }
}
else
{
    tween(self, "escala_txt", 2, tween_animation.bounce_out, 30);
    mudou = false;
    _angle_inicio = 0;
}

tween(self, "_angle", _angle_inicio);