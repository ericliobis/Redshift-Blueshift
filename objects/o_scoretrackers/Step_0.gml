/// @description Insert description here
// You can write your code in this editor
if(game_active)
{
timer--;
timer_secs = ceil(timer/60);
if(timer<=0)
{
	//gameend
	timer = 0
	game_active = false;
	var finalscore = calc_colors();
	redscore = finalscore[0];
	bluescore = finalscore[1];
}
}else{
	if(!gamestart)
	{
		starttimer--;
		if(starttimer<=0)
		{
			game_active = true;
			gamestart = true;
		}
		
	}
}
if(continue_multi && able)
{
	if((gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(1,gp_face1) || gamepad_button_check_pressed(2,gp_face1) || gamepad_button_check_pressed(3,gp_face1)))
{
		o_Music.nextsong = irandom_range(1,5);
	o_Music.transout = true;
	o_Music.start = true;
	able = false;
	SlideTransition(TRANS_MODE.GOTO,r_2v2);
}
		if((gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(1,gp_face2) || gamepad_button_check_pressed(2,gp_face2) || gamepad_button_check_pressed(3,gp_face2)))
{
	able = false;
		o_Music.nextsong = 0;
	o_Music.transout = true;
	o_Music.start = true;
	SlideTransition(TRANS_MODE.GOTO,r_2v2_Menu);
}
}
