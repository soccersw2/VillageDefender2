////////////////////////////////////////
// Left Mouse Button Pressed - Attack //
////////////////////////////////////////
if(stamina > 1 && cooldown <= 0)
{
	if(lMousePressed)					// attack initiated (1st click)
	{
		lMouseAttackTimePrev = lMouseAttackTimeActive;
		lMouseAttackActive = true;
		lMouseAttackTimeActive = 1;
	}
	else if (lMouseReleased)			// attack finished
	{
		lMouseAttackTimePrev = lMouseAttackTimeActive;
		lMouseAttackActive = false;
		lMouseAttackTimeActive = 0;	// reset timer
	}
	else if (lMouseClicked && lMouseAttackActive)  
	{									// still attacking
		lMouseAttackTimePrev = lMouseAttackTimeActive;
		lMouseAttackTimeActive++;	// increment timer
		
		
		if (lMouseAttackTimeActive > 200) 
		{
			lMouseAttackTimePrev = lMouseAttackTimeActive;
			
			currentCooldown = cooldown;
			lMouseAttackActive = false;
			lMouseAttackTimeActive = 0;
		}
	}	
}
else // redundant check to make sure values are reset
{
	lMouseAttackActive = false;	
	lMouseAttackTimeActive = 0; 
	cooldown--;
}

/////////////////////////////////////////
// Right Mouse Button Pressed - Defend //
////////////////////////////////////////
if (!lMouseAttackActive && stamina > 1)
{
	if(rMousePressed)					// defense initiated (1st click)
	{
		rMouseDefenseActive = true;
		rMouseDefenseTimeActive = 1;
	}
	else if (rMouseReleased)			// defense finished
	{
		rMouseDefenseActive = false;
		
		rMouseDefenseTimePrev = rMouseDefenseTimeActive;
		
		rMouseDefenseTimeActive = 0;	// reset timer
	}
	else if (rMouseClicked && rMouseDefenseActive)  
	{									// still defending
		rMouseDefenseTimeActive++;	// increment timer
	}	
}
else // redundant check to make sure values are reset
{
	rMouseDefenseActive = false;	
	rMouseDefenseTimeActive = 0; 
}