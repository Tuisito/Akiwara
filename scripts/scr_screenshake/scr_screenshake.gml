function screenshake(_shake = 0)
{
    if (instance_exists(obj_screenshake))
    {
        with (obj_screenshake) 
        {
            if (_shake > shake)
            {
                shake = _shake;
            }
        }
    }
    else return;
}