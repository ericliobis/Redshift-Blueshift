/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_rectangle(1440/2-timer_w,1080/2-timer_h,1440/2+timer_w,1080/2+timer_h,false)
draw_set_color(c_white);
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(gamestart)
{
	if(game_active)
	{
draw_text(1440/2,1080/2,timer_secs);
	}else{
		
			
		draw_set_halign(fa_center);
draw_set_valign(fa_center);
		


			draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0,0,1440,1080,false)
	draw_set_alpha(1);
	draw_set_color(c_white);
	if(!paused_end && !counting)
		{
			draw_text(1440/2,1080/2,"GAME END!");
			game_end_timer++;
			if(game_end_timer>=game_end_delay)
			{
				paused_end = true;
			}
		}else 
		{
			if(paused_end && !counting)
			{
				pause_end_timer++
				if(pause_end_timer>=pause_num_delay)
				{
					counting = true;
				}
			}
			if(counting)
			{
			if(bscount<bluescore)
			{
				bscount++;
			}
				if(rscount<redscore)
			{
				rscount++;
			}
			}
			if(bscount >= bluescore && rscount >= redscore)
			{
				continue_multi = true
			}
			
			draw_text(1440/2,1080/2," Red: " + string(rscount) + " | Blue: " + string(bscount));
			
			if(continue_multi)
			{
				draw_text(1440/2,1080/2+100,"Press A to Play Again");
				draw_text(1440/2,1080/2+200,"Press B to Return to Menu");
			}
			//todo: add in end game to restart.
		}
	
	
	}
}else{

	draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_rectangle(0,0,1440,1080,false)
	draw_set_alpha(1);
		draw_set_color(c_white);
	draw_text(1440/2,1080/2,ceil(starttimer/60));
}
