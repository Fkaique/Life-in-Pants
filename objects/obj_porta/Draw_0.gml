/// @description Insert description here

// Inherit the parent event
event_inherited();


draw_set_font(fnt_CS)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if place_meeting(x,y,obj_player){
	if estado == "trancada"{
		draw_set_color(c_red)	
	}else if estado == "destrancada"{
		draw_set_color(c_green)	
	}
	draw_text(x,y-sprite_get_height(sprite_index),estado)
	draw_set_color(c_white)
}