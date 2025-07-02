/// @description Insert description here
if instance_exists(obj_player)
var player = obj_player
if place_meeting(x,y,obj_player){
	if player.vida >= player.maxVida{
		draw_set_color(c_red)
		draw_text((display_get_gui_width()/2),(display_get_gui_height()-sprite_get_height(spr_vidas)*4),"costura intocada")
		draw_set_color(c_white)
	}
}