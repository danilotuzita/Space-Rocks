parent = -1;
// color ref: https://mycolor.space/?hex=%23C8FFC8&sub=1
// color ref: https://paletton.com/#uid=22P0u0k6V++00++00++dJ+ZjB+o
bkg_color = hex_to_color($282828);
hud_color = hex_to_color($C8FFC8); // main color // https://superuser.com/questions/361297/what-colour-is-the-dark-green-on-old-fashioned-green-screen-computer-displays
hud_acc_color = hex_to_color($FF6363); // accent color
hud_alpha = .5;
screen_center = window_get_width() / 2;
hud_mvt_shake_bkg = 2; // how much the hud will move when player is moving
hud_mvt_shake_fgr = 1; // secondary shake

hud_style = HUD_STYLE_BLOCK;

event_user(HUD.EVENT_LOAD_STYLE); // load HUD style
event_user(HUD.EVENT_DISABLE_SHOULD_DRAW); // declaring should draw
draw_set_font(font_hud);