

flash_object(sh_white);

/// @desc Player action displays
// Bow & Arrow Attack Range Display
var spriteFrame;
//var spriteDirection = (face*45)+90;
//var spriteDirection = (face*45)+90;
var spriteDirection = point_direction(x, y, mouse_x, mouse_y);

//var xPosBox = x + lengthdir_x(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y));
//var yPosBox = y + lengthdir_y(game.cellSize/2, point_direction(x,y,mouse_x,mouse_y));

if (lMouseReleased && itemEquipped == Item.bow)
{ 
	instArrow = instance_create_layer(
						x, y,
						"Projectiles", obj_arrow);	
	with(instArrow)
	{
		direction = point_direction(other.x, other.y, mouse_x, mouse_y);
		speed = 8;
		range = other.lMouseAttackTimePrev;
		//range = 36;
		image_angle = direction - 90;
	}
}

if (itemEquipped == Item.bow && itemAmmo > 0)
{
	
	if(lMouseAttackActive)
	{
		
		if (lMouseAttackTimeActive >= 0 && lMouseAttackTimeActive < 60)			
		{
			spriteFrame = 0;
		}
		else if (lMouseAttackTimeActive >= 60 && lMouseAttackTimeActive < 90)
		{
			spriteFrame = 0;
		}
		else if (lMouseAttackTimeActive >= 90)	
		{
			spriteFrame = 0;
		}
		else 
		{
			spriteFrame = 0;
		}
		
		
		var spriteStretchSpeed;
		var spriteOffset;
		var spriteScale;
		
		var lMouseAttackTimeActiveRev;
		var spriteStretchSpeed;
		var spriteStretchSpeedRev;
		
		var inst = noone;
		
		if (lMouseAttackTimeActive <= 40)
		{
			spriteStretchSpeed = (lMouseAttackTimeActive / (20 - (lMouseAttackTimeActive*.05)));
			lMouseAttackTimeActiveRev = lMouseAttackTimeActive;
			//var spriteStretchSpeedRev = (lMouseAttackTimeActiveRev / (20 - (lMouseAttackTimeActiveRev*.009)))
		
			spriteOffset = (spriteStretchSpeed);
			//var spriteOffsetRev = (spriteStretchSpeedRev/5);
				
			spriteScale = 1 + (spriteOffset);
			
			rangeSprite = draw_sprite_ext(spr_bow_range, spriteFrame, 
						x + lengthdir_x((spriteOffset * 100), spriteDirection), 
						y + lengthdir_y((spriteOffset * 100), spriteDirection),
						spriteScale, 
						spriteScale, 
						spriteDirection, c_white, 1.0);
			
			
			projectileRange = x - lengthdir_x((spriteOffset * 100), spriteDirection);
			//inst = collision_circle(
			//				x + lengthdir_x((spriteOffset * 100), spriteDirection), 
			//				y + lengthdir_y((spriteOffset * 100), spriteDirection),
			//				spriteScale, obj_enemy, true, true);
		}
		else
		{
			
			lMouseAttackTimeActiveRev = lMouseAttackTimeActive;
			spriteStretchSpeedRev = (lMouseAttackTimeActiveRev / (20 - (lMouseAttackTimeActiveRev*.05)))
			//spriteStretchSpeedMid = (40 / (20 - (40 *.05)));
			spriteStretchSpeed = (lMouseAttackTimeActive / (20 - (lMouseAttackTimeActive*.05)));
		
			spriteOffset = (spriteStretchSpeedRev);
			
			spriteScale = 1 + (spriteOffset);
			
			rangeSprite = draw_sprite_ext(spr_bow_range, spriteFrame, 
						x + lengthdir_x((spriteStretchSpeed * 100), spriteDirection), 
						y + lengthdir_y((spriteStretchSpeed * 100), spriteDirection),
						spriteScale, 
						spriteScale, 
						spriteDirection, c_white, 1.0);
						
			projectileRange = x - lengthdir_x((spriteStretchSpeed * 100), spriteDirection);
						
			//instArrow = instance_create_layer(
			//				x + lengthdir_x((spriteStretchSpeed * 100), spriteDirection), 
			//				y + lengthdir_y((spriteStretchSpeed * 100), spriteDirection), "Projectiles", obj_arrow);
							
						
			//inst = collision_circle(x + lengthdir_x((spriteStretchSpeed * 100), spriteDirection), 
			//				y + lengthdir_y((spriteStretchSpeed * 100), spriteDirection),
			//				spriteScale, obj_enemy, true, true);
		}
		
		
		//if (inst != noone)
		//{
		//	do_damage(inst);
	
		//	stamina -= 10/60;
		//}
		
		
		
		
	}
	
	
}



