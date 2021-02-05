if(o_GUI_single.game_active)
{
velocity[V2X] = xdir*max_velocity[V2X];
velocity[V2Y] = ydir*max_velocity[V2Y];
move_and_contact_tiles_dummy(velocity, player_size);
if(shootingtimer<shootingdelay)
{
	shootingtimer++;
}else{
	shootingtimer = 0;
	var shooty = 0;
	var shootx = 0;
	//let's pick the direction that gives us the most territory covered.
	var i_chosen = 0;
	var number_covered = 0;
	var zeroind = 0;
	for(var i=0;i<4;i++)
	{
		var current_num = 0;
		var xdirshoot = 0;
		var ydirshoot = 0;
		switch(i) 
		{
			case 0: default: xdirshoot = -1; ydirshoot = 0; break;
			case 1: default: xdirshoot = 1; ydirshoot = 0; break;
			case 2: default: xdirshoot = 0; ydirshoot = 1; break;
			case 3: default: xdirshoot = 0; ydirshoot = -1; break;
		}
		for( var j= 0;j<10;j++)
		{
			if(tilemap_get(global.collision_tile_below_player,(((x*2) div (TILE_SIZE))+xdirshoot*j),(((y*2) div (TILE_SIZE))+ydirshoot*j))==6 || tilemap_get(global.collision_tile_below_player,(((x*2) div (TILE_SIZE))+xdirshoot*j),(((y*2) div (TILE_SIZE))+ydirshoot*j)) == 18)
{	
	current_num++;

}

		}
		if(current_num==0)
		{
			zeroind++;
		}
		if(current_num>number_covered)
		{
			i_chosen = i;
			number_covered = current_num;
			
		}
		
	}
	if(zeroind==4)
	{
		i_chosen = irandom_range(0,3);
	}
	switch(i_chosen) 
		{
			case 0: default: shootx = -1; shooty = 0; break;
			case 1: default: shootx = 1; shooty = 0; break;
			case 2: default: shootx = 0; shooty = 1; break;
			case 3: default: shootx = 0; shooty = -1; break;
		}
		if(shooty!=0)
	{
	with(instance_create_layer(x,y+shooty*player_size[1]/2,"Bullets",o_bullet_sp_blue))
	{
		speed = 25;
		image_angle = -90*shooty;
		direction = image_angle;
	}
	}else if (shootx != 0)
	{
		with(instance_create_layer(x+shootx*player_size[1]/2,y,"Bullets",o_bullet_sp_blue))
		{
			speed = 25;
			image_angle = 90-90*shootx;
		direction = image_angle;
		}
	}
}
}