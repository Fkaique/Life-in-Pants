/// @description Insert description here

if estado == 1{
	audio_pause_sound(snd_trilha)
	obj_player.hspd = 3
	obj_player.vspd = 0
	alarm[0] = 60
}
if estado == 1 and distance_to_object(obj_player) <= 30{
	estado = 2
}
if estado == 2{
	audio_resume_sound(confuso1)
	obj_player.hspd = 0
	obj_player.vspd = 0
	image_index = 1
	alarm[1] = 180
}
if estado == 3{
	obj_ilumination._alpha = 1
	instance_destroy(obj_player)
	alarm[2] = 120
}
if estado == 4{
	instance_destroy(obj_ilumination)
	instance_create_layer(-10,-10,"Instances",obj_ilumination)
	audio_resume_sound(alegre)
	image_index = 2
}
if estado == 5{
	audio_resume_sound(confuso2)
	image_index = 3
	if !instance_exists(obj_player_ani)instance_create_layer(x,y-10,"Instances",obj_player_ani)
}
