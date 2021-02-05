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
	shootdir = irandom_range(0,3);
	var shooty = 0;
	var shootx = 0;
	switch(shootdir){
		case 0: default: shootx = 1; break;
		case 1: default: shooty = 1; break;
		case 2: default: shootx = -1; break;
		case 3: default: shooty = -1; break;
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