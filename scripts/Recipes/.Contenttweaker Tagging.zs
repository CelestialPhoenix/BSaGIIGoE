//Blood Sweat and Gears II Create Tagging.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Redstone Motuus--
<tag:forge:motuus>.createItemTag();

var redstoneMotuus = [
    "gold",
	"platinum",
	"silver"
	];

for name in redstoneMotuus {
    val oreMotuus = BracketHandlers.getTag("forge:motuus/" + name);
    val oreMotuusItem = BracketHandlers.getItem("contenttweaker:" + name + "_motuus");

oreMotuus.createItemTag();
oreMotuus.addItems(oreMotuusItem);
<tag:forge:motuus>.addItems(oreMotuusItem);
}

