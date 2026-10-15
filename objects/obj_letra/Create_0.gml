randomise();
escala_txt = 0;
r = irandom(255);
g = irandom(255);
b = irandom(255);
mudou = false;
tween(self, "escala_txt", 2, tween_animation.bounce_out, 30);