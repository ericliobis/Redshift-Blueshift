draw_sprite(s_hline,0,0,535);
draw_sprite(s_vline,0,715,0);
if(o_playerb1.alive == false)
{
	draw_set_alpha(0.4);
	draw_sprite(s_deathscreen,0,0,540);
	draw_set_alpha(1);
	draw_set_halign(fa_center)
	draw_set_color(c_white);
	draw_text_transformed(360,540+540/2,o_playerb1.timeinsec,1,1,0);
	draw_set_halign(fa_left)
}

if(o_playerb11.alive == false)
{
	draw_set_alpha(0.4);
	draw_sprite(s_deathscreen,0,720,540);
	draw_set_alpha(1);
		draw_set_halign(fa_center)
		draw_set_color(c_white);
	draw_text_transformed(360+720,540+540/2,o_playerb11.timeinsec,1,1,0);
	draw_set_halign(fa_left)
}

if(o_player.alive == false)
{
	draw_set_alpha(0.4);
	draw_sprite(s_deathscreen,0,0,0);
	draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
	draw_text_transformed(360,540/2,o_player.timeinsec,1,1,0);
	draw_set_halign(fa_left)
}

if(o_player2.alive == false)
{
	draw_set_alpha(0.4);
	draw_sprite(s_deathscreen,0,720,0);
	draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
	draw_text_transformed(360+720,540/2,o_player2.timeinsec,1,1,0);
	draw_set_halign(fa_left)
}