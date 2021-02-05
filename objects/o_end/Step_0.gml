if(able)
{
if(keyboard_check(vk_space)||gamepad_button_check_pressed(0,gp_face1))
{
	able = false;
	o_Music.nextsong = 0;
	o_Music.transout = true;
	o_Music.start = true;
	SlideTransition(TRANS_MODE.GOTO,r_Menu);
}
}