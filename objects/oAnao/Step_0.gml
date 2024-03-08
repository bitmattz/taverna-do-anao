//Eventos de movimentação em KeyDown



//Vai coletar o valor que é -1,0 ou 1 para os movimentos horizontais e verticais
//para ser movido do player para direção que é para ser visualizada a mais.
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Estamos pegando as informações da posição da camera atual

var _viewX = camera_get_view_x(view_camera[0]);
var _viewY = camera_get_view_y(view_camera[0]);
var _viewW = camera_get_view_width(view_camera[0]);
var _viewH = camera_get_view_height(view_camera[0]);

//Vamos declarar que quando o player quiser ver mais do mapa
//vão ser usadas as variaveis acima para calcular o novo centro da camera
//baseado no sentido que for dado o comando

var _gotoX = x + (_hor * 200) - (_viewW * 0.5);
var _gotoY = y + (_ver * 150) - (_viewH * 0.5);

var _newX = lerp(_viewX, _gotoX, 0.1);
var _newY = lerp(_viewY, _gotoY, 0.2);



//animação andando
if keyboard_check(ord("A"))
{
	x -= 2;
	sprite_index = AnaoA;
}

if keyboard_check(ord("D"))
{
	x += 2;
	sprite_index = AnaoD;
}

if keyboard_check(ord("W"))
{
	y -= 2;
	sprite_index = AnaoW;
}

if keyboard_check(ord("S"))
{
	y += 2;
	sprite_index = AnaoS;
}


//animação parada
if keyboard_check_released(ord("A"))
{
	sprite_index = AnaoPA
}

if keyboard_check_released(ord("D"))
{
	sprite_index = AnaoPD
}

if keyboard_check_released(ord("S"))
{
	sprite_index = AnaoPS
}

if keyboard_check_released(ord("W"))
{
	sprite_index = AnaoPW
}



