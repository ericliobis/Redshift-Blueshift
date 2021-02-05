
//@param velocity_array

			
var velocity = argument0;
var objectsize = argument1;
x+= velocity[V2X];

//right/left collision

if velocity[V2X]>0{
	var tile_right = tile_collide_at_points([x+(objectsize[0]/2)-1,y-(objectsize[1]/2)], [x+(objectsize[0]/2)-1, y+(objectsize[1]/2)-1]);
	if tile_right{
		return true
	}
}else{
	var tile_left = tile_collide_at_points([x-(objectsize[0]/2),y-(objectsize[1]/2)], [x-(objectsize[0]/2), y+(objectsize[1]/2)-1]);
	if tile_left{
		return true
	}
}

y+= velocity[V2Y];

//up/down collision 

if velocity[V2Y]>0{
	var tile_bottom = tile_collide_at_points([x-(objectsize[0]/2),y+(objectsize[1]/2)-1], [x+(objectsize[0]/2)-1, y+(objectsize[1]/2)-1]);
	if tile_bottom{
return true
	}
}else{
	var tile_top = tile_collide_at_points([x-(objectsize[0]/2),y-(objectsize[1]/2)], [x+(objectsize[0]/2)-1, y-(objectsize[1]/2)]);
	if tile_top{
		return true
	}
}
return false