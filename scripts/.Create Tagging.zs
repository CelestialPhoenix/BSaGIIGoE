//Blood Sweat and Gears II Create Tagging.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Nuggets--
var nuggetTypes = [
    "copper",
	"brass",
	"zinc",
	];

for name in nuggetTypes {
    val oreForge = BracketHandlers.getTag("forge:nuggets/" + name);
    val oreCreate = BracketHandlers.getItem("create:" + name + "_nugget");

<tag:forge:plates>.removeItems(oreCreate);
oreForge.removeItems(oreCreate);
}

#--Plates--
var plateTypes = [
    "copper",
	"brass",
	"iron",
	//"gold", uses a stupid name
	//"lapis", uses a stupid name
	];

for name in plateTypes {
    val oreForge = BracketHandlers.getTag("forge:plates/" + name);
    val oreCreate = BracketHandlers.getItem("create:" + name + "_sheet");

<tag:forge:plates>.removeItems(oreCreate);
oreForge.removeItems(oreCreate);
}

<tag:forge:plates>.removeItems(<item:create:golden_sheet>);
<tag:forge:plates/gold>.removeItems(<item:create:golden_sheet>);

<tag:forge:plates>.removeItems(<item:create:lapis_sheet>);
<tag:forge:plates/lapis_lazuli>.removeItems(<item:create:lapis_sheet>);