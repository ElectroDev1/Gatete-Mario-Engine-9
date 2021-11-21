/// @description Begin timer

//Increment hits
hits++;

//If the scatter mode is not active
if (scatter == 0) {

	//Begin timer
	if (coiny == 0) {

		coiny = 1;
		alarm[2] = 240;
	}

	//Create 5 coins if this block was hit 10 or more times
	else if (coiny == 2) {

		if (hits >= 10) 
		&& (mushroom == false) {
	
			//Play 'Big Coin' sound
			audio_play_sound(snd_coin_big, 0, false);

			//Repeat as many coins you want to spawn
			repeat (5) {

				with (instance_create_depth(x + 8, ystart - 16, -4, obj_coinnpc)) {
	
					xspeed = random_range(-2, 2);
					yspeed = random_range(-2, -6);
				}
			}
		}
	}

	//Create coin
	instance_create_depth(x + 8, ystart - 16, -4, obj_block_coin);
}

//Otherwise, if the scatter mode is active
else if (scatter == true) {

	//Play 'Big Coin' sound
	audio_play_sound(snd_coin_big, 0, false);

	//Repeat as many coins you want to spawn
	repeat (coins) {

		with (instance_create_depth(x + 8, ystart - 16, -4, obj_coinnpc)) {
	
			xspeed = random_range(-2, 2);
			yspeed = random_range(-2, -6);
		}
	}
}