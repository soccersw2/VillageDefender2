// Stamina Regineration
if (stamina < 100 && !input_run && !lMouseClicked)
{
	if (stamina < 30) stamina += 10/60;
	else if (stamina >= 30 && stamina < 60) stamina += 15/60;
	else stamina += 20/60;
}