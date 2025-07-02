
draw_set_alpha(_alpha)
/*if instance_exists(obj_comecar){
	if obj_comecar.click == true and draw_get_alpha() < 1{
		_alpha += 0.02
	}
}else{
	if draw_get_alpha() > 0{
		_alpha -= 0.02
	}
}*/
if room == Rm_Menu{
	if draw_get_alpha() > 0{
		_alpha -= 0.02
	}
}
if _alpha >= 1{
	var _rm = room
	room_goto(Rm_Menu)
	_alpha = .98
}


draw_set_color(c_black)
draw_rectangle_color(0,0,room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_color(c_white)
draw_set_alpha(1)
