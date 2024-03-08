/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

//animação andando
if keyboard_check(ord("A"))
{
	x -= 2;
	sprite_index = OrcA;
}

if keyboard_check(ord("D"))
{
	x += 2;
	sprite_index = OrcD;
}

if keyboard_check(ord("W"))
{
	y -= 2;
	sprite_index = OrcW;
}

if keyboard_check(ord("S"))
{
	y += 2;
	sprite_index = OrcS;
}


//animação parada
if keyboard_check_released(ord("A"))
{
	sprite_index = OrcPA
}

if keyboard_check_released(ord("D"))
{
	sprite_index = OrcPD
}

if keyboard_check_released(ord("S"))
{
	sprite_index = OrcPS
}

if keyboard_check_released(ord("W"))
{
	sprite_index = OrcPW
}
