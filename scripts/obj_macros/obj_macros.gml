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
    EVENT_LOAD_STYLE = 0
}

enum HUD_PAUSE
{
    // events
    EVENT_DESTROY = 0,
    EVENT_ACCEPT = 1,
    EVENT_CANCEL = 2,
    EVENT_UNPAUSE = 3,
    EVENT_SETUP = 4,
    EVENT_HANDLE_INPUT = 5
}

enum ASTEROID
{
    // events
    EVENT_DESTROY = 0,
    EVENT_AAA = 0
}

enum CONTROLLER
{
    // events
    EVENT_RESET_ALL = 0,
    EVENT_CHECK_CONTROLLER = 1,
    EVENT_CHECK_KEYBOARD = 2,
    EVENT_CHECK_MOUSE = 3
}

enum RUMBLE_HANDLER
{
    // events
    EVENT_INIT_QUEUE = 0
}

enum ORES
{
    IRON = 0,
    COPPER = 1
}

