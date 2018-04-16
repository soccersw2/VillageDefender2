/// @desc damage(target)
/// @param target	Target to attack
// Sword Attack

var target = argument0;

with(target)
{
	//hp -= other.damage;
	hp -= 10;
	flash = 5;
	timeBtwnFlashes = 5;
	hit = true;
}