//@param tile_map_id

//@param point_arrays...

color = "RED";
//Found variable
var tilecheck = 6
if(color == "RED")
{
	tilecheck = 24
}else
{
	tilecheck = 18
}
//for the point arrays.
xm = 0
ym = 0
if(direction == 0)
{
	xm = 1;
}	else if(direction == 180)
{
	xm = -1;
} else if(direction == 90)
{
	ym = -1;
} else if (direction == 270)
	{
		ym = 1;
	}

//color tiles

if(tilemap_get(global.collision_tile_below_player,(argument[0]*2) div (TILE_SIZE),((argument[1]*2) div (TILE_SIZE))) == 6||tilemap_get(global.collision_tile_below_player,(argument[0]*2) div (TILE_SIZE),((argument[1]*2) div (TILE_SIZE))) == tilecheck)
{

	tilemap_set(global.collision_tile_below_player,18,(argument[0]*2) div (TILE_SIZE),((argument[1]*2) div (TILE_SIZE)));

}

if(tilemap_get(global.collision_tile_below_player,(((argument[0]-xm*20)*2) div (TILE_SIZE)),(((argument[1]-ym*20)*2) div (TILE_SIZE))) == 6||tilemap_get(global.collision_tile_below_player,((argument[0]-xm*20)*2) div (TILE_SIZE),(((argument[1]-ym*20)*2) div (TILE_SIZE))) == tilecheck)
{

	tilemap_set(global.collision_tile_below_player,18,((argument[0]-xm*20)*2) div (TILE_SIZE),(((argument[1]-ym*20)*2) div (TILE_SIZE)));

}

