frametrav++;
floor_colorer_blue(x,y)
if (move_bullet(velocity, bullet_size)||frametrav>range) instance_destroy()
if(place_meeting(x,y,o_player)&& o_player.alive)
{
		with(o_player)
	{
	explode("BLUE")
		alive = false;
	respawntimer = 0;
	visible = false;
	//place the gui elements?
	
	}
	instance_destroy()
}
if(place_meeting(x,y,o_player2)&& o_player2.alive)
{
		with(o_player2)
	{
	explode("BLUE")
		alive = false;
	respawntimer = 0;
	visible = false;
	//place the gui elements?
	
	}
	instance_destroy()
}
floor_colorer_blue(x,y)