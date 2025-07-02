if estado == 0 and y <= 370 and place_meeting(x+1,y,obj_menu_player){
	speed = 0
	estado = 2
}
if estado == 2 and alarm<10{
	audio_play_sound(animation_puch_ani,10,false)
	image_index = 1
	alarm[0]=30
	estado = 3
	x-=5
}
else if estado == 3 and alarm[0] <= 0{
	image_angle-=0.7
	if !place_meeting(x,y+1,obj_colision){
		y+=2
	}else{
		image_index = 2
	}
	
}

if y>410 or x < -20 or x > 730{
	instance_destroy()	
}