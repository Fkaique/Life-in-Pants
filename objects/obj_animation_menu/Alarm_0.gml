/// @description Insert description here
var _inst = instance_create_depth(choose(-10, 721),random_range(10,400),depth,obj_menu_player);

if _inst.y>370{
	_inst.sprite_index=spr_player_run;
	_inst.image_speed=1;
}else{
_inst.image_speed=0;
_inst.image_index=0;	
}
if _inst.x < 0{
	_inst.image_xscale=1;
	_inst.direction=0;
}else if _inst.x > 711{
	_inst.image_xscale=-1;	
	_inst.direction=180;
}
_inst.speed=random_range(2,8);
alarm[0]=random_range(60,180);


