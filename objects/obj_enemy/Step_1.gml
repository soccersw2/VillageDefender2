// If enemy dead, destroy
if (hp <= 0) 
{
	instance_destroy();
	game.enemiesLeftAlive--;
}