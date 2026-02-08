
obj_player.LockControls = true;

other.stageClear = true
obj_player.canFollow = false

obj_player.hsp = 8;

if !activate
{
    stageTimer.count = false
    audio_play_sound(RingSound,1,false)
    alarm[0] = 180
}
activate = 1