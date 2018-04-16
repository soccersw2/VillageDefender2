// If enemy dead, destroy
if (hp <= 0) 
{
	game.enemiesLeftAlive--;
	instance_destroy();
}