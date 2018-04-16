// Flash animation after attacked
if (flash > 0)
{
	if (timeBtwnFlashes <= 0)
	{		
		shader_set(sh_white);
		draw_self();
		shader_reset();
		timeBtwnFlashes = 5;
		flash--;
		
	}
	else timeBtwnFlashes--;
} else hit = false;