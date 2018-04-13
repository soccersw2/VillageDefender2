script_execute(state);

if (hp <= 0) 
{
	instance_destroy();
	game.enemiesLeftAlive--;
}
	