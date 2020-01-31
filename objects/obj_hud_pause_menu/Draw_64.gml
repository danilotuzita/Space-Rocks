// drawing "shadowed" printscreen
draw_sprite_ext(sprite_index, -1, 0, 0, 1, 1, 0, c_dkgray, 1);

// for each button
for (var i = 0; i < button_options; i++)
{
    var c = buttons[# i, 0] == cursor_pos ? // if the cursor_pos is the button index
            hud.hud_acc_color :
            hud.hud_color;
    
    if(buttons[# i, 4]) // if has outline
        draw_rectangle_color(
            buttons[# i, 1],                   buttons[# i, 2],
            buttons[# i, 1] + buttons[# i, 5], buttons[# i, 2] + buttons[# i, 6],
            c, c, c, c, true
        );
    
    draw_sprite_ext(
        hud.icons_sprite, buttons[# i, 3],
       (buttons[# i, 1] + buttons[# i, 5] / 2),
       (buttons[# i, 2] + buttons[# i, 6] / 2),
        buttons[# i, 7],  buttons[# i, 7], 0,
        c, hud.hud_alpha
    );
}

if(HUD_DEBUG && false)
    draw_rectangle(
        menu_x, menu_y,
        menu_x + menu_width, menu_y + menu_height, true
    );