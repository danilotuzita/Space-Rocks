parent = -1;
hud_color = make_color_rgb(200, 255, 200);
hud_alpha = .5;
screen_center = room_width / 2;

draw_dashbar = false;
draw_lives = false;
draw_kin = false;

lives_scale = 1;
lives_y = room_height - 16 * lives_scale;
lives_max_draw = 10;
lives_icon_spread = 8 * lives_scale;

kin_scale = 2;

hud_style = HUD_STYLE; // TODO: remove this

switch(hud_style)
{
    case HUD_STYLE_BLOCK:
        aim_sprite = spr_aim_block;
        
        icons_sprite = spr_icons_block;
        
        dashbar_sprite = spr_dashbar_block;
        dashbar_x = 16;
        dashbar_y = 356;
        
        break;
    case HUD_STYLE_CLASSIC:
    default:
        aim_sprite = spr_aim;
        
        icons_sprite = spr_icons;
        
        dashbar_sprite = spr_dashbar;
        dashbar_x = 16;
        dashbar_y = 150;
        break;
}

aim_sprite_width = sprite_get_width(aim_sprite);
aim_sprite_height = sprite_get_height(aim_sprite);

icons_sprite_width = sprite_get_width(icons_sprite); // 13
icons_sprite_half_width = 8;
icons_sprite_height = sprite_get_height(icons_sprite); // 13
icons_sprite_half_height = 8;

dashbar_width = sprite_get_width(dashbar_sprite);
dashbar_height = sprite_get_height(dashbar_sprite);
