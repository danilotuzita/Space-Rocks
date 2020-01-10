/// @description Accept
switch(cursor_pos)
{
    case 0: // case continue
        event_user(HUD_PAUSE.EVENT_UNPAUSE);
        break;
    case 1: // case quit
        parent.parent.quitting = not parent.parent.quitting;
        event_user(HUD_PAUSE.EVENT_UNPAUSE);
        break;
    default:
        break;
}