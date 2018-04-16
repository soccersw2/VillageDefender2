// end wave
if (!intermissionActive && enemiesLeftAlive <= 0)
{
	intermissionActive = true;
	intermissionTimeLeft = INTERMISSION_TIME * room_speed;
}

// start wave
if (intermissionActive && intermissionTimeLeft < 0)
{
	intermissionActive = false;
	wave++;
	lastWaveEnemies += 10;
	enemiesLeftAlive = lastWaveEnemies;
	enemiesLeftToSpawn = lastWaveEnemies;
}
