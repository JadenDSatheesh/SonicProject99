/// @description Insert description here
// You can write your code in this editor


if playSong == false
{
	if room == Lum_SnwTwn
	{
		audio_stop_sound(TempMusicLushVlly)
		audio_stop_sound(TempMusicScrapYd_Sneak)
		audio_play_sound(TempMusicLumSnw, 1, true)
		playSong = true;
	}	
	else if room == Lush_Vlly
	{
		audio_stop_sound(TempMusicLumSnw)
		audio_stop_sound(TempMusicScrapYd_Sneak)
		audio_play_sound(TempMusicLushVlly, 1, true)
		playSong = true;
	}
	else if room == ScrapYd_Sneak
	{
		audio_stop_sound(TempMusicLumSnw)
		audio_stop_sound(TempMusicLushVlly)
		audio_play_sound(TempMusicScrapYd_Sneak, 1, true)
		playSong = true;
	}
	else if room == Menu
	{
		audio_play_sound(SonicUnderground, 1, true)
		playSong = true;
	}
	else if room == Select_Screen
	{
		audio_stop_sound(SonicUnderground)
	}
}
