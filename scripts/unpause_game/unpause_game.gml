if (global.paused)
{
    instance_activate_all(); // activating all
    global.paused = false; // updating state
    return true;
}

return false;
