//Blood Sweat and Gears II Create Tagging.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Crushed Ore--
var crushedOres = [
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

for name in crushedOres {
    val oreCrushed = BracketHandlers.getTag("create:crushed_ores/" + name);
    val oreCreate = BracketHandlers.getItem("create:crushed_" + name + "_ore");

oreCrushed.createItemTag();
oreCrushed.addItems(oreCreate);
}

#--Ingots--
var ingotTypes = [
    "copper",
	"brass",
	"zinc",
	];

for name in ingotTypes {
    val oreForge = BracketHandlers.getTag("forge:ingots/" + name);
    val oreCreate = BracketHandlers.getItem("create:" + name + "_ingot");

<tag:forge:ingots>.removeItems(oreCreate);
<tag:forge:beacon_payment>.removeItems(oreCreate);
<tag:create:create_ingots>.removeItems(oreCreate);
oreForge.removeItems(oreCreate);
}

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

#--Machines and Components--
<tag:create:cogwheel>.createItemTag();
<tag:create:cogwheel>.addItems(<item:create:cogwheel>);

<tag:create:cogwheel_large>.createItemTag();
<tag:create:cogwheel_large>.addItems(<item:create:large_cogwheel>);

<tag:create:shaft>.createItemTag();
<tag:create:shaft>.addItems(<item:create:shaft>);

<tag:forge:rotors/iron>.createItemTag();
<tag:forge:rotors/iron>.addItems(<item:create:propeller>);

<tag:create:casings/wooden>.createItemTag();
<tag:create:casings/wooden>.addItems(<item:create:andesite_casing>);

<tag:create:piston_extension>.createItemTag();
<tag:create:piston_extension>.addItems(<item:create:piston_extension_pole>);

#--Ores--
var oreTypes = [
    "copper",
	"zinc",
	];

for name in oreTypes {
    val oreForge = BracketHandlers.getTag("forge:ores/" + name);
    val oreCreate = BracketHandlers.getItem("create:" + name + "_ore");

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