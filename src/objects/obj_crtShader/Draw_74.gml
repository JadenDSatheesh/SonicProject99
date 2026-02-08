
if visible_Crt == true
{

	if (!surface_exists(crt_surface)) {
	    crt_surface = surface_create(display_get_width(), display_get_height());
	}

	if (surface_exists(application_surface)) {
	    draw_set_alpha(1);
	    shader_set(shCrt);
	    draw_surface(application_surface, 0, 0);
	    shader_reset();
	}


	surface_set_target(crt_surface);
	draw_clear_alpha(c_black, 0);
	draw_self(); 
	surface_reset_target();
}