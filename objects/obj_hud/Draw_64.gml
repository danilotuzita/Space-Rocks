// shake on this tick
var x_shake_bkg = parent._x * hud_mvt_shake_bkg;
var y_shake_bkg = parent._y * hud_mvt_shake_bkg;
var x_shake_fgr = parent._x * hud_mvt_shake_fgr;
var y_shake_fgr = parent._y * hud_mvt_shake_fgr;

if(draw_kin)
{
    draw_sprite_ext(
        misc_sprite, HUD_MISC_KIN,
        kin_x + x_shake_bkg, kin_y + y_shake_bkg,
        kin_scale, kin_scale, 0,
        hud_color, hud_alpha
    );
    
    draw_set_color(hud_color);
    draw_text_transformed(50 + x_shake_bkg, 10 + y_shake_bkg, string(score), 2, 2, 0);
    draw_set_color(c_white);

}

if(draw_lives)
{
    var half = lives / 2;
    if(lives > parent.max_lives)
    {
        half = parent.max_lives / 2;
        // TODO: come up with a way to indicate that the player has more lives than is shown
    }
    
    var lives_alpha = hud_alpha;
    if (lives == 1) // if player has only one life left
        lives_alpha *= abs(sin((10 * parent.tick) / room_speed));
    
    for(var i = -half; i < half; i++) // draws the lives icon centralized
        draw_sprite_ext(
            icons_sprite, HUD_ICON_LIVES,
            (screen_center + (icons_sprite_half_width * lives_scale)) +
            (i * lives_icon_spread * 2) + x_shake_bkg, lives_y + y_shake_bkg,
            lives_scale, lives_scale,
            0, hud_color, lives_alpha
        );
}

if(draw_dashbar)
{
    var dash_ratio = ratio(
        parent.dash_fuel, 0, 1,
        dashbar_height, 1
    );
    
    // REF: https://forum.yoyogames.com/index.php?threads/solved-fill-up-effect-drawing.40400/
    draw_sprite_part_ext( // drawing fill
        dashbar_sprite, HUD_DASHBAR_FILL,
        0, dash_ratio,
        dashbar_width, dashbar_height,
        dashbar_x + x_shake_bkg, dashbar_y + dash_ratio + y_shake_bkg,
        1, 1,
        hud_color, hud_alpha - .2
    );
    
    draw_sprite_ext( // drawing outline
        dashbar_sprite, HUD_DASHBAR_OUTLINE,
        dashbar_x + x_shake_bkg, dashbar_y + y_shake_bkg,
        1, 1, 
        0, hud_color, hud_alpha
    );
    
    var x_full_shake = x_shake_fgr;
    var y_full_shake = y_shake_fgr;

    if (parent.dashing)
    {
        var w = wave(-1, 1, .1, 0, parent.tick);
        x_full_shake += w; // if its dashing shake it left and right more
        // y_full_shake += w;
    }
    
    draw_sprite_ext( // drawing icon
        dashbar_sprite, HUD_DASHBAR_ICON,
        dashbar_x + x_full_shake, dashbar_y + y_full_shake,
        1, 1, 
        0, hud_color, hud_alpha + .2
    );
}

if(draw_f2chargebar)
{
    // FIRE2 BAR
    var charge_ratio = ratio(
        parent.fire2_charge, 0, parent.fire2_max_charge,
        f2chargebar_height, 0
    );
    
    // REF: https://forum.yoyogames.com/index.php?threads/solved-fill-up-effect-drawing.40400/
    draw_sprite_part_ext( // drawing fill
        f2chargebar_sprite, HUD_CHARGEBAR_FILL,
        0, charge_ratio,
        f2chargebar_width, f2chargebar_height,
        f2chargebar_x + x_shake_bkg, f2chargebar_y + charge_ratio + y_shake_bkg,
        1, 1,
        hud_color, hud_alpha - .2
    );
    
    draw_sprite_ext( // drawing outline
        f2chargebar_sprite, HUD_CHARGEBAR_OUTLINE,
        f2chargebar_x + x_shake_bkg, f2chargebar_y + y_shake_bkg,
        1, 1, 
        0, hud_color, hud_alpha
    );
    
    
    // FIRE2 ICON
    var cooldown_rate = ratio(
        parent.fire2_cooldown, 0, parent.fire2_cooldown_rate * room_speed,
        1, 0
    );
    var x_full_shake = x_shake_fgr;
    var y_full_shake = y_shake_fgr;

    if (!charge_ratio) // charge ratio will be zero when fully charged
    {
        var w = wave(0, 1, .1, 0, parent.tick);
        x_full_shake += w;
        // y_full_shake -= w;
    }
    
    draw_sprite_part_ext( // drawing icon
        f2chargebar_icon_sprite, HUD_CHARGEBAR_ICON_FIRE2,
        0, 0,
        f2chargebar_width, f2chargebar_height * cooldown_rate,
        f2chargebar_x + x_full_shake, f2chargebar_y + y_full_shake,
        1, 1,
        hud_color, hud_alpha + .2
    );
}

if(draw_fire1hint)
{
    var cooldown_rate = ratio(
        parent.fire1_cooldown, 0, parent.fire1_cooldown_rate * room_speed,
        1, 0
    );
    
    draw_sprite_ext(
        icons_sprite, HUD_ICON_FIRE1_HINT,
        hint_fire1_x + x_shake_bkg, hint_fire1_y + y_shake_bkg,
        2, 2, 1,
        hud_color, hud_alpha * cooldown_rate
    );
    
    cooldown_rate = ratio(
        parent.fire3_cooldown, 0, parent.fire3_cooldown_rate * room_speed,
        1, 0
    );
    
    draw_sprite_ext(
        icons_sprite, HUD_ICON_FIRE3_HINT,
        128 - 16 + x_shake_bkg, hint_fire1_y + y_shake_bkg,
        2, 2, 1,
        hud_color, hud_alpha * cooldown_rate
    );
}

if(draw_quitting && parent.quitting)
{
    var x1 = parent.x + 4;
    var y1 = parent.y + 24;
    var x2 = x1 + ratio(parent.quitting_timer, 0, 3 * room_speed, 0, 30);
    var y2 = y1 + 2;
    draw_rectangle_color(
        x1, y1,
        x2, y2,
        hud_color, hud_color, hud_color, hud_color,
        false
    );
}

if(draw_cursor)
{
    draw_sprite_ext(aim_cursor_sprite, HUD_CURSOR_AIM,
        controller.cursor_x, controller.cursor_y,
        3, 3,
        1, hud_color, hud_alpha
    );
}

if(draw_searching)
{
    draw_sprite_ext(
        misc_sprite, HUD_MISC_SEARCH_BOX, 
        search_box_x + x_shake_bkg, search_box_y + y_shake_bkg,
        1, 1, 0,
        hud_color, hud_alpha
    );
    if (between(parent.searching_ore, 0, ORES.COUNT - 1, true))
        draw_sprite_ext(
            ores_sprite, parent.searching_ore,
            search_box_x + 16 + x_shake_fgr, search_box_y + 16 + y_shake_fgr,
            2, 2, 0,
            hud_color, hud_alpha - .2
        );
}

// d = "X: " + string(controller.cursor_x) + " | Y: " + string(controller.cursor_y);

/*if(HUD_DEBUG)
    draw_text(50, 50, string(d));
*/