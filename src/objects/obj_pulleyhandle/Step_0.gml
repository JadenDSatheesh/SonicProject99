if !place_meeting(x,y,obj_player)
    activate = false
    
if activate && obj_player.action == 27
{
    if vspeed >= -8
        vspeed -= 0.25

}
else if !activate && y < y_default
{   
    y += 4
}


