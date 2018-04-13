spd = 1; // speed
hspd = 0; // horizontal speed
vspd = 0; // vertical speed
len = 0; // length
dir = 0; // direction

state = move_state;
face = 0; //direction faced

hp = 100;
stamina = 100;

wallsLeft = 20;
buildingRadius = 100; // Distance from player walls can be built

enum item { sword, bow, walls, inv1, inv2, inv3 }
itemEquipped = item.sword;
currentAttack = spr_sAttack_down;
damage = 50;
stunFlash = 5;

#macro RIGHT spr_walking_right
#macro DOWNRIGHT spr_walking_downright
#macro DOWN spr_walking_down
#macro DOWNLEFT spr_walking_downleft
#macro LEFT spr_walking_left
#macro UPLEFT spr_walking_upleft
#macro UP spr_walking_up
#macro UPRIGHT spr_walking_upright
