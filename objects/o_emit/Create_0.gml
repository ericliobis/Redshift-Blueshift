/// @description Initialize Variables

velocity = [0,0];
max_velocity = [3,3];
player_size = [32,32]
shootingtimer = 0;
shootingdelay = 20;
color = "blue";
xdir = irandom_range(0,1)*2-1;
ydir = irandom_range(0,1)*2-1;
respawner_sp();
shootdir = 0;