/// @description Increase Lives
lives++; // increases a life

if(lives > 1)
{
	low_life_alert_rumble1 = disable_rumble(low_life_alert_rumble1);
	low_life_alert_rumble2 = disable_rumble(low_life_alert_rumble2);
}
