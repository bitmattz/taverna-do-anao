
//Criando uma camera para setar no oGame (oGame é um objeto sem sprite que fica na room para controlar a própria room e seus objetos instanciados)
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;


view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);


//Criando a configuração para ficar com a resolução que o view port definido anteriormente
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;

window_set_rectangle(_xpos, _ypos, 960, 540);
//Vai fazer o resize do application_surface com o tamanho da janela que setamos anteriormente
surface_resize(application_surface, 960, 540);


