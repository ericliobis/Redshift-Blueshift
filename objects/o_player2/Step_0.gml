///@description Player Movement	
if(alive && o_scoretrackers.game_active)
{
var x_input = 0// = (keyboard_check(ord("D"))-keyboard_check(ord("A")))
var y_input = 0// = (keyboard_check(ord("S"))-keyboard_check(ord("W")))


var shooty = 0// = keyboard_check(vk_down)-keyboard_check(vk_up)
var shootx = 0// = keyboard_check(vk_right)-keyboard_check(vk_left)

var dead_zone = 0.3;

if(abs(gamepad_axis_value(controller_num,gp_axislh))>dead_zone)
{
	x_input = gamepad_axis_value(controller_num,gp_axislh)/abs(gamepad_axis_value(controller_num,gp_axislh))
	
}
if(abs(gamepad_axis_value(controller_num,gp_axislv))>dead_zone)
{
	y_input = gamepad_axis_value(controller_num,gp_axislv)/abs(gamepad_axis_value(controller_num,gp_axislv))
}

if(abs(gamepad_axis_value(controller_num,gp_axisrh))>dead_zone || abs(gamepad_axis_value(controller_num,gp_axisrv))>dead_zone)
{
	if(abs(gamepad_axis_value(controller_num,gp_axisrh))>abs(gamepad_axis_value(controller_num,gp_axisrv)))
	{
	shootx = gamepad_axis_value(controller_num,gp_axisrh)/abs(gamepad_axis_value(controller_num,gp_axisrh))
	}else{
		shooty = gamepad_axis_value(controller_num,gp_axisrv)/abs(gamepad_axis_value(controller_num,gp_axisrv))
	}
	
}

if(tilemap_get(global.collision_tile_below_player,(x*2) div (TILE_SIZE),((y*2) div (TILE_SIZE))) == 6)
{

	multi = 1;
	shootingdelay = 8;
	

}
if(tilemap_get(global.collision_tile_below_player,(x*2) div (TILE_SIZE),((y*2) div (TILE_SIZE))) == 18)
{

	multi = 1;
	shootingdelay = 6;
	

}
if(tilemap_get(global.collision_tile_below_player,(x*2) div (TILE_SIZE),((y*2) div (TILE_SIZE))) == 24)
{

	multi = 4/6;
	shootingdelay = 10;

}
//Vector variable
//horizontal movement
velocity[V2X] = x_input*max_velocity[V2X]*multi;
velocity[V2Y] = y_input*max_velocity[V2Y]*multi;

//Frition




//Move and contact tiles
if(x_input != 0 || y_input != 0)
{
	x_dir_shot = x_input
	y_dir_shot = y_input
}
move_and_contact_tiles(velocity, player_size);


//check for shooting
if((shooty !=0 || shootx!=0) && shootingtimer ==0)
{
	//activate a shot
	shootingtimer = shootingdelay
	if(shooty!=0)
	{
	with(instance_create_layer(x,y+shooty*player_size[1]/2,"Bullets",o_bullet))
	{
		speed = 25;
		image_angle = -90*shooty;
		direction = image_angle;
	}
	}else if (shootx != 0)
	{
		with(instance_create_layer(x+shootx*player_size[1]/2,y,"Bullets",o_bullet))
		{
			speed = 25;
			image_angle = 90-90*shootx;
		direction = image_angle;
		}
	}
}else if(shootingtimer>0){
shootingtimer--
}
}else if(!alive && o_scoretrackers.game_active)
{
//if you dead, let's get dat respawn on
if(respawntimer<respawntime)
{
	respawntimer++;
	timeinsec = ceil((respawntime-respawntimer)/60);
}else{
	respawner()
	alive = true
	visible = true;
	//add place to respawn at
}
	
}