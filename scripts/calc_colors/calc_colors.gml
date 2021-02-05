/// @desc calc_colors

//go through all the spots and determine if red or blue
var color_nums = [0,0,0];

for(i =0; i<tilemap_get_width(global.collision_tile_below_player);i++)
{
	for(j =0; j<tilemap_get_height(global.collision_tile_below_player);j++)
{
if(tilemap_get(global.collision_tile_below_player,i,j) == 18)
{
	color_nums[0]++;
}
if(tilemap_get(global.collision_tile_below_player,i,j) == 24)
{
	color_nums[1]++;
}
if(tilemap_get(global.collision_tile_below_player,i,j) == 24 || tilemap_get(global.collision_tile_below_player,i,j) == 18 || tilemap_get(global.collision_tile_below_player,i,j) == 6)
{
	color_nums[2]++;
}
}
}


return color_nums
