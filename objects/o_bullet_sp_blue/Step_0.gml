frametrav++;
floor_colorer_blue(x,y)
if (move_bullet(velocity, bullet_size)||frametrav>range) instance_destroy()
//check for hitting a player
if(place_meeting(x,y,o_singleplayer) && o_singleplayer.alive)
{
	with(o_singleplayer)
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