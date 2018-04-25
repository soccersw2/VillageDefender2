draw_set_font(fnt_inv_ammo);
draw_set_color(c_white);
draw_set_halign(fa_left);

// Health
draw_sprite(spr_heart, 0, 15, 5);
draw_sprite(spr_stamina, 0, 15, 35);
draw_sprite(spr_coin, 0, 15, 68);
draw_sprite(spr_XP, 0, 16, 103);

draw_healthbar(50, 10, 250, 30, hp, c_white, c_red, c_green, 0, true, true);
draw_healthbar(50, 40, 250, 60, stamina, c_white, c_red, c_blue, 0, true, true);
draw_text(50, 67, string(coins));
draw_text(50, 100, string(xp));

// Temp values
draw_text(80, 80, "Current Weapon Ammo: " + string(itemAmmo));

draw_text(100, 150, "lMouseAttackTimeActive: " + string(lMouseAttackTimeActive));
draw_text(100, 180, "cooldown: " + string(currentCooldown));
draw_text(100, 210, "lMouseAttackActive: " + string(lMouseAttackActive));


