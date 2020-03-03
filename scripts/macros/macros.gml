// MATHMACROS
#macro E 2.71828

// ENUMS
enum GAME
{
    // events
    EVENT_QUIT_MISSION = 0,
    
    // alarms
    ALARM_RESTART_GAME = 0,
    ALARM_ASTEROID_SPAWN = 1,
    ALARM_POWERUP_SPAWN = 2,
    ALARM_SWITCH_ROOMS = 3
}

enum SHIP
{
    // events
    EVENT_RESET = 0,
    EVENT_DECREASE_LIVES = 1,
    EVENT_INCREASE_LIVES = 2,
    EVENT_QUIT_MISSION = 3
}

enum BULLET
{
    // events
    EVENT_DESTROY = 0
}

enum HUD
{
    // events
    EVENT_LOAD_STYLE = 0,
    EVENT_RELOAD_SHOULD_DRAW = 1,
    EVENT_DISABLE_SHOULD_DRAW = 2
}

enum HUD_MENU
{
    // events
    EVENT_DESTROY = 0,
    EVENT_ACCEPT = 1,
    EVENT_CANCEL = 2,
    EVENT_UNPAUSE = 3,
    // EVENT_SETUP = 4,
    EVENT_HANDLE_INPUT = 5,
    
    // alarms
    ALARM_CUSTOM_YLD_ANIM = 0
}

enum ASTEROID
{
    // events
    EVENT_DESTROY = 0,
    // alarms
    ALARM_DESTROY_DRAMATICALLY = 0
}

enum CONTROLLER
{
    // events
    EVENT_RESET_ALL = 0,
    EVENT_CHECK_CONTROLLER = 1,
    EVENT_CHECK_KEYBOARD = 2,
    EVENT_CHECK_MOUSE = 3,
    
    // alarms
    ALARM_PAUSE = 0
}

enum RUMBLE_HANDLER
{
    // events
    EVENT_INIT_QUEUE = 0
}

enum INVENTORY
{
    // events
    EVENT_CLEAR_INV = 0,
    EVENT_UPDATE_WEIGHT = 1,
    
    // grid indexes
    GRID_AMOUNT = 0
}


enum DRAWER
{
    // events
    EVENT_TOGGLE = 0,
    EVENT_SET_HUD_SURFACE = 1
    //EVENT_SET_GAME_SURFACE = 1,
}

// OTHER
// fill functions
#macro FILL_LEFT_RIGHT 0
#macro FILL_BOTTOM_UP 1
#macro FILL_RIGHT_LEFT 2
#macro FILL_UP_BOTTOM 3
#macro FILL_CENTER_OUT 4
#macro FILL_MIDDLE_TOP_BOTTOM 5

