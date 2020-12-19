//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Machines--
//Blast Furnace - Recycling

#-Furnace-
//Ingot processing
furnace.removeRecipe(<tag:forge:ingots/steel>.firstItem);

var metalTypes = [
    "aluminum",
	"constantan",
	"electrum",
	"copper",
	"iron",
	"gold",
	"lead",
	"nickel",
	"silver",
	#"steel", //done in blast furnace
	"uranium",
	"zinc"
	];

for name in metalTypes {
    val oreBlocks = BracketHandlers.getTag("forge:storage_blocks/" + name);
    val oreIngots = BracketHandlers.getTag("forge:ingots/" + name);
    val oreNuggets = BracketHandlers.getTag("forge:nuggets/" + name);
    //craftingTable.addShaped(name + "_diamond", <item:minecraft:diamond>, [[air,thing],[thing,air]]);
	furnace.removeRecipe(oreIngots.firstItem); //removes all ingot smelting
	furnace.removeRecipe(oreNuggets.firstItem); //removes all nugget smelting
	
	furnace.addRecipe(name+"ingot_to_nuggets", oreNuggets.firstItem*9, oreIngots, 0.0, 200);
	//furnace.addRecipe(name+"nuggets_to_ingots", oreIngots.firstItem, oreNuggets*9, 0.0, 200);
	furnace.addRecipe(name+"block_to_ingots", oreIngots.firstItem*9, oreBlocks, 0.0, 200);
}
