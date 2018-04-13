moveCam = keyboard_check(ord("C"));

if(moveCam)
{
	var input_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var input_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var input_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var input_down = keyboard_check(vk_down) || keyboard_check(ord("S")); 
	x += (input_right - input_left) * 6;
	y += (input_down - input_up) * 6;
}
else 
{
	x = clamp(x, following.x-h_border, following.x+h_border);
	y = clamp(y, following.y-v_border, following.y+v_border);
}