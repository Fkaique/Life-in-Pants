/// @description Insert description here
// You can write your code in this editor
//10 15 16
var escala = 5
var mousex = device_mouse_x_to_gui(0)
var mousey = device_mouse_y_to_gui(0)
var wdg = display_get_gui_width()/2
var hgg = display_get_gui_height()/2
var mouse_sobre1 = point_in_circle(mousex,mousey,wdg-15*escala,hgg+3*escala,8*escala);
var mouse_sobre2 = point_in_circle(mousex,mousey,wdg+15*escala,hgg+3*escala,8*escala);
var mouse_sobre3 = point_in_circle(mousex,mousey,wdg,hgg+16*escala,8*escala);
var mouse_sobre4 = point_in_circle(mousex,mousey,wdg,hgg-10*escala,8*escala);
var mouse_sobre5 = point_in_circle(mousex,mousey,wdg+23*escala,hgg-25*escala,8*escala);

if mouse_check_button_pressed(mb_left){
	if mouse_sobre1{
		game_restart()	
	}else if mouse_sobre2{
		controler.paused=false;
		instance_destroy()
	}else if mouse_sobre3{
		game_end()
	}else if mouse_sobre4{
		if paused_snd==false{
			audio_pause_sound(snd_trilha)
			paused_snd = true
		}else{
			audio_resume_sound(snd_trilha)
			paused_snd = false
		}
	}else if mouse_sobre5{
		if !paused_joy{
			instance_destroy(obj_joystick)
			paused_joy=true
		}else{
			instance_create_layer(98,327,"joystick",obj_joystick)	
			paused_joy=false
		}
	}
}
if paused_snd{
	if paused_joy{
		controler.spr=3
	}else{
		controler.spr=1
	}
}else{
	if paused_joy{
		controler.spr=2
	}else{
		controler.spr=0
	}	
}