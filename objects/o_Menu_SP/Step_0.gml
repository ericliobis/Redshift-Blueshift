/// @description Control Menu

menu_x += (menu_x_target - menu_x)/menu_speed;
title_x += (title_x_target - title_x)/title_speed;
//Keyboard Controls
var deadzone = 0.3;

if(menu_control)
{
	if(!gp_set && abs(gamepad_axis_value(0,gp_axislv))<deadzone)
	{
		gp_set = true;
	}
	if(keyboard_check_pressed(vk_up) || (gamepad_axis_value(0,gp_axislv)<-deadzone && gp_set))
	{
	menu_cursor ++;
	gp_set = false;
	if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down)|| (gamepad_axis_value(0,gp_axislv)>deadzone && gp_set))
	{
	menu_cursor --;
	gp_set = false;
	if(menu_cursor <0) menu_cursor = menu_items-1;
	}
	if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1))
	{
	menu_x_target = gui_width+start_offset;
	menu_committed = menu_cursor;
	menu_control = false;
	}
		if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_face2))
	{
		menu_x_target = gui_width+start_offset;
	menu_committed = 3;
	menu_control = false;
	}

}
if(able)
{
if((menu_x>gui_width+start_offset-50) && (menu_committed != -1))
{
	if(menu_committed!=3)
	{
		randomize();
			o_Music.nextsong = irandom_range(1,5);
	o_Music.transout = true;
	o_Music.start = true;
	}
	switch(menu_committed){
	case 3: SlideTransition(TRANS_MODE.GOTO,r_Menu);break;
	case 2: o_sp_vars.mode = 1;o_sp_vars.level_stats = o_sp_vars.level_stats_easy;SlideTransition(TRANS_MODE.GOTO,r_one);break;
	case 1: o_sp_vars.mode = 2;o_sp_vars.level_stats = o_sp_vars.level_stats_medium;SlideTransition(TRANS_MODE.GOTO,r_one);break;
	case 0: o_sp_vars.mode = 3;o_sp_vars.level_stats = o_sp_vars.level_stats_hard;SlideTransition(TRANS_MODE.GOTO,r_one); break;
		
	}
	able = false
}
}