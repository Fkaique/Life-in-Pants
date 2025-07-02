/// @description Insert description here
if ativada == true{
	alarm[0] = 60
	if image_index < 4{
		image_speed = 1
	}
	ativada = false
}
if destroier == true{
	if alarm[0] <= 0 {
		_alpha -= 0.05
		image_alpha = _alpha
	}
}
if end_animation(){
	image_speed = 0
	image_index = 4
	
}
if speed = 0{
	alarm[0] = 30
}