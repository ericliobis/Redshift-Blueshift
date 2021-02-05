if(game_active)
{
timer--;
timer_secs = ceil(timer/60);
colors = calc_colors();
colors_per[0] = floor((colors[0]/colors[2])*100);
colors_per[1] = floor((colors[1]/colors[2])*100);
if(timer<=0)
{
	//if the timer runs out
	game_active = false;
}
//check to achieve goal
if(colors_per[0] >= o_sp_vars.level_stats[(o_sp_vars.level-1),0])
{
	game_active = false;
	game_won = true;
}else{


//spawn enemies;
if(enemy_timer<enemy_timer_max)
{
	enemy_timer++;
}else{
	enemy_timer = 0;
	randomize();
	random_spawner = irandom_range(0,5);
	tospawn = 0;
	//all three
	if(enemy_dummy && enemy_emitter && enemy_pro)
	{
		switch(random_spawner)
		{
		case 0: tospawn = 0;break;
		case 1: tospawn = 0;	break;
		case 2: tospawn = 1;	break;
		case 3: tospawn = 1;	break;
		case 4: tospawn = 2;	break;
		case 5: tospawn = 2;break;	
		}
		
	}
	//just one
		if(enemy_dummy || enemy_emitter || enemy_pro)
	{
		if(enemy_dummy == 1)
		{
			tospawn = 0;
		}
		if(enemy_emitter == 1)
		{
			tospawn = 1;
		}
		if(enemy_pro == 1)
		{
			tospawn = 2;
		}
		
	}
	//two bad boyz

		if(enemy_dummy && enemy_emitter && !enemy_pro)
		{
		switch(random_spawner)
		{
		case 0: tospawn = 0;break;
		case 1: tospawn = 0;	break;
		case 2: tospawn = 0;	break;
		case 3: tospawn = 1;	break;
		case 4: tospawn = 1;	break;
		case 5: tospawn = 1;break;	
		}
		}
				if(enemy_dummy &&!enemy_emitter && enemy_pro)
		{
		switch(random_spawner)
		{
		case 0: tospawn = 0;break;
		case 1: tospawn = 0;	break;
		case 2: tospawn = 0;	break;
		case 3: tospawn = 2;	break;
		case 4: tospawn = 2;	break;
		case 5: tospawn = 2;break;	
		}
		}
				if(!enemy_dummy &&enemy_emitter && enemy_pro)
		{
		switch(random_spawner)
		{
		case 0: tospawn = 2;break;
		case 1: tospawn = 2;	break;
		case 2: tospawn = 2;	break;
		case 3: tospawn = 1;	break;
		case 4: tospawn = 1;	break;
		case 5: tospawn = 1;	break;
		}
		}
			switch(tospawn)
		{
		case 0: default: instance_create_layer(0,0,"Instances_1",o_dummy);break;
		case 1: instance_create_layer(0,0,"Instances_1",o_emit);break;	
		case 2: instance_create_layer(0,0,"Instances_1",o_pro);	break;
		}
}
}
}else{
	if(!gamestart && !start_menu)
	{
		starttimer--;
		if(starttimer<=0)
		{
			game_active = true;
			gamestart = true;
		}
		
	}else if(start_menu){
	//look for A press to start game
	if(keyboard_check(vk_space) || (gamepad_button_check_pressed(0,gp_face1)))
	{
		start_menu = false;
	}
		
	}
}
if(activemenu && continue_multi && game_won && (keyboard_check(vk_space) || (gamepad_button_check_pressed(0,gp_face1))))
{
	o_sp_vars.level++;
	activemenu = false;
	if(o_sp_vars.level<15)
	{
		o_sp_vars.xsize = o_sp_vars.level_stats[(o_sp_vars.level-1),5];
	o_sp_vars.ysize = o_sp_vars.level_stats[(o_sp_vars.level-1),6];
	//new music
	randomize();
	o_Music.nextsong = irandom_range(1,5);
	show_debug_message(o_Music.nextsong);
	o_Music.transout = true;
	o_Music.start = true;
	SlideTransition(TRANS_MODE.GOTO,r_one);
	}else{
			if(o_sp_vars.sp_score>o_sp_vars.sp_highscore)
{
	o_sp_vars.sp_highscore = o_sp_vars.sp_score;
}
	
		SlideTransition(TRANS_MODE.GOTO,r_end);
	}
}
if(able)
{
if(continue_multi && !game_won && (keyboard_check(vk_space) || (gamepad_button_check_pressed(0,gp_face1))))
{
	if(o_sp_vars.sp_score>o_sp_vars.sp_highscore)
{
	o_sp_vars.sp_highscore = o_sp_vars.sp_score;
}
able = false;
		o_Music.nextsong = 0;
	o_Music.transout = true;
	o_Music.start = true;
SlideTransition(TRANS_MODE.GOTO,r_Menu);	

}
}