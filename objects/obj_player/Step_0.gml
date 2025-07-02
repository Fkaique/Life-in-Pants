/// @description Insert description here
if instance_exists(obj_option){
	script_execute(vazio)
}else{
	if !instance_exists(obj_humano){
		script_execute(move_player)
	
	}else{
		if obj_humano.estado == -1{
			script_execute(move_player)
		}else{
			x += hspd
			y += vspd
		}
	}
#region SPR
if sign(hspd) == 1{
	dire = 1;
}else if sign(hspd) == -1{
	dire = -1;
}

if hspd != 0{
	if left{
		dir = 0;
		sprite_index = spr_player_run;
		image_xscale = -1;
	}else if right{
		dir = 180;
		sprite_index = spr_player_run;
		image_xscale = 1;
	}	
}
if vspd != 0{
	sprite_index = spr_player_jump;
}
if hspd = 0 and vspd = 0{
	if squat{
		sprite_index = spr_player_squat;
		mask_index = spr_player_squat;
	}else{
		sprite_index = spr_player_idle;
		mask_index = spr_player_idle;
	}
}
#endregion
if hspd != 0 and vspd == 0{
	audio_resume_sound(snd_pacos);
}else{
	audio_pause_sound(snd_pacos);
}
depth = 250;
if take_dano == true{
	if alarm[0] > 0{
		if image_alpha >= 1{
			_alpha = -0.05;
		}else if image_alpha <=0{
			_alpha = 0.05;
		}
		image_alpha += _alpha;
	}else{
		image_alpha = 1;
		take_dano = false;
	}
}

if vida <= 0{
	hspd=0;
	vspd=0;
	mask_index=noone;
	if instance_exists(obj_chave){
			instance_destroy(obj_chave);
	}
	image_alpha = 0;
	audio_resume_sound(animation_puch);
	audio_stop_sound(snd_pacos);
	var _dir = 0;
	if morto == false and instance_number(obj_part_morte) <= 8{
	controler.mortes++;
	repeat 8{
			var inst = instance_create_layer(x,y,"Instances",obj_part_morte);
			inst.image_xscale = 0.2;
			inst.image_yscale = 0.2;
			inst.direction = _dir;
			inst.speed = 1;
			_dir += 45;
		}
		morto = true;
	}
	if instance_exists(obj_part_morte){
		alarm[0] = 30;
	}else{
		instance_destroy();
		room_goto(Rm_Start);
		instance_create_layer(192,384,"Instances",obj_player);
	}
}
}
