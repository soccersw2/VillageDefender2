/// @desc Player action displays
// Bow & Arrow Attack Range Display
var spriteFrame;
var spriteDirection = (face*45)+90;
var spriteStretchSpeed;
//var xPosBox = x + lengthdir_x(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y));
//var yPosBox = y + lengthdir_y(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y));

if (itemEquipped == Item.bow && itemAmmo > 0)
{
	
	if(lMouseAttackActive)
	{
		
		if (lMouseAttackTimeActive >= 0 && lMouseAttackTimeActive < 60)			
		{
			spriteFrame = 1;
		}
		else if (lMouseAttackTimeActive >= 60 && lMouseAttackTimeActive < 90)
		{
			spriteFrame = 2;
		}
		else if (lMouseAttackTimeActive >= 90)	
		{
			spriteFrame = 3;
		}
		else 
		{
			spriteFrame = 0;
		}
		
		spriteStretchSpeed = (lMouseAttackTimeActive / (20 - (lMouseAttackTimeActive*.1)))
		

		//rangeSprite = draw_sprite_ext(spr_bow_range, spriteFrame, x, y,
		//				1, spriteStretchSpeed, spriteDirection, c_white, 1.0);		
		rangeSprite = draw_sprite_ext(spr_bow_range, spriteFrame, x,
						y + sign(spriteStretchSpeed*.3),
						1 + (spriteStretchSpeed * .02), spriteStretchSpeed, spriteDirection, c_white, 1.0);	
		//rangeSprite = draw_sprite_ext(spr_bow_range, spriteFrame, 1 + (spriteStretchSpeed * .02),
		//				spriteStretchSpeed, x, y + sign(spriteStretchSpeed*.3), spriteDirection, c_white, 1.0);	
	}
	else draw_text(100, 100, "Attack not Active");
}