//@param color
color=argument[0]
colornum = 6
if(color == "RED")
{
	colornum = 18;
}else
{
	colornum = 24;
}
for(x1 = -3;x1<4;x1++)
{
	for(y1 = -3;y1<4;y1++)
	{
		tilenum = tilemap_get(global.collision_tile_below_player,(x*2) div (TILE_SIZE)+x1,((y*2) div (TILE_SIZE))+y1);
		if(tilenum == 18 || tilenum == 24 || tilenum == 6){
tilemap_set(global.collision_tile_below_player,colornum,(x*2) div (TILE_SIZE)+x1,((y*2) div (TILE_SIZE))+y1);
		}
	}
}
