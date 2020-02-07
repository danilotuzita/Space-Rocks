button_options = 3;
columns = 1;
options_in_column[0] = 3;
// options_in_column[1] = 1;

auto_line_up = false;

setup_button_ext( 0, 0,   0,  0,                  spr_empty, 0,  true, 64, 64, 1,  0, status_menu_cancel, main_hud.hud_acc_color,  true, do_nothing);
setup_button_ext(-1, 0,   0,  0, global.player.sprite_index, 0, false, 32, 32, 2, 90,         do_nothing,     main_hud.hud_color, false, do_nothing);
setup_button_ext( 1, 0, -32, 32,                  spr_empty, 0,  true, 64, 64, 1,  0, status_menu_cancel, main_hud.hud_acc_color,  true, do_nothing);

/*
// WIP
yld_scr = status_menu_yld_draw_lines;
yld_anim = script_execute(yld_scr, 0);
alarm[HUD_MENU.ALARM_CUSTOM_YLD_ANIM] = 1;
// WIP
*/
setup = true;
