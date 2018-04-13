if (hp <= 0) 
{
	instance_destroy();
	game.enemiesLeftAlive--;
}
	
if (place_meeting(x, y, obj_player) || place_meeting(x, y, obj_hub) || place_meeting(x, y, obj_solid))
{
	dir = direction;
	move_bounce_solid(true);
}
