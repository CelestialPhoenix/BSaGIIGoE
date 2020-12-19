//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

var oreMetalTypes = [
    "aluminum",
	"copper",
	"iron",
	"gold",
	"lead",
	"nickel",
	"silver",
	"uranium",
	"zinc"
	];

var oreGemTypes = [
    "coal",
    "diamond",
	"emerald",
	"lapis",
	"quartz"
	];

#--Machines--
#-Blast Furnace-
for name in oreMetalTypes {
    val oreCrushed = BracketHandlers.getTag("create:crushed_ores/" + name);
    val oreIngots = BracketHandlers.getTag("forge:ingots/" + name);
    val oreNuggets = BracketHandlers.getTag("forge:nuggets/" + name);

blastFurnace.removeRecipe(oreIngots.firstItem, oreCrushed);
blastFurnace.addRecipe("smelt_crushed_"+name, oreNuggets.firstItem*2, oreCrushed, 0.0, 600);
}
#-Furnace-
//No ores in furnace
for name in oreGemTypes {
    val oreGem = BracketHandlers.getTag("forge:gems/" + name);

furnace.removeRecipe(oreGem.firstItem);
}
