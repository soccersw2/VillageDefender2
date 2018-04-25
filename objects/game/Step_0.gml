get_input();

// Debug Commands
if(input_r) game_restart();
if(input_f) 
{
	instance_destroy(obj_enemy);
	enemiesLeftToSpawn = 0;
	enemiesLeftAlive = 0;
}

// Skip intermission
if(intermissionActive && input_enter)
{
	intermissionTimeLeft = 0;
}
	

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
