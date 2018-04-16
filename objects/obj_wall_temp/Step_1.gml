// Destroy temp wall if walls are not selected
if (obj_player.itemEquipped != Item.walls) instance_destroy();

// POSITION TRACKED TO MOUSE
x = (mouse_x div game.cellSize) * game.cellSize;
y = (mouse_y div game.cellSize) * game.cellSize;


// Set Sprite
image_alpha = .5; // alpha for cell where placement is not allowed 

// PLACE WALL
if (wall_placement_valid())
{
	// Position is valid for wall placement
	image_alpha = 1; // alpha for for cell where placement IS allowed

	if (mouse_check_button(mb_left) && obj_player.stamina >= 10)
	{
		var inst = instance_create_layer(x, y, "Walls", obj_wall);
		
		with (inst) mp_grid_add_instances(global.grid, inst.id, true);
	
		
		obj_player.stamina -= 10;
		obj_player.inventory[Item.walls, ItemProperties.amount]--;		
	}
} 
