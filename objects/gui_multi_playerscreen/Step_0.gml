/// @description Insert description here
// You can write your code in this editor
if(able)
{
if(p1r && p2r && p3r && p4r)
{
	allr= true;
}
if(((gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(1,gp_face1)) || gamepad_button_check_pressed(2,gp_face1) || gamepad_button_check_pressed(3,gp_face1)) && allr)
{
	able = false;
	o_Music.nextsong = irandom_range(1,5);
	o_Music.transout = true;
	o_Music.start = true;
	SlideTransition(TRANS_MODE.GOTO,r_2v2);
}
if(gamepad_button_check_pressed(0,gp_face1))
{
	p1r = true;
}
if(gamepad_button_check_pressed(1,gp_face1))
{
	p2r = true;
}
if(gamepad_button_check_pressed(2,gp_face1))
{
	p3r = true;
}
if(gamepad_button_check_pressed(3,gp_face1))
{
	p4r = true;
}

if(keyboard_check(vk_escape)||gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(1,gp_face2) || gamepad_button_check_pressed(2,gp_face2)|| gamepad_button_check_pressed(3,gp_face2))
{
	
	SlideTransition(TRANS_MODE.GOTO,r_Menu);
}
}