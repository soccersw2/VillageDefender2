get_input();

// Debug Commands
if(input_r) game_restart();

// Intermission Active
if (intermissionTimeLeft >= 0) intermissionTimeLeft--;

// Enemy test
else if (enemiesLeftToSpawn > 0 && spawnTimer <= 0) 
{
	instance_create_layer(random_range(32, room_width - 32), 
					random_range(32, 50),"Enemies", obj_enemy);
	enemiesLeftToSpawn--;
	spawnTimer = 120;
} else spawnTimer--;
