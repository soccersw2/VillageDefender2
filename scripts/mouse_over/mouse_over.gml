/// @desc check if mouse over item box
/// @param x1
/// @param x2
/// @param width
/// @param height

var startX		= argument0;
var startY		= argument1;
var width		= argument2;
var height		= argument3;

if(device_mouse_x_to_gui(0) >= startX && device_mouse_x_to_gui(0) < startX + width)
{
	if(device_mouse_y_to_gui(0) >= startY && device_mouse_y_to_gui(0) < startY + height)
	{
		return true;
	} else return false;
} return false;

