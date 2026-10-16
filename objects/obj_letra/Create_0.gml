randomise();
escala_txt = 0;
r = irandom(255);
g = irandom(255);
b = irandom(255);
mouse_click = noone;
mudou = false;
qtd = 15;
_angle = 0;
_angle_inicio = _angle;
tween(self, "escala_txt", 2.5, tween_animation.bounce_out, 30);

pega_input = function()
{
    mouse_click = mouse_check_button_pressed(mb_left);
}