/// @description Gui/Vars/Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 100;

start_offset = 750
menu_x = gui_width+ start_offset;
menu_y = gui_height-gui_margin;
menu_x_target = gui_width-gui_margin;
menu_speed = 35;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[3] = "Single Player";
menu[2] = "2 v 2 Multiplayer";

menu[1] = "How To Play";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 3;

title_itemheight = font_get_size(fMenu1);
title_speed = 20;
title_x = -start_offset;
title_y = title_itemheight+gui_margin;
title_x_target = gui_margin;

gp_set = true;