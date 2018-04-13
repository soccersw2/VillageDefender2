/// enemy_move_state
// Get Direction
dir = direction;

// Get Speed
//spd = 1;

// Get Length
//len = spd;	

// Get Face
face = round(dir/45);
if (face == 8) {
	face = 0;
}

//// Get the speed variables
//hspd = lengthdir_x(len, dir);
//vspd = lengthdir_y(len, dir);

//// Horizontal Collisions
//if (place_meeting(x+hspd, y, obj_collision) 
//			|| place_meeting(x+hspd, y, obj_player) || place_meeting(x+hspd, y, obj_wall)) {
				
//	while(!place_meeting(x+sign(hspd), y, obj_collision) 
//			&& !place_meeting(x+sign(hspd), y, obj_player) && !place_meeting(x+sign(hspd), y, obj_wall)) {
				
//		x += sign(hspd);
		
//	}	
//	hspd = 0;
//}

//if (flash <= 0) x += hspd;

//// Vertical Collisions
//if (place_meeting(x, y+vspd, obj_collision) || place_meeting(x, y+vspd, obj_player) 
//			|| place_meeting(x, y+vspd, obj_wall)) {
				
//	while(!place_meeting(x, y+sign(vspd), obj_collision) && !place_meeting(x, y+sign(vspd), obj_player) 
//			&& !place_meeting(x, y+sign(vspd), obj_wall)) {
				
//		y += sign(vspd);
		
//	}
//	vspd = 0;
//}

//if (flash <= 0) y += vspd;

// Sprites
// Get Direction
image_speed = 1;
switch(face) {
	case 0: // RIGHT
		//sprite_index = spr_wEnemy_right;
		//currentAttack = spr_sAttack_right;
		break;
		
	case 1: // UPRIGHT
		//sprite_index = spr_wEnemy_right;
		//currentAttack = spr_sAttack_up;
		break;
		
	case 2: // UP
		sprite_index = spr_wEnemy_up;
		//currentAttack = spr_sAttack_up;
		break;
		
	case 3: // UPLEFT
		//sprite_index = spr_wEnemy_left;
		//currentAttack = spr_sAttack_upleft;
		break;
		
	case 4: // LEFT
		//sprite_index = spr_wEnemy_left;
		//currentAttack = spr_sAttack_left;
		break;
	
	case 5: // DOWNLEFT
		//sprite_index = spr_wEnemy_left;
		//currentAttack = spr_sAttack_down;
		break;
		
	case 6: // DOWN
		sprite_index = spr_wEnemy_down;
		//currentAttack = spr_sAttack_down;
		break;
		
	case 7: // DOWNRIGHT
		//sprite_index = spr_wEnemy_right;
		//currentAttack = spr_sAttack_downright;
		break;
}

//if (len == 0) image_index = 0;
