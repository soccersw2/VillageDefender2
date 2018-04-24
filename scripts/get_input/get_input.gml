/// @desc get_input()
input_right = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
input_left = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
input_down = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
input_up = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
input_run = keyboard_check(vk_shift);

lMouseClicked = mouse_check_button(mb_left);
lMousePressed = mouse_check_button_pressed(mb_left);
lMouseReleased = mouse_check_button_released(mb_left);
rMouseClicked = mouse_check_button(mb_right);
rMousePressed = mouse_check_button_pressed(mb_right);
rMouseReleased = mouse_check_button_released(mb_right);

input_r = keyboard_check_pressed(ord("R")); // restart game
input_q = keyboard_check_pressed(ord("Q")); // sword
input_e = keyboard_check_pressed(ord("E")); // bow & arrow
input_f = keyboard_check_pressed(ord("F")); // toggle building materials
input_z = keyboard_check_pressed(ord("Z")); // wall editing
input_1 = keyboard_check_pressed(ord("1")); // inventory slot 1
input_2 = keyboard_check_pressed(ord("2")); // inventory slot 2
input_3 = keyboard_check_pressed(ord("3")); // inventory slot 3
input_4 = keyboard_check_pressed(ord("4")); // inventory slot 4
input_5 = keyboard_check_pressed(ord("5"));  // inventory slot 5

// x & y axis
xaxis = (input_right - input_left);
yaxis = (input_down - input_up);


