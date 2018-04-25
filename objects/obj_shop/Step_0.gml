//collision with the shop
get_input();
if(input_b)
{
	if(game.intermissionActive) hidden = !hidden;
}
if(!game.intermissionActive) hidden = true;

if(hidden) image_alpha = 0;
else image_alpha = 1;