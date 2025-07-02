/// @description Insert description here

if keyboard_check_pressed(ord("F")){
	if window_get_fullscreen(){
		window_set_fullscreen(false)
	}else{
		window_set_fullscreen(true)
	}
}
if room!=Rm_Menu{
	var _mousex = device_mouse_x_to_gui(0)
	var _mousey = device_mouse_y_to_gui(0)
	#region Options
	var _xx=0, _yy=0;
	var _ww=15*2, _hh=18*2;
	var mouse_sobre = point_in_rectangle(_mousex, _mousey,_xx,_yy,_xx+_ww,_yy+_hh)
	
	if mouse_sobre{
		if mouse_check_button_pressed(mb_left){
			if paused==false{
				instance_create_depth(-100,-100,depth,obj_option);
				audio_pause_sound(snd_pacos)
				paused=true
			}else{
				paused=false
				instance_destroy(obj_option)
			}
		}
	}else if keyboard_check_pressed(vk_escape){
		if paused==false{
				instance_create_depth(-100,-100,depth,obj_option);
				audio_pause_sound(snd_pacos)
				paused=true
			}else{
				paused=false
				instance_destroy(obj_option)
			}
	}
	
	
	#endregion
}

