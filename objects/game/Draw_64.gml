//draw_sprite(spr_inv_bg, 0, 50, guiHeight - 100);

// DRAW INVENTORY
// Inventory keys
draw_set_font(fnt_inv_bold);
draw_set_color(c_black);
draw_set_halign(fa_left);

draw_text(35, guiHeight - 160, "Z");
draw_text(35+(1*80), guiHeight - 160, "Q");
draw_text(35+(2*80), guiHeight - 160, "E");
draw_text(35+(3*80), guiHeight - 160, "1");
draw_text(35+(4*80), guiHeight - 160, "2");
draw_text(35+(5*80), guiHeight - 160, "3");

// Inventory slots
draw_sprite(spr_inv_slot, 0, 10, guiHeight - 120);
draw_sprite(spr_inv_slot, 0, 10 + (1*80), guiHeight - 120);
draw_sprite(spr_inv_slot, 0, 10 + (2*80), guiHeight - 120);
draw_sprite(spr_inv_slot, 0, 10 + (3*80), guiHeight - 120);
draw_sprite(spr_inv_slot, 0, 10 + (4*80), guiHeight - 120);
draw_sprite(spr_inv_slot, 0, 10 + (5*80), guiHeight - 120);


switch (obj_player.itemEquipped)
{
	case Item.walls:
		draw_sprite(spr_inv_slot_selected, 0, 10, guiHeight - 120);
		break;
		
	case Item.sword:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (1*80), guiHeight - 120);
		break;
	
	case Item.bow:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (2*80), guiHeight - 120);
		break;
		
	case Item.inv1:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (3*80), guiHeight - 120);
		break;
		
	case Item.inv2:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (4*80), guiHeight - 120);
		break;
		
	case Item.inv3:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (5*80), guiHeight - 120);
		break;
}



// Inventory items
draw_sprite(spr_inv_wall, 0, 15, guiHeight - 114);
draw_sprite(spr_sword_basic, 0, 18 + (1*80), guiHeight - 110);
draw_sprite(spr_bow_basic, 0, 18 + (2*80), guiHeight - 110);
draw_sprite(obj_player.inventory[Item.inv1, ItemProperties.sprite], 0, 18 + (3*80), guiHeight - 110);
draw_sprite(obj_player.inventory[Item.inv2, ItemProperties.sprite], 0, 18 + (4*80), guiHeight - 110);
draw_sprite(obj_player.inventory[Item.inv3, ItemProperties.sprite], 0, 18 + (5*80), guiHeight - 110);

// Walls left
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_font(fnt_inv_ammo);

draw_text(45, guiHeight - 50, "x" + string(obj_player.inventory[Item.walls, ItemProperties.amount]));
draw_text(45 + (2*80), guiHeight - 50, "x" + string(obj_player.inventory[Item.bow, ItemProperties.amount]));
draw_text(45 + (3*80), guiHeight - 50, "x" + string(obj_player.inventory[Item.inv1, ItemProperties.amount]));
draw_text(45 + (4*80), guiHeight - 50, "x" + string(obj_player.inventory[Item.inv2, ItemProperties.amount]));
draw_text(45 + (5*80), guiHeight - 50, "x" + string(obj_player.inventory[Item.inv3, ItemProperties.amount]));


// Enemies Left
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_inv_ammo);
if (intermissionActive)
{
	draw_text(guiWidth/2 - 30, 30, "Next wave starts in: ");
	draw_text(guiWidth/2 + 70, 60, string(intermissionTimeLeft/room_speed));
	draw_text(guiWidth/2 - 58, 90, "Press \"B\" to open shop");
	draw_text(guiWidth/2 - 58, 120, "Press \"Enter\" to start next wave");
}
else
{
	draw_set_halign(fa_center);
	draw_text(guiWidth/2 + 60, 2, "Wave " + string(wave)  + ":");
	draw_text(guiWidth/2 + 60, 30, "Enemies Left:" + string(enemiesLeftAlive));
	
	draw_set_font(fnt_inv_ammo);
	draw_set_halign(fa_left);
	draw_text(guiWidth/2 - 60, 65, "Loot: ");	
	
	draw_sprite(spr_coin, 0, guiWidth/2 + 5, 65);
	draw_text(guiWidth/2 + 40, 65, waveLootCoins);
	draw_sprite(spr_XP, 0, guiWidth/2 + 95, 65);
	draw_text(guiWidth/2 + 130, 65, waveLootXP);
	
}
