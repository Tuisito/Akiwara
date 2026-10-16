function toca_som(_audio, _variacao = .1)
{
    var pitch = 1+random_range(-_variacao, _variacao);
    audio_play_sound(_audio, 10, 0, , , pitch);
}