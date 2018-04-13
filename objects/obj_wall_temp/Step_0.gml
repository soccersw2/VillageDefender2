//// POSITION TRACKED TO PLAYER POSITION AND FACE
//x = obj_player.x;
//y = obj_player.y; 

//switch(obj_player.face)
//{
//	case LEFT:
//		x -= game.cellSize;
//		break;
//	case RIGHT:
//		x += game.cellSize + game.cellSize;
//		break;
//	case UP:
//		y -= game.cellSize;
//		break;
//	case DOWN:
//		y += game.cellSize + game.cellSize;
//		break;
//}

//x = (x div game.cellSize) * game.cellSize;
//y = (y div game.cellSize) * game.cellSize;

// POSITION TRACKED TO MOUSE
x = (mouse_x div game.cellSize) * game.cellSize;
y = (mouse_y div game.cellSize) * game.cellSize;

// Set Sprite
image_alpha = .5; // alpha for cell where placement is not allowed 

// PLACE WALL
// Check for collisions
if (obj_player.wallsLeft > 0 && !place_meeting(x, y, obj_collision) && !place_meeting(x, y, obj_player) 
		&& !place_meeting(x, y, obj_wall) && !place_meeting(x, y, obj_enemy))
{
	if ((obj_player.x - obj_player.buildingRadius - buffer) <= x && (obj_player.x + obj_player.buildingRadius + buffer) >= x &&
		(obj_player.y - obj_player.buildingRadius - buffer) <= y && (obj_player.y + obj_player.buildingRadius) >= y)
	{
		// Position is valid for wall placement
		image_alpha = 1; // alpha for for cell where placement IS allowed

		if (mouse_check_button(mb_left) && obj_player.stamina >= 10)
		{
			instance_create_layer(x, y, "Walls", obj_wall);
			obj_player.stamina -= 10;
			obj_player.wallsLeft--;
			update_grid();
		}
	}
} 



if (obj_player.itemEquipped != item.walls) instance_destroy();