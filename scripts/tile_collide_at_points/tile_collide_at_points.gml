//@param tile_map_id
//@param point_arrays...


//Found variable
var found = false;

//for the point arrays.


//Loop through the points and check for a tile
for(var i=0;i<argument_count;i++){
var point = argument[i];
found = found || ((global.world[# point[V2X] div TILE_SIZE, point[V2Y] div TILE_SIZE] != 6)&&(global.world[# point[V2X] div TILE_SIZE, point[V2Y] div TILE_SIZE] != 18)&&(global.world[# point[V2X] div TILE_SIZE, point[V2Y] div TILE_SIZE] != 24));
}

return found;
