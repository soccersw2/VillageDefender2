/// shop values
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
buffer = 125;

alpha = 1;
hidden = true;

wallsArray = get_wall_definitions();
swordsArray = get_sword_definitions();
bowsArray = get_bow_definitions();
arrowsArray = get_arrow_definitions();
potionsArray = get_potion_definitions();

for(var i=0; i<5; i++) {
	for(var j=0; j<3; j++) {
		ownedArray[i, j] = -1;
	}
}
tierLevel = array_create(5, 1);

currentCategory = ShopCategory.length; // means nothing is selected

