draw_self();

// Draw healthbar for x seconds after attacked
if (hpDisplayTime > 0)
{
	draw_healthbar(x, y, x+32, y + 8, hp, c_white, c_red, c_green, 0, false, false);
	hpDisplayTime--;
}

// Flash animation after attacked
if (flash > 0)
{
	if (timer <= 0)
	{		
		shader_set(sh_white);
		draw_self();
		shader_reset();
		timer = 5;
		flash--;
		if (flash == 0) hit = false;
	}
	else timer--;
} 

// Aware of player, temp
if (collision_circle(x, y, 200, obj_player, false, true))
{
	// temp
	if (symbolTimer == -1) symbolTimer = 120;
	if (symbolTimer > 0) 
	{
		draw_sprite(spr_exc_mark, 0, x, y - 16);
		symbolTimer--;
	}
}
