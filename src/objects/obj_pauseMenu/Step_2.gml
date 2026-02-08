
if (pause)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("w"))
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("s"))
	
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >=  array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1;
	
	keyActivate = keyboard_check_pressed(vk_space);

	
	if (keyActivate)
	{
		switch (pauseOptionSelected)
		{
			case 0:
			{
				pause = false;
				instance_activate_all();
				audio_resume_all();
			} break;
			case 1:
			{
				PlatformTransition(TRANS_TYPE.SLIDE, Menu)
				
				alarm[0] = 65;
			} break;
		}
	}
}