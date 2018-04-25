if (obj_player.inventory[Item.walls, ItemProperties.amount] > 0 // Walls available
		&& !place_meeting(x, y, obj_solid)						// No collision with solids
		&& !place_meeting(x, y, obj_player)						//	player,
		&& !place_meeting(x, y, obj_enemy)						//	and enemies
		&& !place_meeting(x, y, obj_door)						//	and enemies
		//&& (collision_circle(x, y, 64, obj_enemy, false, true) = noone)
		&& (obj_player.x - obj_player.buildingRadius - buffer) <= x //
		&& (obj_player.x + obj_player.buildingRadius + buffer) >= x // Position is within
		&& (obj_player.y - obj_player.buildingRadius - buffer) <= y //	bounds of 
		&& (obj_player.y + obj_player.buildingRadius) >= y)			//  building radius
{
	return true;
}
else return false;

