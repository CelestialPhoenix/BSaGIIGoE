//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

#--Machines--
//Blast Furnace
<item:minecraft:blast_furnace>.setDisplayName("Small Blast Furnace");
craftingTable.removeRecipe(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blastfurnace.small", <item:minecraft:blast_furnace>, [
    [<item:minecraft:bricks>, <item:minecraft:furnace>, <item:minecraft:bricks>],
    [<item:minecraft:bricks>, <item:minecraft:air>, <item:minecraft:bricks>],
    [<item:minecraft:smooth_stone>, <item:minecraft:furnace>, <item:minecraft:smooth_stone>]
]);