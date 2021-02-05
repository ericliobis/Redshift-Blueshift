frametrav++;
floor_colorer_red(x,y)
if (move_bullet(velocity, bullet_size)||frametrav>range) instance_destroy()
//check for hitting a player
if(place_meeting(x,y,o_playerb1) && o_playerb1.alive)
{
	with(o_playerb1)
	{
	explode("RED")
		alive = false;
	respawntimer = 0;
	visible = false;
	//place the gui elements?
	
	}
	instance_destroy()
}
if(place_meeting(x,y,o_playerb11) && o_playerb11.alive)
{
		with(o_playerb11)
	{
	explode("RED")
	alive = false;
	respawntimer = 0;
	visible = false;
	}
	instance_destroy()
}


floor_colorer_red(x,y)