
itemDefinitions[Item.length, ItemProperties.length] = noone;

add_item_definition(Item.none, spr_empty, "", -1, use_empty);
add_item_definition(Item.walls, spr_wall, "Walls", 100, use_empty);
add_item_definition(Item.sword, spr_sword_basic, "Sword", -1, use_empty);
add_item_definition(Item.bow, spr_bow_basic, "Bow", 100, use_empty);
add_item_definition(Item.inv1, spr_pot_hp, "Health Potion", 1, use_empty);
add_item_definition(Item.inv2, spr_pot_stamina, "Stamina Potion", 1, use_empty);
add_item_definition(Item.inv3, spr_pot_perk, "Perk Potion", 1, use_empty);

return itemDefinitions;