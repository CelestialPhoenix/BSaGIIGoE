//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;

#--Wooden components--
var woodTypes = [
    "oak",
	"spruce",
	"birch",
	"jungle",
	"acacia",
	"dark_oak",
	"crimson",
	"warped"
	];

for name in woodTypes {
    val itemLog = BracketHandlers.getTag("forge:logs/"+name);
    val itemPlank = BracketHandlers.getItem("minecraft:"+name+"_planks");
    val itemSlab = BracketHandlers.getItem("minecraft:"+name+"_slab");
	
    val itemDoor = BracketHandlers.getItem("minecraft:"+name+"_door");
    val itemTrapdoor = BracketHandlers.getItem("minecraft:"+name+"_trapdoor");
    val itemPressurePlate = BracketHandlers.getItem("minecraft:"+name+"_pressure_plate");
    val itemButton = BracketHandlers.getItem("minecraft:"+name+"_button");
    val itemGate = BracketHandlers.getItem("minecraft:"+name+"_fence_gate");

craftingTable.removeRecipe(itemPlank);
craftingTable.addShapeless(name+"_plank_from_log", itemPlank*2, [itemLog]);

craftingTable.removeRecipe(itemSlab);
craftingTable.addShaped(name+"_slab", itemSlab*3, [
    [itemPlank, itemPlank, itemPlank]
]);

craftingTable.removeRecipe(itemDoor);
craftingTable.addShapedMirrored(name+"door_from_plank", itemDoor, [
    [itemPlank, itemPlank, <tag:forge:motuus/silver>],
    [itemPlank, itemPlank, <item:minecraft:air>],
    [itemPlank, itemPlank, <tag:forge:motuus/silver>]
]);
craftingTable.addShapedMirrored(name+"door_from_slab", itemDoor, [
    [itemSlab, itemSlab, <tag:forge:motuus/silver>],
    [itemSlab, itemSlab, <item:minecraft:air>],
    [itemSlab, itemSlab, <tag:forge:motuus/silver>]
]);

craftingTable.removeRecipe(itemTrapdoor);
craftingTable.addShapedMirrored(name+"trapdoor_from_plank", itemTrapdoor*2, [
    [<tag:forge:motuus/silver>, <item:minecraft:air>, <tag:forge:motuus/silver>],
    [itemPlank, itemPlank, itemPlank],
    [itemPlank, itemPlank, itemPlank]
]);
craftingTable.addShapedMirrored(name+"trapdoor_from_slab", itemTrapdoor*2, [
    [<tag:forge:motuus/silver>, <item:minecraft:air>, <tag:forge:motuus/silver>],
    [itemSlab, itemSlab, itemSlab],
    [itemSlab, itemSlab, itemSlab]
]);

craftingTable.removeRecipe(itemPressurePlate);
craftingTable.addShaped(name+"pressure_plate", itemPressurePlate, [
    [itemSlab],
    [<tag:forge:dusts/redstone>]
]);

craftingTable.removeRecipe(itemButton);
craftingTable.addShaped(name+"button", itemButton, [
    [itemPlank],
    [<tag:forge:dusts/redstone>]
]);

craftingTable.removeRecipe(itemGate);
craftingTable.addShaped(name+"gate", itemGate, [
    [itemPlank, <tag:forge:rods/wooden>, itemPlank],
    [itemPlank, <tag:forge:rods/wooden>, itemPlank],
    [<tag:forge:motuus/silver>, <item:minecraft:air>, <tag:forge:motuus/silver>]
]);
}

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
