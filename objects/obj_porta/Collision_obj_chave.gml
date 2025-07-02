/// @description Insert description here
if estado == "trancada"{
	if chave_rqrd == other.tipo{
		audio_play_sound(snd_arco, 12,false)
		estado = "destrancada"
		chave = 0
		instance_destroy(other)
	}
}