y = ystart + sine_wave(current_time/1000, tempo, distancia);

if (position_meeting(mouse_x, mouse_y, self))
{
    tween(self, "escala_txt", 2.5, tween_animation.back, 40);
    if (!mudou)
    {
        r = irandom(255);
        g = irandom(255);
        b = irandom(255);
        var _cor = make_colour_rgb(r, g, b);
        tween(self, "cor", _cor, tween_animation.bounce, 20);
        mudou = true;
    }
}
else
{
    tween(self, "escala_txt", 2, tween_animation.bounce_out, 30);
    mudou = false;
}