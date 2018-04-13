get_input();

// Debug Commands
if(input_r) game_restart();
if(keyboard_check_pressed(vk_escape)) game_end();

// Enemy test
//if (game.enemiesLeft > 0 && spawnTimer <= 0) 
//{
//	instance_create_layer(random_range(32, room_width), random_range(32, 50),
//			"Enemies", obj_enemy);
//	enemiesLeft--;
//	spawnTimer = 120;
//} else spawnTimer--;
