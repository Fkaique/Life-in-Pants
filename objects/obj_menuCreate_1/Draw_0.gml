/// @description Insert description here
if room == rm_cutcine{
	draw_sprite_ext(menu,0,0,0,1,1,0,c_white,_alpha)
	if alarm[1]<=0{
		if _alpha < 1 and _verify == false{
			_alpha += .02
		}
		if _alpha > 0 and _verify == true{
			_alpha -= .02
		}
		if _alpha >= 1{
			_verify = true
			alarm[1] = 60
		}
		if _alpha <= 0 and _verify == true{
			room_goto(Rm_Menu)
		}
	}
}
