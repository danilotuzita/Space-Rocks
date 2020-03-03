tick++;
if (!DEBUG) return;

if(keyboard_check_released(ord("H")))
    event_user(DRAWER.EVENT_TOGGLE); // toggling shader

if(keyboard_check_released(ord("R"))) // reseting turning on effect
{ 
    mp = -mp;
    last_tick = tick;
}