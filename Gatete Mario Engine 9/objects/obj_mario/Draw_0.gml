/// @description Draw Mario

if (fly != noone)
	return;

//Set up the palette
pal_swap_set_player(spr_palette_mario, spr_palette_mario_invincible, spr_palette_mario_mega);

//Draw Mario
if (sprite_index > -1) {
	
	switch (global.powerup) {
		
		//Mega
		case (cs_mega): {
			
			draw_sprite_custom_origin(sprite_index, image_index, screen_round(x), screen_round(y)+1, sprite_get_xoffset(sprite_index), sprite_height, 4*xscale, 4*yscale, 0, image_blend, image_alpha);
		} break;
	
		//Rest of sprites
		default: {
			
			//If Mario is doing a somersault
			if (somersault == 1) {
				
				//If Mario is small
				if (global.powerup == cs_small)
					draw_sprite_custom_origin(sprite_index, image_index, screen_round(x), screen_round(y)+9, sprite_get_xoffset(sprite_index), 8, xscale, yscale, angle, image_blend, image_alpha);
				else
					draw_sprite_custom_origin(sprite_index, image_index, screen_round(x), screen_round(y)+1, sprite_get_xoffset(sprite_index), 16, xscale, yscale, angle, image_blend, image_alpha);				
			}
			else
				draw_sprite_custom_origin(sprite_index, image_index, screen_round(x), screen_round(y)+1, sprite_get_xoffset(sprite_index), sprite_height, xscale, yscale, 0, image_blend, image_alpha);
			
		}
	}
}

//Reset the palette
pal_swap_reset();