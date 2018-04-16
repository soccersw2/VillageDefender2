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

// Intermission and constants
intermissionActive = false;
intermissionTimeLeft = 0;

#macro INTERMISSION_TIME 5
#macro NUM_INITIAL_ENEMIES 1