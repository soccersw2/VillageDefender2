// end wave
if (!intermissionActive && enemiesLeftAlive <= 0)
{
	obj_player.xp += lootXP;
	obj_player.coins += lootCoins;
	intermissionActive = true;
	intermissionTimeLeft = INTERMISSION_TIME * room_speed;
}

// start wave
if (intermissionActive && intermissionTimeLeft < 0)
{
	wave++;
	intermissionActive = false;
	
	lootCoins = lootCoins*wave;
	lootXP = lootXP*wave;
	
	var coinLootMin = (max(1, lootCoins - 30*wave));
	var coinLootMax = lootCoins + 30*wave;
	var xpLootMin = (max(1, lootXP - wave^3));
	var xpLootMax = lootXP + wave^3;
	var minEnemies = (max(1, lastWaveEnemies - 5*wave));
	var maxEnemies = lastWaveEnemies + 5*wave;
	
	waveLootCoins = irandom_range(coinLootMin, coinLootMax);
	waveLootXP = irandom_range(xpLootMin, xpLootMax);	
	
	lastWaveEnemies += irandom_range(minEnemies, maxEnemies);
	enemiesLeftAlive = lastWaveEnemies;
	enemiesLeftToSpawn = lastWaveEnemies;
}
