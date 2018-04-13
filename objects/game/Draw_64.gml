//draw_sprite(spr_inv_bg, 0, 50, guiHeight - 100);

// DRAW INVENTORY
// Inventory keys
draw_set_font(fnt_inv_bold);
draw_set_color(c_black);
draw_set_halign(fa_left);

draw_text(35, guiHeight - 130, "Z");
draw_text(35+(1*80), guiHeight - 130, "Q");
draw_text(35+(2*80), guiHeight - 130, "E");
draw_text(35+(3*80), guiHeight - 130, "1");
draw_text(35+(4*80), guiHeight - 130, "2");
draw_text(35+(5*80), guiHeight - 130, "3");

// Inventory slots
draw_sprite(spr_inv_slot, 0, 10, guiHeight - 90);
draw_sprite(spr_inv_slot, 0, 10 + (1*80), guiHeight - 90);
draw_sprite(spr_inv_slot, 0, 10 + (2*80), guiHeight - 90);
draw_sprite(spr_inv_slot, 0, 10 + (3*80), guiHeight - 90);
draw_sprite(spr_inv_slot, 0, 10 + (4*80), guiHeight - 90);
draw_sprite(spr_inv_slot, 0, 10 + (5*80), guiHeight - 90);


switch (obj_player.itemEquipped)
{
	case Item.walls:
		draw_sprite(spr_inv_slot_selected, 0, 10, guiHeight - 90);
		break;
		
	case Item.sword:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (1*80), guiHeight - 90);
		break;
	
	case Item.bow:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (2*80), guiHeight - 90);
		break;
		
	case Item.inv1:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (3*80), guiHeight - 90);
		break;
		
	case Item.inv2:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (4*80), guiHeight - 90);
		break;
		
	case Item.inv3:
		draw_sprite(spr_inv_slot_selected, 0, 10 + (5*80), guiHeight - 90);
		break;
}



// Inventory items
draw_sprite(spr_inv_wall, 0, 15, guiHeight - 84);
draw_sprite(spr_sword_basic, 0, 18 + (1*80), guiHeight - 80);

// Walls left
draw_set_color(c_white);
draw_set_font(fnt_inv);
draw_text(25, guiHeight - 70, obj_player.inventory[Item.walls, ItemProperties.amount]);

// Enemies Left
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_inv_bold);
draw_text(guiWidth/2, 30, "Enemies Left: " + string(enemiesLeftAlive));

