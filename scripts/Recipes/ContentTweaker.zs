//Blood Sweat and Gears II ContenTweaker.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

#--Redstone Motuus--
craftingTable.addShaped("motuus_silver", <item:contenttweaker:silver_motuus>, [
    [<item:minecraft:air>, <tag:forge:nuggets/silver>, <item:minecraft:air>],
    [<tag:forge:nuggets/silver>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/silver>],
    [<tag:forge:nuggets/silver>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/silver>]
]);

craftingTable.addShaped("motuus_gold", <item:contenttweaker:gold_motuus>, [
    [<item:minecraft:air>, <tag:forge:nuggets/gold>, <item:minecraft:air>],
    [<tag:forge:nuggets/gold>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/gold>],
    [<tag:forge:nuggets/gold>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/gold>]
]);
/*
craftingTable.addShaped("motuus_platinum", <item:contenttweaker:platinum_motuus>, [
    [<item:minecraft:air>, <tag:forge:nuggets/platinum>, <item:minecraft:air>],
    [<tag:forge:nuggets/platinum>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/platinum>],
    [<tag:forge:nuggets/platinum>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/platinum>]
]);
*/