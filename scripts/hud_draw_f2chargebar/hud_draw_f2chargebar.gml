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
    f2chargebar_sprite, HUD_CHARGEBAR_ICON_FIRE2,
    0, 0,
    f2chargebar_width, f2chargebar_height * cooldown_rate,
    f2chargebar_x + x_full_shake, f2chargebar_y + y_full_shake,
    1, 1,
    hud_color, hud_alpha + .2
);