/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var offset = 4;
txt = "Redshift/Blueshift is a territory control game. In singleplayer, your mission is to reach the goal percentage before time runs out. In multiplayer, the goal is to have more territory in your color by the end of the 3 minutes. Your bullets change the color of the ground under them. For keyboard controls, use WASD to move and arrow keys you shoot. The Space Bar confirms and escape returns. For controllers, the left joystick moves and the right joystick shoots while A confirms and B returns. It's a pretty simple game, just play it and you'll figure out the nuances."
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
txt = "Dummies move in straight lines and shoot slowly in random directions."
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
txt = "Emitters turn large portions of ground around them their color and do not explode when killed."
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
txt = "Pros shoot faster and will alway shoot in the direction that turns the most tiles their color."
var xx = 100;
var yy = 850;
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
draw_set_font(fMenu1);	
	var offset = 4;
txt = "How To Play"
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
	