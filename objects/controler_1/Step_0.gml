var numSlots = gamepad_get_device_count()
for (i=0;i<numSlots;i++){
	if (gamepad_is_connected(i)){
		global.joystick = i
	}
}