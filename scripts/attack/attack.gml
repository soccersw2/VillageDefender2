/// @desc enemy_attack(target)
/// @param target	Target to attack
// Sword Attack

with(argument0)
{
	hp -= other.damage;
	flash = 5;
	timeBtwnFlashes = 5;
	hit = true;
}