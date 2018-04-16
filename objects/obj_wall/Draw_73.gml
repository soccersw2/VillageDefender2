draw_self();

// Flash when hit
flash_object();

// Display healthbar
if (displayHpTime > 0)
{
	draw_healthbar(x, y, x+32, y + 8, hp, c_white, c_red, c_green, 0, false, false);
	displayHpTime--;
}