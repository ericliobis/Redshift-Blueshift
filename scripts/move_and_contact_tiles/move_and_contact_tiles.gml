
//@param velocity_array

			
var velocity = argument0;
var objectsize = argument1;
x+= velocity[V2X];

//right/left collision

if velocity[V2X]>0{
	var tile_right = tile_collide_at_points([x+(objectsize[0]/2)-1,y-(objectsize[1]/2)], [x+(objectsize[0]/2)-1, y+(objectsize[1]/2)-1]);
	if tile_right{
		x = (x+(objectsize[0]/2))&~(TILE_SIZE-1);
		x-=(objectsize[0]/2);
		velocity[@V2X] = 0;
	}
}else{
	var tile_left = tile_collide_at_points([x-(objectsize[0]/2),y-(objectsize[1]/2)], [x-(objectsize[0]/2), y+(objectsize[1]/2)-1]);
	if tile_left{
		x = (x-(objectsize[0]/2))&~(TILE_SIZE-1);
		x+=TILE_SIZE +(objectsize[0]/2);
		velocity[@V2X] = 0;
	}
}

y+= velocity[V2Y];

//up/down collision 

if velocity[V2Y]>0{
	var tile_bottom = tile_collide_at_points([x-(objectsize[0]/2),y+(objectsize[1]/2)-1], [x+(objectsize[0]/2)-1, y+(objectsize[1]/2)-1]);
	if tile_bottom{
		y = (y+(objectsize[1]/2))&~(TILE_SIZE-1);
		y-=(objectsize[1]/2);
		velocity[@V2Y] = 0;
	}
}else{
	var tile_top = tile_collide_at_points([x-(objectsize[0]/2),y-(objectsize[1]/2)], [x+(objectsize[0]/2)-1, y-(objectsize[1]/2)]);
	if tile_top{
		y = (y-(objectsize[1]/2))&~(TILE_SIZE-1);
		y+=TILE_SIZE +(objectsize[1]/2);
		velocity[@V2Y] = 0;
	}
}