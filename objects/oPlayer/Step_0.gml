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

if(keyboard_check(ord("W")))
{
	y = y - 2;
	sprite_index = spr_dwarf_walk_upward;
}

else if(keyboard_check(ord("A")))
{
	x = x - 2;
	sprite_index = spr_dwarf_walk_left;
}
else if(keyboard_check(ord("D")))
{
	x = x + 2;
	sprite_index = spr_dwarf_walk_right;
}
else if(keyboard_check(ord("S")))
{
	y = y + 2;
	sprite_index = spr_dwarf_walk_front;
}

//Eventos de movimentação em KeyUp
if(keyboard_check_released(ord("W")||ord("S")||ord("A")||ord("D")))
{
	sprite_index = spr_dwarf_idle;
}



//Setando o zoom 


var _factor = 0.2;
var _mouseW = mouse_wheel_down() - mouse_wheel_up();
zoomF = clamp(zoomF + (_mouseW * _factor), _factor,2);

var _lerpH = lerp(_viewH, zoomF * 540, _factor);
var _newH = clamp(_lerpH, 0, room_height);
var _newW = _newH * (960 / 540);
camera_set_view_size(view_camera[0], _newW, _newH);

var _offsetX = _newX - (_newW - _viewW) * 0.5;
var _offsetY = _newY - (_newH - _viewH) * 0.5;
_newX = clamp(_offsetX, 0 , room_width - _newW);
_newY = clamp(_offsetY, 0 , room_height - _newH);

camera_set_view_pos(view_camera[0], _newX, _newY);







