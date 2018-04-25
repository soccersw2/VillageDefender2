randomize();

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

cellSize = 32;

// Enemies & Waves
wave = 1;
lastWaveEnemies = NUM_INITIAL_ENEMIES;
enemiesLeftToSpawn = NUM_INITIAL_ENEMIES;
enemiesLeftAlive = NUM_INITIAL_ENEMIES;
spawnTimer = 0;

// Loot
lootXP = 100;
lootCoins = 100;

var coinLootMin = (max(1,lootCoins*wave - 30*wave));
var coinLootMax = lootCoins + 30*wave;
var xpLootMin = (max(1, lootXP*wave - wave^3));
var xpLootMax = lootXP + wave^3;
waveLootXP = irandom_range(xpLootMin, xpLootMax);
waveLootCoins = irandom_range(coinLootMin, coinLootMax);
	

// Intermission and constants
intermissionActive = false;
intermissionTimeLeft = 0;

#macro INTERMISSION_TIME 30
#macro NUM_INITIAL_ENEMIES 1