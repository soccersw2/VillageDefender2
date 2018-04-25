x = buffer;
y = buffer;
var bgBuffer = 32;
var textBuffer = 4;
var textSpacing = 24;
var rows = 5;
var columns = 5;

var rectX = x+bgBuffer;
var rectY = y+bgBuffer;
var rectWidth = ((sprite_width - 2*bgBuffer)/columns);
var rectHeight = ((sprite_height - 2*bgBuffer)/rows);

draw_self();
draw_set_font(fnt_shop);
draw_set_halign(fa_left);
draw_set_color(c_white);

/*----------ITEM1----------*/
if(!hidden)
{
	for(var j = 0; j < rows; j++)
	{
		for(var i = 0; i < columns; i++)
			{
				draw_rectangle_color(rectX+(i*rectWidth), rectY+(j*rectHeight), 
										rectX+((i+1)*rectWidth), rectY+((j+1)*rectHeight), 
										c_lime, c_lime, c_lime, c_lime, true);
									
				draw_text(textBuffer+rectX+(i*rectWidth), textBuffer+rectY+(j*rectHeight), "Item: ");
				draw_text(textBuffer+rectX+(i*rectWidth), textBuffer+textSpacing+rectY+(j*rectHeight), "Cost: ");
			}	
	}
}