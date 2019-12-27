var x_shake_bkg = parent._x * hud_mvt_shake_bkg;
var y_shake_bkg = parent._y * hud_mvt_shake_bkg;
var x_shake_fgr = parent._x * hud_mvt_shake_fgr;
var y_shake_fgr = parent._y * hud_mvt_shake_fgr;

if(draw_kin)
{
    draw_sprite_ext(icons_sprite, HUD_ICON_KIN, 20 + x_shake_bkg, 20 + y_shake_bkg, kin_scale, kin_scale, 0, hud_color, hud_alpha);
    
    draw_set_color(hud_color);
    draw_text(37 + x_shake_bkg, 14 + y_shake_bkg, string(score));
    draw_set_color(c_white);

}

if(draw_lives)
{
    var half = lives / 2;
    if(lives > lives_max_draw)
    {
        half = lives_max_draw / 2;
        // TODO: come up with a way to indicate that the player has more lives than is shown
    }
    
    var lives_alpha = hud_alpha;
    if (lives == 1)
        lives_alpha *= abs(sin((10 * parent.tick) / room_speed));
    
    for(var i = -half; i < half; i++)
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
        x_full_shake += w;
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
    var charge_ratio = ratio(
        parent.fire2_charge, 0, parent.fire2_max_charge,
        f2chargebar_height, 0
    );
    
    var cooldown_rate = ratio(
        parent.fire2_cooldown, 0, parent.fire2_cooldown_rate * room_speed,
        1, 0
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
        hint_fire1_x, hint_fire1_y,
        2, 2, 1,
        hud_color, hud_alpha * cooldown_rate
    );
    
    cooldown_rate = ratio(
        parent.fire3_cooldown, 0, parent.fire3_cooldown_rate * room_speed,
        1, 0
    );
    
    draw_sprite_ext(
        icons_sprite, HUD_ICON_FIRE3_HINT,
        128 - 16, hint_fire1_y,
        2, 2, 1,
        hud_color, hud_alpha * cooldown_rate
    );
}
