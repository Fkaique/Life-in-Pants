/// @description Insert description here


mortes=0
paused = false
spr=0
global.finalizado = 0
global.joystick = -1
joystick=false

if file_exists("SaveLIP.dat"){
	ini_open("SaveLIP.dat")
	global.finalizado = ini_read_string("fins","quantidade",0)
	ini_close()	
}	
if room=Rm_Menu{
	audio_play_sound(snd_trilha,10,true)
}