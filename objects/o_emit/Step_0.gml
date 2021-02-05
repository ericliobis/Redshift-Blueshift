if(o_GUI_single.game_active)
{
velocity[V2X] = xdir*max_velocity[V2X];
velocity[V2Y] = ydir*max_velocity[V2Y];
move_and_contact_tiles_emitter(velocity, player_size);
explode("BLUE");
}