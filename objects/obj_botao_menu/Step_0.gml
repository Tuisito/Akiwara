pega_input();
if (position_meeting(mouse_x, mouse_y, self))
{
    tween(self, "image_xscale", 1.3, tween_animation.back, 40);
    tween(self, "escala_txt", 2, tween_animation.back, 40);
    if (mouse_click)
    {
        room_goto(rm_jogo);
        tween(self, "image_xscale", 1, tween_animation.bounce_out, 2);
        tween(self, "escala_txt", 1, tween_animation.bounce_out, 2);
    }
}
else
{
    tween(self, "image_xscale", 1, tween_animation.bounce_out, 30);
    tween(self, "escala_txt", 1, tween_animation.bounce_out, 30);
}

image_yscale = image_xscale;