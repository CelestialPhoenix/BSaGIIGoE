//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

#--Machines--
//Blast Furnace
<item:minecraft:blast_furnace>.setDisplayName("Small Blast Furnace");
craftingTable.removeRecipe(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blastfurnace.small", <item:minecraft:blast_furnace>, [
    [<item:minecraft:bricks>, <item:minecraft:furnace>, <item:minecraft:bricks>],
    [<item:minecraft:bricks>, <item:minecraft:furnace>, <item:minecraft:bricks>],
    [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]
]);

//Smoker
craftingTable.removeRecipe(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>, [
    [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
    [<item:minecraft:brick>, <item:minecraft:campfire>, <item:minecraft:brick>],
    [<item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>]
]);
craftingTable.addShaped("soul_smoker", <item:minecraft:smoker>, [
    [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
    [<item:minecraft:brick>, <item:minecraft:soul_campfire>, <item:minecraft:brick>],
    [<item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>]
]);
