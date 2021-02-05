timer_mins = 3;
timer = timer_mins*60*60;

timer_secs = timer/60;
redscore = 0;
activemenu = true;
rscount = 0;
bscount = 0;
bluescore = 0;
timer_w = 300;
timer_h = 75;
game_active = false;
starttimer = 5*60;
gamestart = false;
game_end_delay = 4*60;
game_end_timer=0;
pause_num_delay = 2*60;
pause_end_timer = 0;
counting = false;
paused_end = false;
continue_multi = false;
colors = [0,0,0];
colors_per = [0,0];
able= true;
//start and end menu vars
start_menu = true;
game_won = false;

//end_menu_animations

add_percent = false;
percent_timer = 0;
percent_delay = 3*60;
gap_timer = false;
gap_timer_delay = 0;
gap_delay = 2*60;
add_time = false;

//enemies vars


enemy_timer_max =  o_sp_vars.level_stats[(o_sp_vars.level-1),1]*60;
enemy_timer = enemy_timer_max;
enemy_dummy =  o_sp_vars.level_stats[(o_sp_vars.level-1),2];
enemy_emitter =  o_sp_vars.level_stats[(o_sp_vars.level-1),3];
enemy_pro =  o_sp_vars.level_stats[(o_sp_vars.level-1),4];
enemy_start = o_sp_vars.level_stats[(o_sp_vars.level-1),7];

//generate a  few bad bois
for(var i=0;i<enemy_start;i++)
{
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
//get them bumping beats