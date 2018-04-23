// HP
hp = 100;

// Movement
spd = 1;

// State
currentState = State.attacking;
currentTarget = obj_hub.id;

// Sprite
currentAttack = spr_sAttack_down;

// Hit
hit = false;
hitBy = noone;
flash = 0;
timeBtwnFlashes = 0;

// Attack
damage = 10;
makeFlash = 5;
timeBtwnAttacks = 0;

// Aware of player
displaySymbolTimer = -1; // display symbol for x/60 seconds

// Path
path = path_add();
detectRadius = 200;

