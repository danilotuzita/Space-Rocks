/// @description reload should_draw
event_user(HUD.EVENT_DISABLE_SHOULD_DRAW);

switch(room)
{
    case room_game:
    case room_start_menu:
        draw_kin = true;
        draw_lives = true;
        draw_fire1hint = true;
        draw_fire3hint = true;
        
        draw_dashbar = true;
        draw_f2chargebar = true;
        
        draw_aim = true;
        draw_quitting = true;
        draw_searching = true;
        break;
    case room_space:
        draw_kin = true;
        draw_dashbar = true;
        break;
    default:
        break;
}