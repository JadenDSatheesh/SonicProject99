
if activate
{
    other.angle = 0
    if other.action == 2
    {
        other.vsp = 0;
        other.hsp = 0;
    }   
    other.action = 24
    other.ground = false
    other.image_i = 0;
    //other.x = x + 10*cos(degtorad(image_angle))
    //other.y = y - 10*sin(degtorad(image_angle))
    activate = false
    
//    other.hsp = cos(degtorad(image_angle))*12
//    other.vsp = -sin(degtorad(image_angle))*12

    image_speed = 0.75;
    //if audio_is_playing(snd_spring)
    //    audio_stop_sound(snd_spring)
    //audio_play_sound(snd_spring,1,false)
    
}


