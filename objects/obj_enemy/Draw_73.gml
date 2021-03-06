draw_self();

// Aware cicle
draw_circle_color(x, y, 200, c_white, c_black, true);

// Draw healthbar for x seconds after attacked
if (hit) draw_healthbar(x, y, x+32, y + 8, hp, c_white, c_red, c_green, 0, false, false);

// Flash animation after attacked
if (hit) flash_object(sh_white);

// Flash animation before attacking
if(timeBtwnAttacks < 20 && timeBtwnAttacks > 0)
{
	flash = 5;
	flash_object (sh_white);
}

// Display aware symbol when player is initially detected
if (collision_circle(x, y, detectRadius, obj_player, false, true))
{
	// temp
	if (displaySymbolTimer == -1) displaySymbolTimer = 120;
	if (displaySymbolTimer >= 0) 
	{
		draw_sprite(spr_exc_mark, 0, x, y - 16);
		displaySymbolTimer--;
	}
}
