/// @description Display cards and fake up P-Meter depletion

//Handle out prizes if coin collection mode is active
if (collect_mode == 1) {
	
	//If there's no more coins to collect
	if (coins_left <= 0) {
		
		//Set collection mode to 2
		collect_mode = 2;
		
		//Create a poof of smoke
		instance_create_depth(camera_get_view_x(view_camera[0]) + 20, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 16, -32, obj_smoke);
		
		//Enable the blue house in-map
		global.blue_house = true;
	}
}

show_cards--;
if (fake_pm == 0) {
	
	if (instance_exists(obj_mario))
	&& (obj_mario.pmeter > 0)
		fake_pm = obj_mario.pmeter;
}
else
	fake_pm--;