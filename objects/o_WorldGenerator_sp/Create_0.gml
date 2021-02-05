/// @description Create the World

//Set the room size to x by y
var x_size = o_sp_vars.xsize;
var y_size = o_sp_vars.ysize;
room_width = x_size*TILE_SIZE;
room_height = y_size*TILE_SIZE;
//Randomize world
randomize();
var c_repeats = 1000;
var odds = 1;
tilesets = [t_collisions, t_collisions1, t_collisions11, t_collisions111, t_collisions1111]
tilecoll = irandom_range(0,4);
global.tile_layer = layer_create(-1);
global.collision_tile_below_player = layer_tilemap_create(global.tile_layer, 0, 0, tilesets[tilecoll],x_size*2, y_size*2);
global.tile_layer = layer_create(-1000);
global.collision_tile_above_player = layer_tilemap_create(global.tile_layer, 0, 0, tilesets[tilecoll],x_size*2, y_size*2);


global.world = ds_grid_create(x_size,y_size);
ds_grid_set_region(global.world,0,0,x_size-1,y_size-1,TILES.VOID);


//Move controller to center
var cx = x_size div 2;
var cy = y_size div 2;
var cdir = irandom(3);

repeat(c_repeats)
{
global.world[# cx, cy] = TILES.FLOOR;

if(irandom(odds) = odds)
{
	cdir = irandom(3);
}

var xdir = lengthdir_x(1,cdir*90);
var ydir = lengthdir_y(1,cdir*90);
cx += xdir;
cy += ydir;
cx = clamp(cx, 1, x_size-2);
cy = clamp(cy, 1, y_size-2);

}
//find all the walls
for(xx=0;xx<x_size;xx++){
for(yy=0;yy<y_size;yy++){
 if(global.world[# xx,yy] == TILES.FLOOR)
 {
	if(global.world[# xx-1,yy] == TILES.VOID) global.world[# xx-1,yy] = TILES.WALL;
	if(global.world[# xx+1,yy] == TILES.VOID) global.world[# xx+1,yy] = TILES.WALL;
	if(global.world[# xx,yy-1] == TILES.VOID) global.world[# xx,yy-1] = TILES.WALL;
	if(global.world[# xx,yy+1] == TILES.VOID) global.world[# xx,yy+1] = TILES.WALL;
 }
}
}


//Draw world
for(xx=0;xx<x_size*2;xx++){
for(yy=0;yy<y_size*2;yy++){
if(global.world[# (xx div 2),(yy div 2)] == TILES.FLOOR ||global.world[# (xx div 2),(yy div 2)] == TILES.VOID){
tilemap_set(global.collision_tile_below_player,global.world[# (xx div 2),(yy div 2)], (xx),(yy));
}
}
}

//tilemap the walls
for(xx=0;xx<x_size*2;xx++){
for(yy=0;yy<y_size*2;yy++){

if(global.world[# (xx div 2),(yy div 2) ] == TILES.FLOOR)
{
	var right = global.world[# (xx+1) div 2, (yy div 2)] != TILES.FLOOR;
	var left = global.world[# (xx-1) div 2, (yy div 2)] != TILES.FLOOR;
	var up = global.world[# (xx div 2), (yy-1) div 2] != TILES.FLOOR;
	var down = global.world[# (xx div 2), (yy+1) div 2] != TILES.FLOOR;
	var up_right = global.world[# (xx+1) div 2, (yy-1) div 2] != TILES.FLOOR;
	var down_right = global.world[# (xx+1) div 2, (yy+1) div 2] != TILES.FLOOR;
	var up_left = global.world[# (xx-1) div 2, (yy-1) div 2] != TILES.FLOOR;
	var down_left = global.world[# (xx-1) div 2, (yy+1) div 2] != TILES.FLOOR;
          if (right) {
                if (down) {
				if(down_right)
				{
                    tilemap_set(global.collision_tile_below_player,TILES.CDOWNRIGHT, (xx+1),(yy));
					tilemap_set(global.collision_tile_below_player,TILES.LEFT, (xx+1),(yy-1));		
					tilemap_set(global.collision_tile_above_player,TILES.UP, (xx),(yy));
					}else{
					tilemap_set(global.collision_tile_below_player,TILES.DOWNLEFT, (xx+1),(yy));		
					tilemap_set(global.collision_tile_above_player,TILES.UPRIGHT, (xx),(yy));
					tilemap_set(global.collision_tile_below_player,TILES.RIGHT, (xx),(yy+1));	
					}
}else if(up)
{
	if(up_right)
	{
	tilemap_set(global.collision_tile_below_player,TILES.CUPRIGHT, (xx+1),(yy-1));
	tilemap_set(global.collision_tile_below_player,TILES.LEFT, (xx+1),(yy));		
	tilemap_set(global.collision_tile_below_player,TILES.DOWN, (xx),(yy-1));
	}else{
	tilemap_set(global.collision_tile_above_player,TILES.UPLEFT, (xx+1),(yy-1));		
	tilemap_set(global.collision_tile_below_player,TILES.DOWNRIGHT, (xx),(yy-1));
	tilemap_set(global.collision_tile_below_player,TILES.LEFT, (xx+1),(yy));
	}
}else{
//if nothing up or down, but there is one to the right..
if(up_right && down_right)
{
tilemap_set(global.collision_tile_below_player,TILES.LEFT, (xx+1),(yy));	
}else if(!up_right)
{
tilemap_set(global.collision_tile_below_player,TILES.LEFT, (xx+1),(yy));
tilemap_set(global.collision_tile_above_player,TILES.UPLEFT, (xx+1),(yy-1));
}else if(!down_right)
{
tilemap_set(global.collision_tile_below_player,TILES.DOWNLEFT, (xx+1),(yy));
}

}
            }else if (left) {
                if (down) {
				if(down_left)
				{
                    tilemap_set(global.collision_tile_below_player,TILES.CDOWNLEFT, (xx-1),(yy));
					tilemap_set(global.collision_tile_below_player,TILES.RIGHT, (xx-1),(yy-1));		
					tilemap_set(global.collision_tile_above_player,TILES.UP, (xx),(yy));
					}else{
					tilemap_set(global.collision_tile_below_player,TILES.DOWNRIGHT, (xx-1),(yy));		
					tilemap_set(global.collision_tile_above_player,TILES.UPLEFT, (xx),(yy));
					}
}else if(up)
{
	if(up_left)
	{
	tilemap_set(global.collision_tile_below_player,TILES.CUPLEFT, (xx-1),(yy-1));
	tilemap_set(global.collision_tile_below_player,TILES.RIGHT, (xx-1),(yy));		
	tilemap_set(global.collision_tile_below_player,TILES.DOWN, (xx),(yy-1));
	}else{
	tilemap_set(global.collision_tile_above_player,TILES.UPRIGHT, (xx-1),(yy-1));		
	tilemap_set(global.collision_tile_below_player,TILES.DOWNLEFT, (xx),(yy-1));
	}
}else{
//if nothing up or down, but there is one to the right..
if(up_left && down_left)
{
tilemap_set(global.collision_tile_below_player,TILES.RIGHT, (xx-1),(yy));	
}else if(!up_left)
{
tilemap_set(global.collision_tile_below_player,TILES.RIGHT, (xx-1),(yy));
tilemap_set(global.collision_tile_above_player,TILES.UPRIGHT, (xx-1),(yy-1));
}else if(!down_left)
{
tilemap_set(global.collision_tile_below_player,TILES.DOWNRIGHT, (xx-1),(yy));
}

}

}else if(up && up_right && up_left)
{
tilemap_set(global.collision_tile_below_player,TILES.DOWN, (xx),(yy-1));
}else if(down && down_right && down_left)
{
tilemap_set(global.collision_tile_above_player,TILES.UP, (xx),(yy));
}
}
}
}

