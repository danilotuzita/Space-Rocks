/// @description Load HUD Style
switch(hud_style)
{
    case HUD_STYLE_BLOCK:
        // AIM
        aim_sprite = spr_aim_block;
        aim_cursor_sprite = spr_mouse_cursor_block;
        // ICONS
        icons_sprite = spr_icons_block;
        // DASHBARS
        dashbar_sprite = spr_dashbar_block;
        f2chargebar_sprite = spr_chargebar_block;
        f2chargebar_icon_sprite = spr_chargebar_icons_block;
        // MISC
        ores_sprite = spr_ores_block;
        misc_sprite = spr_misc_block;
        // CONTROLS
        controls_sprite = spr_controls_block;
        
        break;
    case HUD_STYLE_CLASSIC:
    default:
        // AIM
        aim_sprite = spr_aim;
        aim_cursor_sprite = spr_mouse_cursor;
        // ICONS
        icons_sprite = spr_icons;
        // DASHBARS
        dashbar_sprite = spr_dashbar;
        f2chargebar_sprite = spr_chargebar;
        f2chargebar_icon_sprite = spr_chargebar_icons;
        // MISC
        ores_sprite = spr_ores;
        misc_sprite = spr_misc;
        // CONTROLS
        controls_sprite = spr_controls;

        break;
}

// -- AIM -- //
aim_sprite_width = sprite_get_width(aim_sprite);
aim_sprite_height = sprite_get_height(aim_sprite);

// -- ICONS -- //
icons_sprite_width = sprite_get_width(icons_sprite);
icons_sprite_height = sprite_get_height(icons_sprite);
icons_sprite_half_width = 8;
icons_sprite_half_height = 8;
    // -- lives -- //
    lives_scale = 2;
    lives_max_draw = 5;
    lives_icon_spread = 8 * lives_scale;
    lives_y = window_get_height() - sprite_get_width(icons_sprite) * lives_scale;
    // -- fire1 hint -- //
    hint_fire1_x = window_get_width() - 64 - 16 - 8;
    hint_fire1_y = window_get_height() - 32;

// -- DASHBAR -- //
dashbar_width = sprite_get_width(dashbar_sprite);
dashbar_height = sprite_get_height(dashbar_sprite);
dashbar_x = 16;
dashbar_y = window_get_height() - dashbar_height - 16;
    // -- fire2 -- //
    f2chargebar_width = sprite_get_width(f2chargebar_sprite);
    f2chargebar_height = sprite_get_height(f2chargebar_sprite);
    f2chargebar_x = window_get_width() - f2chargebar_width - 16;
    f2chargebar_y = window_get_height() - f2chargebar_height - 16;


// -- MISC -- //
misc_width = sprite_get_width(dashbar_sprite);
    // -- search -- //
    search_box_x = window_get_width() - misc_width;
    search_box_y = 0;
    // -- kin -- //
    kin_x = 0;
    kin_y = 0;
    kin_scale = 1;