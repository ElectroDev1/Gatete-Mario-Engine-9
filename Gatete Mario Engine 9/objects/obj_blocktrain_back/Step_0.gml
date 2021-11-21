/// @description Block train logic

//If moving
if (speed > 0) {

    //If snapped on grid and it's allowed to create new blocks.
    if (ready == 0)
    && (place_snapped(16,16)) {
        
        //Do not allow creation of blocks.
        ready = 1;
        
        //Allow it later
        alarm[0] = 4;
        
        //Snap in grid
        move_snap(16, 16);
        
        //Create a killer block
        instance_create_depth(x, y, depth, obj_blocktrain_killer);   
    }
}

//Set up direction
if ((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_up, 0, 0)) && (direction != 90))
	{ direction = 90; move_snap(16, 16) }
else if ((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_down, 0, 0)) && (direction != 270))
	{ direction = 270; move_snap(16, 16) }
else if ((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_left, 0, 0)) && (direction != 180))
	{ direction = 180; move_snap(16, 16) }
else if ((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_right, 0, 0)) && (direction != 0))
	{ direction = 0; move_snap(16, 16) }