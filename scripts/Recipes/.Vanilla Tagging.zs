//Blood Sweat and Gears II Create Tagging.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;


//coal
<tag:forge:gems/coal>.createItemTag();
<tag:forge:gems/coal>.addItems(<item:minecraft:coal>);
<tag:forge:gems>.addItems(<item:minecraft:coal>);

//netherite
<tag:forge:ingots/netherite_scrap>.createItemTag();
<tag:forge:ingots/netherite_scrap>.addItems(<item:minecraft:netherite_scrap>);
<tag:forge:ingots>.addItems(<item:minecraft:netherite_scrap>);

//string
<tag:forge:strings/silk>.createItemTag();
<tag:forge:strings/silk>.addItems(<item:minecraft:string>);

#--Tools/Weapons/Armour--
//armours
var armourMaterials = [
	//"chain", has stupid name
	"diamond",
	"iron",
	//"gold", has stupid name
	"netherite",
	"leather"
	];

for name in armourMaterials {
    val oreHelmet = BracketHandlers.getTag("forge:helmets/" + name);
    val oreVanillaHelmet = BracketHandlers.getItem("minecraft:" + name + "_helmet");
oreHelmet.createItemTag();
oreHelmet.addItems(oreVanillaHelmet);

    val oreChestplate = BracketHandlers.getTag("forge:chestplates/" + name);
    val oreVanillaChestplate = BracketHandlers.getItem("minecraft:" + name + "_chestplate");
oreChestplate.createItemTag();
oreChestplate.addItems(oreVanillaChestplate);

    val oreLegs = BracketHandlers.getTag("forge:leggings/" + name);
    val oreVanillaLegs = BracketHandlers.getItem("minecraft:" + name + "_leggings");
oreLegs.createItemTag();
oreLegs.addItems(oreVanillaLegs);

    val oreBoots = BracketHandlers.getTag("forge:boots/" + name);
    val oreVanillaBoots = BracketHandlers.getItem("minecraft:" + name + "_boots");
oreBoots.createItemTag();
oreBoots.addItems(oreVanillaBoots);
}

<tag:forge:helmets/chain>.createItemTag();
<tag:forge:helmets/chain>.addItems(<item:minecraft:chainmail_helmet>);
<tag:forge:chestplates/chain>.createItemTag();
<tag:forge:chestplates/chain>.addItems(<item:minecraft:chainmail_chestplate>);
<tag:forge:leggings/chain>.createItemTag();
<tag:forge:leggings/chain>.addItems(<item:minecraft:chainmail_leggings>);
<tag:forge:boots/chain>.createItemTag();
<tag:forge:boots/chain>.addItems(<item:minecraft:chainmail_boots>);

<tag:forge:helmets/gold>.createItemTag();
<tag:forge:helmets/gold>.addItems(<item:minecraft:golden_helmet>);
<tag:forge:chestplates/gold>.createItemTag();
<tag:forge:chestplates/gold>.addItems(<item:minecraft:golden_chestplate>);
<tag:forge:leggings/gold>.createItemTag();
<tag:forge:leggings/gold>.addItems(<item:minecraft:golden_leggings>);
<tag:forge:boots/gold>.createItemTag();
<tag:forge:boots/gold>.addItems(<item:minecraft:golden_boots>);

//tools/weapons
var toolMaterials = [
	"diamond",
	"iron",
	//"gold", has stupid name
	"netherite",
	"stone",
	//"wood", has stupid name
	];

for name in toolMaterials {
    val oreSword = BracketHandlers.getTag("forge:swords/" + name);
    val oreVanillaSword = BracketHandlers.getItem("minecraft:" + name + "_sword");
oreSword.createItemTag();
oreSword.addItems(oreVanillaSword);

    val oreShovel = BracketHandlers.getTag("forge:shovels/" + name);
    val oreVanillaShovel = BracketHandlers.getItem("minecraft:" + name + "_shovel");
oreShovel.createItemTag();
oreShovel.addItems(oreVanillaShovel);

    val orePickaxe = BracketHandlers.getTag("forge:pickaxes/" + name);
    val oreVanillaPickaxe = BracketHandlers.getItem("minecraft:" + name + "_pickaxe");
orePickaxe.createItemTag();
orePickaxe.addItems(oreVanillaPickaxe);

    val oreAxe = BracketHandlers.getTag("forge:axes/" + name);
    val oreVanillaAxe = BracketHandlers.getItem("minecraft:" + name + "_axe");
oreAxe.createItemTag();
oreAxe.addItems(oreVanillaAxe);

    val oreHoe = BracketHandlers.getTag("forge:hoes/" + name);
    val oreVanillaHoe = BracketHandlers.getItem("minecraft:" + name + "_hoe");
oreHoe.createItemTag();
oreHoe.addItems(oreVanillaHoe);
}

<tag:forge:swords/gold>.createItemTag();
<tag:forge:swords/gold>.addItems(<item:minecraft:golden_sword>);
<tag:forge:shovels/gold>.createItemTag();
<tag:forge:shovels/gold>.addItems(<item:minecraft:golden_shovel>);
<tag:forge:pickaxes/gold>.createItemTag();
<tag:forge:pickaxes/gold>.addItems(<item:minecraft:golden_pickaxe>);
<tag:forge:axes/gold>.createItemTag();
<tag:forge:axes/gold>.addItems(<item:minecraft:golden_axe>);
<tag:forge:hoes/gold>.createItemTag();
<tag:forge:hoes/gold>.addItems(<item:minecraft:golden_hoe>);

<tag:forge:swords/wood>.createItemTag();
<tag:forge:swords/wood>.addItems(<item:minecraft:wooden_sword>);
<tag:forge:shovels/wood>.createItemTag();
<tag:forge:shovels/wood>.addItems(<item:minecraft:wooden_shovel>);
<tag:forge:pickaxes/wood>.createItemTag();
<tag:forge:pickaxes/wood>.addItems(<item:minecraft:wooden_pickaxe>);
<tag:forge:axes/wood>.createItemTag();
<tag:forge:axes/wood>.addItems(<item:minecraft:wooden_axe>);
<tag:forge:hoes/wood>.createItemTag();
<tag:forge:hoes/wood>.addItems(<item:minecraft:wooden_hoe>);

#--Wood--
var woodTypesOverworld = [
    "oak",
	"spruce",
	"birch",
	"jungle",
	"acacia",
	"dark_oak"
	];

for name in woodTypesOverworld {
    val tagLog = BracketHandlers.getTag("forge:logs/" + name);
    val itemLog = BracketHandlers.getItem("minecraft:" + name + "_log");
tagLog.createItemTag();
tagLog.addItems(itemLog);
}

var woodTypesNether = [

	"crimson",
	"warped"
	];

for name in woodTypesNether {
    val tagLog = BracketHandlers.getTag("forge:logs/" + name);
    val itemLog = BracketHandlers.getItem("minecraft:" + name + "_stem");
tagLog.createItemTag();
tagLog.addItems(itemLog);
}