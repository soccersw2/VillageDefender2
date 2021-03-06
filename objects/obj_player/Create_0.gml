// Initialize enums & inventory
enum_definitions();
inventory = items_initialize();

// Movement
spd = 1; // speed
hspd = 0; // horizontal speed
vspd = 0; // vertical speed
len = 0; // length
dir = 0; // direction



// Movement procedure & sprites
moveState = move_state;
face = 0; //direction faced

// Stats
hp = 100;
stamina = 100;
coins = 100;
xp = 0;

// Walls
buildingRadius = 100; // Distance from player walls can be built

// Weapons & Items
itemEquipped = Item.sword;
itemAmmo = itemDefinitions[itemEquipped, ItemProperties.amount];

// Attacking
rMouseDefenseActive = false;
lMouseAttackActive = false;
rMouseDefenseTimeActive = 0;
lMouseAttackTimeActive = 0;
projectileRange = 0;

rMouseDefenseTimePrev = 0;
lMouseAttackTimePrev = 0;

// sword
currentAttack = spr_sAttack_down;
damage = 10;
stunFlash = 5;

// bow and arrow
playerDirection = "DOWN"; // direction string
rangeSprite = spr_bow_range;
cooldown = 1.5 * 60;
currentCooldown = 0;

// Hit
hit = false;
hitBy = noone;
flash = 0;
makeFlash = 10;
timeBtwnFlashes = 0;


// Movement sprite macros
#macro RIGHT spr_walking_right
#macro DOWNRIGHT spr_walking_downright
#macro DOWN spr_walking_down
#macro DOWNLEFT spr_walking_downleft
#macro LEFT spr_walking_left
#macro UPLEFT spr_walking_upleft
#macro UP spr_walking_up
#macro UPRIGHT spr_walking_upright
