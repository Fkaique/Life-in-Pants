/// @description Insert description here
if instance_exists(obj_player){
	x = lerp(x,obj_player.x, 0.05)
	y = lerp(y,obj_player.y, 0.05)
}else if instance_exists(obj_player_ani){
	x = lerp(x,obj_player_ani.x, 0.05)
	y = lerp(y,obj_player_ani.y, 0.05)
}