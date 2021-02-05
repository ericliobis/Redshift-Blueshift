/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var offset = 4;
txt = "You have completed a great game. Try to get an even higher score!"
var xx = 1440/2;
var yy = 850/2;
col = c_white;
	draw_set_color(c_black);
	draw_text_ext(xx-offset,yy,txt, -1, 1200);
	draw_text_ext(xx+offset,yy,txt, -1, 1200);
	draw_text_ext(xx,yy-offset,txt, -1, 1200);
	draw_text_ext(xx,yy+offset,txt, -1, 1200);
	draw_set_color(col);
	draw_text_ext(xx,yy,txt, -1, 1200);
	draw_set_halign(fa_left);
draw_set_valign(fa_center);
txt = "Your Score: " + string(o_sp_vars.sp_score);
var xx = 100;
var yy = 650;
col = c_white;
	draw_set_color(c_black);
	draw_text_ext(xx-offset,yy,txt, -1, 1000);
	draw_text_ext(xx+offset,yy,txt, -1, 1000);
	draw_text_ext(xx,yy-offset,txt, -1, 1000);
	draw_text_ext(xx,yy+offset,txt, -1, 1000);
	draw_set_color(col);
	draw_text_ext(xx,yy,txt, -1, 1000);
txt = "Highscore: " + string(o_sp_vars.sp_highscore);
var xx = 100;
var yy = 750;
col = c_white;
	draw_set_color(c_black);
	draw_text_ext(xx-offset,yy,txt, -1, 1000);
	draw_text_ext(xx+offset,yy,txt, -1, 1000);
	draw_text_ext(xx,yy-offset,txt, -1, 1000);
	draw_text_ext(xx,yy+offset,txt, -1, 1000);
	draw_set_color(col);
	draw_text_ext(xx,yy,txt, -1, 1000);	

	draw_set_font(fMenu);
	txt = "Press Space or A to Return"
var xx = 100;
var yy = 1000;
col = c_white;
	draw_set_color(c_black);
	draw_text_ext(xx-offset,yy,txt, -1, 1200);
	draw_text_ext(xx+offset,yy,txt, -1, 1200);
	draw_text_ext(xx,yy-offset,txt, -1, 1200);
	draw_text_ext(xx,yy+offset,txt, -1, 1200);
	draw_set_color(col);
	draw_text_ext(xx,yy,txt, -1, 1200);		
	
	
	draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fMenu);	
	var offset = 4;
txt = "Conglaturation !!!"
var xx = 1440/2;
var yy = 150;
col = c_white;
	draw_set_color(c_black);
	draw_text_ext(xx-offset,yy,txt, -1, 1400);
	draw_text_ext(xx+offset,yy,txt, -1, 1400);
	draw_text_ext(xx,yy-offset,txt, -1, 1400);
	draw_text_ext(xx,yy+offset,txt, -1, 1400);
	draw_set_color(col);
	draw_text_ext(xx,yy,txt, -1, 1400);
	