/// @description Yellow Area Block

/*
//	This object uses creation code
//
//	sprout = Use macro list
*/

//Default value
sprout = cs_coin;

//If the yellow switch has been pressed, turn into a real block
if (global.palace_y == 1) {

	//Create a new block and give it the same item
	with (instance_create_depth(x, y, 9, obj_qblock)) {
	
		//Set the sprite
		sprite_index = spr_area_y;
		
		//Do not animate
		image_speed = 0;
		image_index = 0;
		
		//Make them breakable
		shard_sprite = spr_shard_area_y;
		
		//Set the item to reveal
		sprout = other.sprout;
	}
	
	//Destroy
	instance_destroy();
}

//Do not animate
image_speed = 0;
image_index = 1;