timer_hitstop = 0;

lista_back = background_pega();
bgs_hspeed = [];
bgs_vspeed = [];

desfaz_hitstop = function()
{
    if (!global.hitstop) return;
        
    timer_hitstop--;
    
    with(all)
    {
        image_speed = 0;
    }
    
    if (timer_hitstop <= 0)
    {
        global.hitstop = false;
        with(all)
        {
            image_speed = 1;
        }
        destrava_background(bgs_hspeed, bgs_vspeed, lista_back);
    }
}