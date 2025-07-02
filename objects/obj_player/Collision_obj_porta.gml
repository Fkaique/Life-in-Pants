/// @description Insert description here
if other.estado == "destrancada"{
	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E")) or entrar{
		if alarm[2]<1{
			audio_play_sound(snd_arco, 12, false)
			room_goto(other._rm)
			x = other._xx
			y = other._yy
			if instance_exists(obj_chave) and obj_chave.estado==-1{
				instance_destroy(obj_chave);
			}
			alarm[2]=30
		}
	}
}else{
	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E")) or entrar{
		if alarm[2]<1{
			audio_play_sound(snd_armadilha, 12, false)
			alarm[2]=30
		}
	}
}
if file_exists("SaveLIP.dat"){file_delete("SaveLIP.dat")}
	ini_open("SaveLIP.dat")
	#region 
		ini_write_real("fins","quantidade",global.finalizado)
	#endregion
ini_close()