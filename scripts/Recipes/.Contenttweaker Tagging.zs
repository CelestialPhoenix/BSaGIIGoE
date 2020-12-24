//Blood Sweat and Gears II Create Tagging.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Clay Stuff--
<tag:forge:plates/clay>.createItemTag();
<tag:forge:plates/clay>.addItems(<item:contenttweaker:clay_plate>);

<tag:forge:plates/ceramic>.createItemTag();
<tag:forge:plates/ceramic>.addItems(<item:contenttweaker:ceramic_plate>);

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

#--Fibre/String/Rope/Fabric--

<tag:forge:fibre>.createItemTag();
<tag:forge:fibres/hemp>.createItemTag();
<tag:forge:fibres/hemp>.addItems(<item:contenttweaker:hemp_fibre>);
<tag:forge:fibre>.addItems(<item:contenttweaker:hemp_fibre>);

<tag:forge:fibres/silk>.createItemTag();
<tag:forge:fibres/silk>.addItems(<item:contenttweaker:silk_fibre>);
<tag:forge:fibre>.addItems(<item:contenttweaker:silk_fibre>);

<tag:forge:strings/hemp>.createItemTag();
<tag:forge:strings/hemp>.addItems(<item:contenttweaker:hemp_string>);
<tag:forge:string>.addItems(<item:contenttweaker:hemp_string>);

//Silk string in vanilla minecraft

<tag:forge:rope>.createItemTag();
<tag:forge:ropes/hemp>.createItemTag();
<tag:forge:ropes/hemp>.addItems(<item:contenttweaker:hemp_rope>);
<tag:forge:rope>.addItems(<item:contenttweaker:hemp_rope>);

<tag:forge:ropes/silk>.createItemTag();
<tag:forge:ropes/silk>.addItems(<item:contenttweaker:silk_rope>);
<tag:forge:rope>.addItems(<item:contenttweaker:silk_rope>);

<tag:forge:fabric>.createItemTag();
<tag:forge:fabrics/hemp>.createItemTag();
<tag:forge:fabrics/hemp>.addItems(<item:contenttweaker:hemp_fabric>);
<tag:forge:fabric>.addItems(<item:contenttweaker:hemp_fabric>);

<tag:forge:fabrics/silk>.createItemTag();
<tag:forge:fabrics/silk>.addItems(<item:contenttweaker:silk_fabric>);
<tag:forge:fabric>.addItems(<item:contenttweaker:silk_fabric>);

<tag:forge:storage_blocks/silk_fabric>.createItemTag();
<tag:forge:storage_blocks/silk_fabric>.addItems(<item:contenttweaker:silk_fabric_block>);
<tag:forge:storage_blocks>.addItems(<item:contenttweaker:silk_fabric_block>);

<tag:forge:storage_blocks/hemp_fabric>.createItemTag();
<tag:forge:storage_blocks/hemp_fabric>.addItems(<item:contenttweaker:hemp_fabric_block>);
<tag:forge:storage_blocks>.addItems(<item:contenttweaker:hemp_fabric_block>);

<tag:forge:storage_blocks/silk_rope>.createItemTag();
<tag:forge:storage_blocks/silk_rope>.addItems(<item:contenttweaker:silk_rope_block>);
<tag:forge:storage_blocks>.addItems(<item:contenttweaker:silk_rope_block>);

<tag:forge:storage_blocks/hemp_rope>.createItemTag();
<tag:forge:storage_blocks/hemp_rope>.addItems(<item:contenttweaker:hemp_rope_block>);
<tag:forge:storage_blocks>.addItems(<item:contenttweaker:hemp_rope_block>);