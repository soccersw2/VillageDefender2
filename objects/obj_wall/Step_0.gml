get_input(); // Get keyboard input

// Health regineration after spawn
if (hpReginTime > 0)
{
	hp += .5;
	image_alpha += .03;
}

// If right clicked when walls are active, destroy wall
if (place_meeting(x, y, obj_wall_temp) && mouse_check_button(mb_right)) instance_destroy();
// If health is 0 (or below), destroy wall
if (hp <= 0) instance_destroy();