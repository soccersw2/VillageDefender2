draw_self();

// Draw healthbar for x seconds after attacked
if (hit) draw_healthbar(x, y, x+32, y + 8, hp, c_white, c_red, c_green, 0, false, false);

// Flash animation after attacked
flash_object();