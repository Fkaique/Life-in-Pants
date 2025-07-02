/// @description Insert description here
if !instance_exists(obj_option){
	draw_self();	
}else{
	speed=0
	audio_pause_sync_group(snd_espinhos)
	if instance_exists(obj_player)obj_player.take_dano=false
}



