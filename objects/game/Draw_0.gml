get_input();

// Temp Outlines 
if (obj_player.itemEquipped == Item.walls)
{	
	//with(obj_wall_temp)
	//{
	//	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, 
	//		c_purple, c_purple, c_purple, c_purple, c_red);
	//}
	with(obj_player)
	{
		draw_rectangle_color(bbox_left - obj_player.buildingRadius, bbox_top - obj_player.buildingRadius, 
					bbox_right + obj_player.buildingRadius, bbox_bottom + obj_player.buildingRadius, 
					c_yellow, c_yellow, c_yellow, c_yellow, c_red);
	}
	
//	var xx = 0; // draw cells x value	
//	var r = room_width div cellSize; // # of vertical lines to be drawn 
//	repeat(r)
//	{
//		draw_line_colour(xx, 0, xx, room_height, c_green, c_green);
//		xx += cellSize;
//	}
	
//	var yy = 0;	
//	var r = room_width div cellSize; // # of horizontal lines to be drawn 
//	repeat(r)
//	{
//		draw_line_colour(0, yy, room_width, yy, c_green, c_green);
//		xx += cellSize;
//	}
	
	draw_set_alpha(1);
}