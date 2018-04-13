if (hpReginTime > 0) hpReginTime = 0;

var alphaConversionConst = 0.00005;	// per 1 hp
image_alpha -= alphaConversionConst * obj_player.damage 
hp -= obj_player.damage;			// Reduce health by damage amount
hpDisplayTime = 60;					// Set amount of time to display health