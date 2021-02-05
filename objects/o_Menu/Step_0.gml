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
}

if((menu_x>gui_width+start_offset-50) && (menu_committed != -1))
{
	switch(menu_committed){
	case 3: default: o_sp_vars.level = 1; o_sp_vars.xsize = 26; o_sp_vars.ysize = 26; o_sp_vars.sp_score = 0;SlideTransition(TRANS_MODE.GOTO,r_Menu_sp); break;
	case 2: SlideTransition(TRANS_MODE.GOTO,r_2v2_Menu);break;
	case 1: SlideTransition(TRANS_MODE.GOTO,r_htp);break;
	case 0: game_end(); break;
		
	}
}