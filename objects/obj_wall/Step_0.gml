get_input();

if (hpReginTime > 0)
{
	hp += .5;
	image_alpha += .03;
}

if (place_meeting(x, y, obj_wall_temp) && mouse_check_button(mb_right)) instance_destroy();
if (hp <= 0) instance_destroy();