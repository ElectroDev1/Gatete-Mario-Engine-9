/// @description Create 5 coins

//If the puller object does exist
if (instance_exists(obj_puller)) {
	
	//Play 'Pickup' sound
	audio_play_sound(snd_pickup, 0, false);
	
	//Generate shards
	event_user(0);
    
    //Create coin
	repeat (5) {
		
		with (instance_create_depth(obj_mario.x, obj_mario.bbox_top-16, -4, obj_coinnpc)) {
			
			xspeed = random_range(1, -1);
			yspeed = random_range(-1, -5);
		}
	}
	
	//Set the puller sprite
	with (obj_puller) sprite_index = global.duck_sprite[global.powerup];
    
	//Finish pull
	alarm[1] = 15;
	
    //Make invisible
	visible = false;
}