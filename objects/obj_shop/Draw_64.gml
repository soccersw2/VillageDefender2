
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

if(!hidden)
{
	for(var j = 0; j < rows; j++)
	{
		
		
		for(var i = 0; i < columns; i++)
			{
				var locked = false;
				var nextTierAvailable = false;
				
				rowArray = get_empty_definitions();
				itemName = "N/A";
				itemCost = -1;
				itemSprite = spr_empty;
				currentCategory = ShopCategory.length;
				itemType = -1;
				itemHP = -1;
				itemDamage = -1;
				itemSpeed = -1;
				itemStamina = -1;
				itemRange = -1;
				
		
				switch(j)
				{
					case 0:
						rowArray = wallsArray;
						currentCategory = ShopCategory.walls;
						itemName = wallsArray[i, WallProp.name];
						itemCost = wallsArray[i, WallProp.cost];
						itemSprite = wallsArray[i, WallProp.sprite];
						itemHP = wallsArray[i, WallProp.hp];
						
						if (i == tierLevel[0]) nextTierAvailable = true;  
						if (i >= tierLevel[0]) locked = true;
						break;
					case 1:
						rowArray = swordsArray;
						currentCategory = ShopCategory.swords;
						itemName = swordsArray[i, SwordProp.name];
						itemCost = swordsArray[i, SwordProp.cost];
						itemSprite = swordsArray[i, SwordProp.sprite];
						itemDamage = swordsArray[i, SwordProp.damage];
						itemSpeed = swordsArray[i, SwordProp.spd];
						itemStamina = swordsArray[i, SwordProp.staminaCost];
						
						if (i == tierLevel[1]) nextTierAvailable = true;  
						if (i >= tierLevel[1]) locked = true; 
						break;
					case 2:
						currentCategory = ShopCategory.bows;
						rowArray = bowsArray;
						itemName = bowsArray[i, BowProp.name];
						itemCost = bowsArray[i, BowProp.cost];
						itemSprite = bowsArray[i, BowProp.sprite];
						
						itemSpeed = bowsArray[i, BowProp.spd];
						itemStamina = bowsArray[i, BowProp.staminaCost];
						itemRange = bowsArray[i, BowProp.range];
						
						if (i == tierLevel[2]) nextTierAvailable = true;  
						if (i >= tierLevel[2]) locked = true;
						
						break;
						
					case 3:
						currentCategory = ShopCategory.arrows;
						rowArray = arrowsArray;
						itemName = arrowsArray[i, ArrowProp.name];						
						itemCost = arrowsArray[i, ArrowProp.cost];
						itemSprite = arrowsArray[i, ArrowProp.sprite];
						itemDamage = arrowsArray[i, ArrowProp.damage];
						
						if (i == tierLevel[3]) nextTierAvailable = true;  
						if (i >= tierLevel[3]) locked = true;
						
						
						break;
						
					case 4:
						currentCategory = ShopCategory.potions;
						rowArray = potionsArray;
						itemName = potionsArray[i, PotionProp.name];
						itemCost = potionsArray[i, PotionProp.cost];
						itemSprite = potionsArray[i, PotionProp.sprite];
						itemType = potionsArray[i, PotionProp.type];
						break;
				}
				
				
				var lockedAlpha = .5;
				var lockedColor = c_white;
				var fillColor = c_white;
				var curAlpha = 1;
				var curColor = c_white;
				var textColor = c_white;
				var fillBox = false;
				
				if(locked) fillColor = c_gray;
				if(nextTierAvailable) fillColor = c_orange;
				
				if (mouse_over(x+(i*rectWidth), y+(j*rectHeight), rectWidth, rectHeight) && 
								(!locked || nextTierAvailable))
				{
					if (obj_player.coins >= itemCost)
					{	

						textColor = c_lime;
						fillColor = c_lime;
						if(lMousePressed)
						{
							handle_purchase(nextTierAvailable);			
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
					if(!nextTierAvailable) curAlpha = lockedAlpha;
				}

				else 	
				{	
					curColor = c_white;
				}															
				
				
				draw_set_font(fnt_shop);
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
				
				
				
				// Additional item category info
				//enum ShopCategory { walls, swords, bows, arrows, potions, length }
				draw_set_color(textColor);
				draw_set_font(fnt_shop_small);
				if(j=ShopCategory.walls)
				{
					draw_text_colour(textBuffer+rectX+(i*rectWidth), 2*(textBuffer+textSpacing)+rectY+(j*rectHeight), 
					"HP: " + string(itemHP), textColor, textColor, textColor, textColor, curAlpha);
				}
			}	
	}
}


