// Get Face
face = round(direction/45);
if (face == 8) {
	face = 0;
}

// Sprites
// Get Direction
switch(face) {
	case 0: // RIGHT
		sprite_index = spr_wEnemy_right;
		currentAttack = spr_aEnemy_right;
		break;
		
	case 1: // UPRIGHT
		sprite_index = spr_wEnemy_up;
		currentAttack = spr_aEnemy_up;
		break;
		
	case 2: // UP
		sprite_index = spr_wEnemy_up;
		currentAttack = spr_aEnemy_up;
		break;
		
	case 3: // UPLEFT
		sprite_index = spr_wEnemy_up;
		currentAttack = spr_aEnemy_up;
		break;
		
	case 4: // LEFT
		sprite_index = spr_wEnemy_left;
		currentAttack = spr_aEnemy_left;
		break;
	
	case 5: // DOWNLEFT
		sprite_index = spr_wEnemy_down;
		currentAttack = spr_aEnemy_down;
		break;
		
	case 6: // DOWN
		sprite_index = spr_wEnemy_down;
		currentAttack = spr_aEnemy_down;
		break;
		
	case 7: // DOWNRIGHT
		sprite_index = spr_wEnemy_down;
		currentAttack = spr_aEnemy_down;
		break;
}

//if (not moving) image_index = 0;