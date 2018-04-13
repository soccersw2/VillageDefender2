// HP
hp = 100;
hpDisplayTime = 0;

// Movement
spd = 1; // speed
hspd = 0; // horizontal speed
vspd = 0; // vertical speed
len = 0; // length
dir = 0; // direction

// Path
planner = instance_create_layer(x, y, "Planners", obj_path_planner);
planner.follower = id;

// Move & sprite
moveState = enemy_move_state;
face = 0; //direction faced

// State

currentState = State.running;
currentTarget = Target.obj_hub;

// Hit
hit = false;
flash = 0;
timer = 0;

// Attack
damage = 30;

// Aware of player
symbolTimer = -1; // temp

