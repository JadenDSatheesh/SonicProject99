//show_debug_message(totalRing);

if (totalRing >= next_ring_life)
{
    global.Lives += 1;
    next_ring_life += 5;
    // Optional: audio_play_sound(snd_1up, 1, false);
}

colorOutline = c_silver;

font_enable_effects(ft_ringCount, true,
{
	outlineEnable: true,
	outlineDistance: 3,
	outlineColor: colorOutline
	});