if (hpReginTime > 0) hpReginTime = 0;

var alphaConversionConst = 0.001;	// per 1 hp
image_alpha -= alphaConversionConst * obj_player.damage 
hp -= obj_player.damage;			// Reduce health by damage amount
displayHpTime = 60;					// Set amount of time to display health

flash = 5;
timeBtwnFlashes = 5;
hit = true;