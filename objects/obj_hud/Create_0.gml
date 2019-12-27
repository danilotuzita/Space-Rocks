d="";
parent = -1;
hud_color = make_color_rgb(200, 255, 200);
hud_alpha = .5;
screen_center = room_width / 2;
hud_mvt_shake_bkg = 2;
hud_mvt_shake_fgr = 1;

hud_style = 
HUD_STYLE_BLOCK;
//HUD_STYLE_CLASSIC;
event_user(HUD.EVENT_LOAD_STYLE); // load HUD style

// should draw
draw_kin = false;
draw_lives = false;
draw_fire1hint = false;
draw_fire3hint = false;

draw_dashbar = false;
draw_f2chargebar = false;

// -- AIM -- //
aim_sprite_width = sprite_get_width(aim_sprite);
aim_sprite_height = sprite_get_height(aim_sprite);

// -- ICONS -- //
icons_sprite_width = sprite_get_width(icons_sprite); // 13
icons_sprite_half_width = 8;
icons_sprite_height = sprite_get_height(icons_sprite); // 13
icons_sprite_half_height = 8;
// -- kin -- //
kin_scale = 2;
// -- lives -- //
lives_scale = 2;
lives_y = room_height - 16 * lives_scale;
lives_max_draw = 5;
lives_icon_spread = 8 * lives_scale;