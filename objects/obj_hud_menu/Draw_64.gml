if (!setup) return;

// drawing "shadowed" printscreen
draw_sprite_ext(sprite_index, -1, 0, 0, 1, 1, 0, c_dkgray, 1);

// for each button
for (var i = 0; i < button_options; i++)
{
    if (script_execute(buttons[# i, 12], i))
        continue; // custom draw script returned successfully skip default drawing
    
    var c = buttons[# i,  0] == cursor_pos ? // if the cursor_pos is the button index
            buttons[# i, 11] : // button acc color
            main_hud.hud_color;
    
    if(buttons[# i, 4]) // if has outline
        draw_rectangle_color(
            buttons[# i, 1],                   buttons[# i, 2], // x, y
            buttons[# i, 1] + buttons[# i, 5], buttons[# i, 2] + buttons[# i, 6], // x + width, y + height
            c, c, c, c, true
        );
    
    draw_sprite_ext(
        buttons[# i, 8],   buttons[# i, 3],       // spr, spr_idx
       (buttons[# i, 1] + (buttons[# i, 5] / 2)), // x + ( width / 2)
       (buttons[# i, 2] + (buttons[# i, 6] / 2)), // y + (height / 2)
        buttons[# i, 7],   buttons[# i, 7],       // scale
        buttons[# i, 9], c, main_hud.hud_alpha    // rotation, color, alpha
    );
}

if(DEBUG && false)
    draw_rectangle(
        menu_x, menu_y,
        menu_x + menu_width, menu_y + menu_height, true
    );