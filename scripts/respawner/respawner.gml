//10 tries before it fails
limit_attempts = 100;
distlim = 720;
worldsize_x = 26;
worldsize_y = 26;
x_lim = worldsize_x;
y_lim = worldsize_y;
//
for(i=0;i<limit_attempts;i++)
{
x_test = 0;
y_test = 0;
testspot = global.world[# x_test, y_test];
while(testspot != 6 && testspot != 18 && testspot != 24)
{

x_test = irandom(x_lim-2)+1;
y_test = irandom(y_lim-2)+1;
testspot = global.world[# x_test, y_test];
}
//We're generated a viable spot, now see if it's too close to a player.
x = (x_test+0.5)*TILE_SIZE
y = (y_test+0.5)*TILE_SIZE
if(((sqrt((o_player.x-x)*(o_player.x-x)+(o_player.y-y)*(o_player.y-y))<distlim)+ (sqrt((o_player2.x-x)*(o_player2.x-x)+(o_player2.y-y)*(o_player2.y-y))<distlim)+ (sqrt((o_playerb1.x-x)*(o_playerb1.x-x)+(o_playerb1.y-y)*(o_playerb1.y-y))<distlim)+ (sqrt((o_playerb11.x-x)*(o_playerb11.x-x)+(o_playerb11.y-y)*(o_playerb11.y-y))<distlim))>1)
{
	

	continue;
}else
{
	break;
}
}
x = (x_test+0.5)*TILE_SIZE
y = (y_test+0.5)*TILE_SIZE