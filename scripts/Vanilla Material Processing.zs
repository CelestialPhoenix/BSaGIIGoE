//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Machines--
//Blast Furnace - Recycling

#-Furnace-
//Charcoal
furnace.removeRecipe(<item:minecraft:charcoal>);

//Ingot processing
furnace.removeRecipe(<tag:forge:ingots/steel>.firstItem);
furnace.removeRecipe(<tag:forge:nuggets/steel>.firstItem);

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
	"uranium"
	//"zinc" need zinc dust
	];

for name in metalTypes {
    val oreBlocks = BracketHandlers.getTag("forge:storage_blocks/" + name);
    val oreDusts = BracketHandlers.getTag("forge:dusts/" + name);
    val oreIngots = BracketHandlers.getTag("forge:ingots/" + name);
    val oreNuggets = BracketHandlers.getTag("forge:nuggets/" + name);
    //craftingTable.addShaped(name + "_diamond", <item:minecraft:diamond>, [[air,thing],[thing,air]]);
	furnace.removeRecipe(oreIngots.firstItem); //removes all ingot smelting
	furnace.removeRecipe(oreNuggets.firstItem); //removes all nugget smelting
	
	furnace.addRecipe(name+"dust_to_ingot", oreIngots.firstItem, oreDusts, 0.0, 200);
	furnace.addRecipe(name+"ingot_to_nuggets", oreNuggets.firstItem*9, oreIngots, 0.0, 200);
	//furnace.addRecipe(name+"nuggets_to_ingots", oreIngots.firstItem, oreNuggets*9, 0.0, 200); //currently doesn't support stacked inputs
	furnace.addRecipe(name+"block_to_ingots", oreIngots.firstItem*9, oreBlocks, 0.0, 800);
}
