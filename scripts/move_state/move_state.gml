

/// move_state
// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get Speed
if (input_run && stamina > 1)
{
	spd = 2.5;
	stamina -= 20/60;
}
else spd = 1.5;

// Get Length
if (xaxis == 0) && (yaxis == 0) {
	len = 0;
} else {
	len = spd;	
}

// Get Face
get_face();

// Get the speed variables
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Horizontal Collisions
if (place_meeting(x+hspd, y, obj_collision) 
			|| place_meeting(x+hspd, y, obj_enemy) || place_meeting(x+hspd, y, obj_wall)) {
				
	while(!place_meeting(x+sign(hspd), y, obj_collision) 
			&& !place_meeting(x+sign(hspd), y, obj_enemy) && !place_meeting(x+sign(hspd), y, obj_wall)) {
				
		x += sign(hspd);
		
	}	
	hspd = 0;
}

x += hspd;

// Vertical Collisions
if (place_meeting(x, y+vspd, obj_collision) || place_meeting(x, y+vspd, obj_enemy) 
			|| place_meeting(x, y+vspd, obj_wall)) {
				
	while(!place_meeting(x, y+sign(vspd), obj_collision) && !place_meeting(x, y+sign(vspd), obj_enemy) 
			&& !place_meeting(x, y+sign(vspd), obj_wall)) {
				
		y += sign(vspd);
		
	}
	vspd = 0;
}

y += vspd;

// Sprites
// Get Direction
switch(face) {
	case 0: // RIGHT
		sprite_index = RIGHT;
		currentAttack = spr_sAttack_right;
		break;
		
	case 1: // UPRIGHT
		sprite_index = UPRIGHT;
		currentAttack = spr_sAttack_up;
		break;
		
	case 2: // UP
		sprite_index = UP;
		currentAttack = spr_sAttack_up;
		break;
		
	case 3: // UPLEFT
		sprite_index = UPLEFT;
		currentAttack = spr_sAttack_upleft;
		break;
		
	case 4: // LEFT
		sprite_index = LEFT;
		currentAttack = spr_sAttack_left;
		break;
	
	case 5: // DOWNLEFT
		sprite_index = DOWNLEFT;
		currentAttack = spr_sAttack_down;
		break;
		
	case 6: // DOWN
		sprite_index = DOWN;
		currentAttack = spr_sAttack_down;
		break;
		
	case 7: // DOWNRIGHT
		sprite_index = DOWNRIGHT;
		currentAttack = spr_sAttack_downright;
		break;
}

if (len == 0 && !lMouseClicked) image_index = 0;
if (obj_player.itemEquipped == item.sword && stamina > 1 && lMouseClicked) sprite_index = currentAttack;