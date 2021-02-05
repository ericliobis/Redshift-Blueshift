/// @description Size Variable and mode Setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h*0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
}

mode = TRANS_MODE.OFF;
percent = 0;
target = room;
	
	