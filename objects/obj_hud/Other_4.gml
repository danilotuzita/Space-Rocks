draw_kin = false;
draw_lives = false;
draw_dashbar = false;
draw_aim = false;

switch(room)
{
    case room_game:
    case room_start_menu:
        draw_kin = true;
        draw_lives = true;
        draw_dashbar = true;
        draw_aim = true;
        break;
    case room_space:
        draw_dashbar = true;
        break;
    default:
        break;
}