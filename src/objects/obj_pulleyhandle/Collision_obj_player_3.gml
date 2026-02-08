/// @description Insert description here
// You can write your code in this editor

if !place_meeting(x,y,obj_pulleyend)
{
    if activate == false
    {
        audio_play_sound(RingSound,1,false)
        audio_play_sound(RingSound,1,false)
    }
    activate = true
    other.action = 27
}