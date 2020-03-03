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