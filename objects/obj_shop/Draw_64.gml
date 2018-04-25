
//image_xscale=.5;
//image_yscale=.5;

x = buffer;
y = buffer;

//x = window_get_width() + buffer;
//y = window_get_height() + buffer;

draw_self();

var bgBuffer = 32;
var textBuffer = 4;
var textSpacing = 24;
var rows = 5;
var columns = 3;

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
				var locked = false;
				
				rowArray = get_empty_definitions();
				itemName = "N/A";
				itemCost = 0;
				itemSprite = spr_wall;
				currentCategory = ShopCategory.length;
		
				switch(j)
				{
					case 0:
						rowArray = wallsArray;
						currentCategory = ShopCategory.walls;
						itemName = wallsArray[i, WallProp.name];
						itemCost = wallsArray[i, WallProp.cost];
						itemSprite = wallsArray[i, WallProp.sprite];
						//if (i > 2) locked = true;
						break;
					case 1:
						rowArray = swordsArray;
						currentCategory = ShopCategory.swords;
						itemName = swordsArray[i, SwordProp.name];
						itemCost = swordsArray[i, SwordProp.cost];
						itemSprite = swordsArray[i, SwordProp.sprite];
						//if (i > 2) locked = true;
						break;
					case 2:
						currentCategory = ShopCategory.bows;
						rowArray = bowsArray;
						itemName = bowsArray[i, BowProp.name];
						itemCost = bowsArray[i, BowProp.cost];
						itemSprite = bowsArray[i, BowProp.sprite];
						//if (i > 2) locked = true;
						break;
						
					case 3:
						currentCategory = ShopCategory.arrows;
						rowArray = arrowsArray;
						itemName = arrowsArray[i, ArrowProp.name];
						itemCost = arrowsArray[i, ArrowProp.cost];
						itemSprite = arrowsArray[i, ArrowProp.sprite];
						//if (i > 0) locked = true;
						break;
						
					case 4:
						currentCategory = ShopCategory.potions;
						rowArray = potionsArray;
						itemName = potionsArray[i, PotionProp.name];
						itemCost = potionsArray[i, PotionProp.cost];
						itemSprite = potionsArray[i, PotionProp.sprite];
						if (i > 0) locked = true;
						break;
				}
				
				
				var lockedAlpha = .5;
				var lockedColor = c_white;
				var fillColor = c_white;
				var curAlpha = 1;
				var curColor = c_white;
				var textColor = c_white;
				var fillBox = false;
				
				if (mouse_over(x+(i*rectWidth), y+(j*rectHeight), rectWidth, rectHeight) && !locked)
				//if (mouse_over(rectX+(i*rectWidth), rectY+(j*rectHeight), 
				//						rectX+((i+1)*rectWidth), (rectY+((j+1)*rectHeight)) - (rectY+(j*rectHeight))))
				{
					//textColor = c_red;
					if (obj_player.coins >= itemCost)
					{	
						if (ownedArray[currentCategory, i] != 0)
							{
							textColor = c_lime;
							fillColor = c_lime;
							if(lMousePressed)
							{
								handle_purchase(rowArray);			
							}
						}											
					}
					else
					{
						fillColor = c_red;
						textColor = c_red;						
					}
					
				}
				else if(locked) 
				{
					lockedColor = c_ltgray;
					textColor = c_ltgray;
					curAlpha = lockedAlpha;
				}

				else 	
				{	
					curColor = c_white;
				}															
				
				
				
				draw_set_color(textColor);
				draw_sprite_ext(itemSprite, 0, textBuffer+rectX+(i*rectWidth)+rectWidth/2, 
										textBuffer+textSpacing+rectY+(j*rectHeight)+10,
										1, 1, 0, lockedColor, curAlpha);
				draw_text_colour(textBuffer+rectX+(i*rectWidth), textBuffer+rectY+(j*rectHeight), 
					"Item: " + string(itemName), textColor, textColor, textColor, textColor, curAlpha);
				draw_text_colour(textBuffer+rectX+(i*rectWidth), textBuffer+textSpacing+rectY+(j*rectHeight), 
					"Cost: " + string(itemCost), textColor, textColor, textColor, textColor, curAlpha);
				
				if(locked) draw_sprite_ext(spr_locked, 0, textBuffer+rectX+(i*rectWidth)+rectWidth/2, 
										textBuffer+textSpacing+rectY+(j*rectHeight)+10,
										1, 1, 0, c_white, 1);
										
				draw_set_color(fillColor);
				draw_rectangle_color(rectX+(i*rectWidth), rectY+(j*rectHeight), 
					rectX+((i+1)*rectWidth), rectY+((j+1)*rectHeight), 
					fillColor, fillColor, fillColor, fillColor, true);	
			}	
	}
}


