// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_player(){
#region MOVE

gamepad_set_axis_deadzone(global.joystick, 0.25)

right = keyboard_check(ord("D")) or keyboard_check(vk_right) or direita or gamepad_axis_value(global.joystick, gp_axislh) or gamepad_axis_value(global.joystick, gp_padr) > 0.25
left = keyboard_check(ord("A")) or keyboard_check(vk_left) or esquerda or gamepad_axis_value(global.joystick, gp_axislh) or gamepad_axis_value(global.joystick, gp_padl) < -0.25
jump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or cima or gamepad_button_check(global.joystick ,gp_face1)
squat = keyboard_check(ord("S")) or keyboard_check(vk_down) or baixo or gamepad_axis_value(global.joystick, gp_axislh) or gamepad_axis_value(global.joystick, gp_padd) > 0.25

hspd = (right - left) * spd

if place_meeting(x+hspd,y,obj_colision){
	while !place_meeting(x+sign(hspd),y,obj_colision){
		x+=sign(hspd)
	}
	hspd = 0
}
x += hspd
if place_meeting(x,y+vspd,obj_colision){
	while !place_meeting(x,y+sign(vspd),obj_colision){
		y+=sign(vspd)
	}
	vspd = 0
}

y += vspd

if !place_meeting(x,y+1,obj_colision){
	vspd+=grav
	if coyote==false{
		alarm[1]=10
		coyote=true
	}
	if alarm[1]>0{
			if jump && countJumps>0 && alarm[2]<1{
				vspd = -jumpForce
				audio_play_sound(snd_pulo,10,false)
				countJumps-=1
				alarm[2]=20
		}
	}
}else{
	alarm[1]=-1
	coyote=false
	countJumps=1
	if jump && alarm[2]<1{
		vspd = -jumpForce
		alarm[2]=20
	}
}

#endregion
}function vazio(){}