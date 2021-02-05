/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_rectangle(0,0,1440,timer_h,false)
draw_set_color(c_white);
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(gamestart)
{
	if(game_active)
	{
		draw_set_color(c_white);
draw_text(timer_w/2,timer_h/2,"Time: " + string(timer_secs));
//calc percents
draw_set_halign(fa_left);
draw_text(600,timer_h/2,"Red: " + string(colors_per[0]));
draw_text(1000,timer_h/2,"Blue: " + string(colors_per[1]));
}else{

		


			draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0,0,1440,1080,false)
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(timer_w/2,timer_h/2,"Time: " + string(timer_secs));
//calc percents
draw_set_halign(fa_left);
draw_text(600,timer_h/2,"Red: " + string(colors_per[0]));
draw_text(1000,timer_h/2,"Blue: " + string(colors_per[1]));
			
		draw_set_halign(fa_center);
draw_set_valign(fa_center);
	draw_set_color(c_white);
	extratext = "";
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
			if(game_won)
			{
			if(paused_end && !counting)
			{
				pause_end_timer++
				if(pause_end_timer>=pause_num_delay)
				{
					counting = true;
				}
			}
			if(counting && !gap_timer && ! add_time)
			{

		if(percent_timer<percent_delay)
				{
					percent_timer++
					
					if(percent_timer >= percent_delay)
					{
						gap_timer = true;
						o_sp_vars.sp_score += (o_sp_vars.level_stats[(o_sp_vars.level-1),0]*o_sp_vars.level*o_sp_vars.mode);
						colors_per[0] = 0;
					}else{
						extratext = " + " + string(o_sp_vars.level_stats[(o_sp_vars.level-1),0]) + " * " +string(o_sp_vars.level) + " * " + string(o_sp_vars.mode);
					}
				}
					
				
			} else if(gap_timer && !add_time)
			{
				if(gap_timer_delay<gap_delay)
				{
					gap_timer_delay++
					if(gap_timer_delay>= gap_delay)
					{
						add_time = true;
					}
				}
			}else if(add_time){
				if(timer_secs>0)
				{
					o_sp_vars.sp_score++;
					timer_secs--;
				}else{
					continue_multi = true;
				}
				
			
			
			}
	
			draw_text(1440/2,1080/2,"Score: " + string(o_sp_vars.sp_score) + extratext);
			
			if(continue_multi)
			{
				draw_text(1440/2,1080/2+100,"Press A or Space to Continue");
			}
			}else{
				//if game lost
				
				
				
				
				
				
				
				
				if(paused_end && !counting)
			{
				pause_end_timer++
				if(pause_end_timer>=pause_num_delay)
				{
					counting = true;
				}
			}
			if(counting && !gap_timer && ! add_time)
			{
				//add red perc.
				if(colors_per[0] <=0)
					{
						gap_timer = true;
						
						
						
					}else{
						o_sp_vars.sp_score ++;
						colors_per[0]--;
					}
				
					
				
			} else if(gap_timer && !add_time)
			{
				if(gap_timer_delay<gap_delay)
				{
					gap_timer_delay++
					if(gap_timer_delay>= gap_delay)
					{
						add_time = true;
					}
				}
			}else if(add_time){
								//add red perc.
				if(colors_per[1] <=0)
					{
						continue_multi = true;
						
						
						
					}else{
						o_sp_vars.sp_score --;
						colors_per[1]--;
					}
			
			
			}
	
			draw_text(1440/2,1080/2,"Score: " + string(o_sp_vars.sp_score));
			
			if(continue_multi)
			{
				draw_text(1440/2,1080/2+100,"Press A to Return to Menu");
			}
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			}
			//todo: add in end game to restart.
		}



	
	}
} else if(!gamestart && !start_menu) {

	draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_rectangle(0,0,1440,1080,false)
	draw_set_alpha(1);
		draw_set_color(c_white);
	draw_text(1440/2,1080/2,ceil(starttimer/60));
}else{
	//if we're in the menu screen
		draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_rectangle(0,0,1440,1080,false)
	draw_set_alpha(1);
		draw_set_color(c_white);
	draw_text(1440/2,1080/2-150,"Level " + string(o_sp_vars.level));
	draw_text(1440/2,1080/2-50,"Goal:  " + string(o_sp_vars.level_stats[(o_sp_vars.level-1),0]) + "%");
	text_enemies = "";
	if(o_sp_vars.level_stats[(o_sp_vars.level-1),2] = 1)
	{
		text_enemies = "Dummies";
	}
		if(o_sp_vars.level_stats[(o_sp_vars.level-1),3] = 1)
	{
		if(text_enemies == "")
		{
		text_enemies = "Emitters";
		} else{
			text_enemies += ", Emitters";
			
		}
	}
	
			if(o_sp_vars.level_stats[(o_sp_vars.level-1),4] = 1)
	{
		if(text_enemies == "")
		{
		text_enemies = "Pros";
		} else{
			text_enemies += ", Pros";
			
		}
	}
	draw_text(1440/2,1080/2+50,text_enemies);
	draw_text(1440/2,1080/2+150,"will spawn every " + string(o_sp_vars.level_stats[(o_sp_vars.level-1),1])+ " seconds.");
	//draw_text(1440/2,1080/2,"Level " + string(o_sp_vars.level));
	
}
	


if(o_singleplayer.alive == false && game_active)
{
	draw_set_alpha(0.4);
	draw_set_color(c_black);
	draw_rectangle(0,75,1440,1080,false);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(fMenu);
	draw_text_transformed(720,540,o_singleplayer.timeinsec,1,1,0);
	draw_set_halign(fa_left)
}