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

// Walls
buildingRadius = 100; // Distance from player walls can be built

// Weapons & Items
itemEquipped = Item.sword;
itemAmmo = itemDefinitions[itemEquipped, ItemProperties.amount];
currentAttack = spr_sAttack_down;
damage = 10;
stunFlash = 5;

// Movement sprite macros
#macro RIGHT spr_walking_right
#macro DOWNRIGHT spr_walking_downright
#macro DOWN spr_walking_down
#macro DOWNLEFT spr_walking_downleft
#macro LEFT spr_walking_left
#macro UPLEFT spr_walking_upleft
#macro UP spr_walking_up
#macro UPRIGHT spr_walking_upright
