/// @desc flash_object(color)
/// @param color  Color to flash
var color = argument0



// Flash animation after attacked
if (flash > 0)
{
	if (timeBtwnFlashes <= 0)
	{		
		shader_set(color);
		draw_self();
		shader_reset();
		timeBtwnFlashes = 5;
		flash--;
		
	}
	else timeBtwnFlashes--;
} else hit = false;