
if instance_exists(obj_player){
var _x1 = 98, _y1=327, _xx=642
var _escala =1
var _sprite_size = sprite_get_width(spr_joystic_)

// desenhas o circulo

draw_sprite_ext(spr_joystic_,0,_x1,_y1,_escala,_escala,0,c_white,1)
draw_sprite_ext(spr_joystic_,1,_xx,_y1,_escala,_escala,0,c_white,1)

//movendo até o mouse
var mouse_click=false
var _joy_x=0,_joy_y=0
var _joy_click=false

obj_player.cima = 0

for (var i=0; i<5;i++){
	if device_mouse_check_button(i,mb_left){
		var _mouse_x = device_mouse_x_to_gui(i)
		var _mouse_y = device_mouse_y_to_gui(i)
		mouse_click=true
		if point_in_circle(_mouse_x, _mouse_y, _x1, _y1,_sprite_size/2 * _escala){
			_joy_x = _mouse_x
			_joy_y = _mouse_y
			_joy_click=true
		}
		if point_in_circle(_mouse_x, _mouse_y, _xx, _y1,_sprite_size/4 * _escala){
			obj_player.cima = 1;
		}
	}
}


if _joy_click || follow{
	if mouse_click && _joy_click{
		spd = min(point_distance(_x1, _y1, _joy_x, _joy_y), _sprite_size/2*_escala)
		dir = point_direction(_x1, _y1, _joy_x, _joy_y)
		follow = true
	}
}
if !mouse_click && !_joy_click{
	follow=false
	spd = lerp(spd,0,.1)
}
var _x2=lengthdir_x(spd, dir)
var _y2=lengthdir_y(spd, dir)

if follow{
	// zona morta
	if spd > 8 {
		var direc = point_direction(_x1, _y1, _x2 + _x1, _y2 + _y1);
		obj_player.direita  = (direc < 45 || direc > 315);
		obj_player.entrar  = (direc >= 45 && direc < 135);
		obj_player.esquerda = (direc >= 135 && direc < 225);
		obj_player.baixo  = (direc >= 225 && direc < 315);
	}else{
		obj_player.direita = 0;
		obj_player.entrar = 0;
		obj_player.esquerda = 0;
		obj_player.baixo = 0;
	}
}else{
	obj_player.direita = 0;
	obj_player.entrar = 0;
	obj_player.esquerda = 0;
	obj_player.baixo = 0;	
}
//circulo de dentro
draw_sprite_ext(spr_joystic_,2,_x1+_x2,_y1+_y2,_escala,_escala,0,c_white,1)
}
//98 327