/// @description Insert description here
if other.take_dano == false{
	audio_play_sound(snd_espinhos,12,false)
	other.vida -= 1
	other.alarm[0] = 60
	other.take_dano = true
}