

jumpSequence = true;

if other.action == 24 && activate
{
	other.sprite_index = spr_sonic_jumppanel_stand;
	
	activate = false
    other.image_angle = image_angle;
    other.action = 25
    instance_create_depth(x, y, -100, obj_qte_button_jumppanel)
    audio_play_sound(RingSound,1,false)
}