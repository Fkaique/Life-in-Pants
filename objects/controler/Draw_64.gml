/// @description Insert description here
if instance_exists(obj_player){
	draw_sprite_ext(spr_vidas,obj_player.vida,(display_get_gui_width()/2),(display_get_gui_height()-sprite_get_height(spr_vidas)*3),3,3,0,c_white,1)
}
if  room!=Rm_Menu{
		var _escala=2
		draw_sprite_ext(spr_placa,0,0,y,_escala,_escala,-90,c_white,1)
}
/*
	     	2,98, 246
1,47, 297   5,47, 297   4,150, 297
		    3,98, 349