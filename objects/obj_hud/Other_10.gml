/// @description Load HUD Style
switch(hud_style)
{
    case HUD_STYLE_BLOCK:
        aim_sprite = spr_aim_block;
        icons_sprite = spr_icons_block;
        
        dashbar_sprite = spr_dashbar_block;
        dashbar_width = sprite_get_width(dashbar_sprite);
        dashbar_height = sprite_get_height(dashbar_sprite);
        dashbar_x = 16;
        dashbar_y = room_height - dashbar_height - 16;
        
        f2chargebar_sprite = spr_chargebar_block;
        f2chargebar_icon_sprite = spr_chargebar_icons_block;
        f2chargebar_width = sprite_get_width(f2chargebar_sprite);
        f2chargebar_height = sprite_get_height(f2chargebar_sprite);
        f2chargebar_x = room_width - f2chargebar_width - 16;
        f2chargebar_y = room_height - f2chargebar_height - 16;
        
        controls_sprite = spr_controls_block;
        hint_fire1_x = room_width - 64 - 16 - 8;
        hint_fire1_y = room_height - 32;
        
        break;
    case HUD_STYLE_CLASSIC:
    default:
        aim_sprite = spr_aim;
        icons_sprite = spr_icons;
        
        dashbar_sprite = spr_dashbar;
        dashbar_width = sprite_get_width(dashbar_sprite);
        dashbar_height = sprite_get_height(dashbar_sprite);
        dashbar_x = 16;
        dashbar_y = room_height - dashbar_height - 16;
        
        f2chargebar_sprite = spr_chargebar;
        f2chargebar_width = sprite_get_width(f2chargebar_sprite);
        f2chargebar_height = sprite_get_height(f2chargebar_sprite);
        f2chargebar_x = room_width - f2chargebar_width - 16;
        f2chargebar_y = room_height - f2chargebar_height - 16;
        break;
}
