/// @description Initialize Variables

velocity = [0,0];
max_velocity = [6,6];
player_size = [32,32]
shootingtimer = 0;
shootingdelay = 15;
color = "blue";
xdir = irandom_range(-1,1);
if(xdir!=0)
{
ydir = irandom_range(-1,1);
}else{
	ydir = irandom_range(0,1)*2-1;
}
respawner_sp();
shootdir = 0;