/// @description Insert description here
// You can write your code in this editor

//animação andando
if keyboard_check(ord("A"))
{
	x -= 2;
	sprite_index = BruxaA;
}

if keyboard_check(ord("D"))
{
	x += 2;
	sprite_index = BruxaD;
}

if keyboard_check(ord("W"))
{
	y -= 2;
	sprite_index = BruxaW;
}

if keyboard_check(ord("S"))
{
	y += 2;
	sprite_index = BruxaS;
}


//animação parada
if keyboard_check_released(ord("A"))
{
	sprite_index = BruxaPA
}

if keyboard_check_released(ord("D"))
{
	sprite_index = BruxaPD
}

if keyboard_check_released(ord("S"))
{
	sprite_index = BruxaPS
}

if keyboard_check_released(ord("W"))
{
	sprite_index = BruxaPW
}
