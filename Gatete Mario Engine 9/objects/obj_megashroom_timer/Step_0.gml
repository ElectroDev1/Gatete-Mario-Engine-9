/// @description Mega shroom logic

//If Mario does exist.
if (instance_exists(obj_mario)) {

	//Snap into the player position.
	x = obj_mario.x;
	y = obj_mario.y;
    
	//With Mario
	with (obj_mario) {
    
	    //Stay invincible
	    invulnerable = true;
		
		//Stay visible
		if (image_alpha < 1)
			image_alpha = 1;
	}
    
	//Get the mask from the player
	mask_index = obj_mario.mask_index;
}

//Do not build combo
hitcombo = 0;

//Warn the player that the starman effect is running out
if ((warning == 0) && (alarm[0] <= 120)) {

    //Play 'Switch Timer' sound
    audio_play_sound(snd_switch_timer, 0, false);
    
    //Warn
    warning = 1;
}
else if ((warning == 1) && (alarm[0] > 120)) 
    warning = 0;