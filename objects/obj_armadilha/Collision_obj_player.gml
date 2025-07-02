/// @description Insert description here


ativada = true
if image_index < 4{
	if other.take_dano == false{
		audio_play_sound(snd_armadilha, 12,false)
		other.vida -= 1
		other.alarm[0] = 60
		other.take_dano = true
	}
}