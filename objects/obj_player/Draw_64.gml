//draw_set_font(fnt_inv);
//draw_set_color(c_black);
//draw_set_halign(fa_left);

// Health
draw_sprite(spr_heart, 0, 15, 5);
draw_sprite(spr_stamina, 0, 15, 35);
draw_healthbar(50, 10, 250, 30, hp, c_white, c_red, c_green, 0, true, true)
draw_healthbar(50, 40, 250, 60, stamina, c_white, c_red, c_blue, 0, true, true)

// Temp values
draw_text(80, 80, "Current Weapon Ammo: " + string(itemAmmo));

