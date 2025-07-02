/// @description Insert description here
if surface_exists(shadow_surf){
	surface_set_target(shadow_surf)

	draw_set_color(c_black)
	draw_set_alpha(_alpha)
	draw_rectangle(0, 0, room_width, room_height, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	gpu_set_blendmode(bm_subtract)
	
	if instance_exists(obj_player){
		var _dir =  point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
		var _xx = lengthdir_x(15, _dir)
		var _yy = lengthdir_y(15, _dir)
	}
	
	gpu_set_blendmode(bm_normal)
	
	surface_reset_target()
	
	draw_surface(shadow_surf, 0, 0)
}else{
	shadow_surf = surface_create(room_width, room_height)
}
