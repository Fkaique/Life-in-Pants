/// @description Insert description here
depth = 250
if instance_exists(obj_player){
	if estado == "possuida"{
		x = lerp(x,obj_player.x+20,0.05)	
		y = lerp(y,obj_player.y-sprite_get_height(spr_player_idle)/2,0.05)
	}
}
