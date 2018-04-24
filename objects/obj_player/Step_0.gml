get_input();				// get user input
if (itemEquipped == Item.bow)
	get_input_atk_states();
script_execute(moveState);	// run movement & sprite script
set_current_weapon();		// set current item from user input
action_state();				// handles player actions 
stamina_regin();			// handles stamina regin



