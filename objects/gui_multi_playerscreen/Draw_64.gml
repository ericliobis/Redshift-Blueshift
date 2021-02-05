/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
	draw_set_color(c_black);
	xx = 360;
yy = 150;
offset = 2;
txt = "Player 1";
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
		draw_set_color(c_black);
	xx = 360*3;
yy = 150;
offset = 2;
txt = "Player 2";
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
			draw_set_color(c_black);
	xx = 360*3;
yy = 150+540;
offset = 2;
txt = "Player 4";
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
	
				draw_set_color(c_black);
	xx = 360;
yy = 150+540;
offset = 2;
txt = "Player 3";
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
		draw_set_color(c_black);
	xx = 360;
yy = 150+270;
offset = 2;
if(!p1r)
{
txt = "Press A";
}else{
	txt = "READY!";
}
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
		draw_set_color(c_black);
	xx = 360*3;
yy = 150+270;
offset = 2;
if(!p2r)
{
txt = "Press A";
}else{
	txt = "READY!";
}
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
			draw_set_color(c_black);
	xx = 360;
yy = 150+540+270;
offset = 2;
if(!p3r)
{
txt = "Press A";
}else{
	txt = "READY!";
}
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
	
				draw_set_color(c_black);
	xx = 360*3;
yy = 150+540+270;
offset = 2;
if(!p4r)
{
txt = "Press A";
}else{
	txt = "READY!";
}
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
					draw_set_color(c_black);
	xx = 1440/2;
yy = 1080/2;
offset = 2;
if(!allr)
{
txt = "4 Controllers Required";
}else{
	txt = "Press A to Start!"
}
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_gray);
	draw_text(xx,yy,txt);