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
				
				var rowArray = get_empty_definitions();;
				var itemName = "N/A";
				var itemCost = 0;
		
				switch(j)
				{
					case 0:
						rowArray = wallsArray;
						itemName = wallsArray[i, WallProp.name];
						itemCost = wallsArray[i, WallProp.cost];
						break;
					case 1:
						rowArray = swordsArray;
						itemName = swordsArray[i, SwordProp.name];
						itemCost = swordsArray[i, SwordProp.cost];
						break;
					//case 0:
					//	rowArray = wallsArray;
					//	break;
					//case 0:
					//	rowArray = wallsArray;
					//	break;
					//case 0:
					//	rowArray = wallsArray;
					//	break;		
				}
								
				draw_rectangle_color(rectX+(i*rectWidth), rectY+(j*rectHeight), 
										rectX+((i+1)*rectWidth), rectY+((j+1)*rectHeight), 
										c_lime, c_lime, c_lime, c_lime, true);				
				
				draw_text(textBuffer+rectX+(i*rectWidth), textBuffer+rectY+(j*rectHeight), 
					"Item: " + string(itemName));
				draw_text(textBuffer+rectX+(i*rectWidth), textBuffer+textSpacing+rectY+(j*rectHeight), 
					"Cost: " + string(itemCost));
			}	
	}
}