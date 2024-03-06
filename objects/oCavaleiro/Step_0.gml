//animação andando


if keyboard_check(ord("A"))
{
	x -= 2;
	sprite_index = CavaleiroA;
}

if keyboard_check(ord("D"))
{
	x += 2;
	sprite_index = CavaleiroD;
}

if keyboard_check(ord("W"))
{
	y -= 2;
	sprite_index = CavaleiroW;
}

if keyboard_check(ord("S"))
{
	y += 2;
	sprite_index = CavaleiroS;
}



//animação parada
if keyboard_check_released(ord("A"))
{
	sprite_index = CavaleiroPA
}

if keyboard_check_released(ord("D"))
{
	sprite_index = CavaleiroPD
}

if keyboard_check_released(ord("S"))
{
	sprite_index = CavaleiroPS
}

if keyboard_check_released(ord("W"))
{
	sprite_index = CavaleiroPW
}