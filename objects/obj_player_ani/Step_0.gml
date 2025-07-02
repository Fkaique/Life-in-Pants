/// @description Insert description here
depth = 250
#region JOGO INI
if estado == 1 and place_meeting(x,y,obj_colision){
	estado = 2
}
if estado == 3 and place_meeting(x,y,obj_colision){
	estado = -1
}
if estado == 1{
	alarm[0] = 60
	x+=4
	image_index = 0
}if estado == 2{
	audio_play_sound(animation_puch,10,false)
	image_index = 1
	estado = 3
	x-=5
}
else if estado == 3{
	image_angle-=0.05
	if !place_meeting(x,y+1,obj_colision){
		y++
	}else{
		image_index = 2
	}
}

#endregion

#region JOGO FIM
//? A tem nada
#endregion