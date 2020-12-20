//Blood Sweat and Gears II Vanilla.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Machines--
//Blast Furnace - Tidying

var allMetalTypes = [
    "aluminum",
	"constantan",
	"copper",
	"electrum",
	"iron",
	"gold",
	"lead",
	"nickel",
	"silver",
	"steel",
	"uranium",
	//"zinc" //need zinc nuggets
	];

for name in allMetalTypes {
    val oreIngots = BracketHandlers.getTag("forge:ingots/" + name);
    val oreNuggets = BracketHandlers.getTag("forge:nuggets/" + name);

blastFurnace.removeRecipe(oreIngots.firstItem);
blastFurnace.removeRecipe(oreNuggets.firstItem);
}

var miscBlastAnnoyances = [
    "create:brass_ingot",
    "create:copper_ingot",
    "create:zinc_ingot",
	"minecraft:coal",
	"minecraft:emerald",
	"minecraft:diamond",
	"minecraft:lapis_lazuli",
	"minecraft:redstone",
	"minecraft:quartz",
	"immersiveengineering:ingot_hop_graphite"
	];

for name in miscBlastAnnoyances {
    val smeltJunk = BracketHandlers.getItem(name);

blastFurnace.removeRecipe(smeltJunk);
}

//Blast Furnace - Recycling
//---6 nuggets and 200 ticks per ingot---
var allMetalArmour = [
	//"chain", different names
	"iron",
	"gold",
	//"netherite", different outputs
	"steel",
	];

for name in allMetalArmour {
    val smeltHelmet = BracketHandlers.getTag("forge:helmets/" + name);
    val smeltChestplate = BracketHandlers.getTag("forge:chestplates/" + name);
    val smeltLeggings = BracketHandlers.getTag("forge:leggings/" + name);
    val smeltBoots = BracketHandlers.getTag("forge:boots/" + name);
    val oreNuggets = BracketHandlers.getTag("forge:nuggets/" + name);

blastFurnace.addRecipe("smelt_helmet_"+name, oreNuggets.firstItem*30, smeltHelmet, 0.0, 1000);
blastFurnace.addRecipe("smelt_chestplate_"+name, oreNuggets.firstItem*48, smeltChestplate, 0.0, 1600);
blastFurnace.addRecipe("smelt_leggings_"+name, oreNuggets.firstItem*42, smeltLeggings, 0.0, 1400);
blastFurnace.addRecipe("smelt_boots_"+name, oreNuggets.firstItem*24, smeltBoots, 0.0, 800);
}

blastFurnace.addRecipe("smelt_helmet_chain", <tag:forge:nuggets/iron>.firstItem*15, <tag:forge:helmets/chain>, 0.0, 500);
blastFurnace.addRecipe("smelt_chestplate_chain", <tag:forge:nuggets/iron>.firstItem*24, <tag:forge:chestplates/chain>, 0.0, 800);
blastFurnace.addRecipe("smelt_leggings_chain", <tag:forge:nuggets/iron>.firstItem*21, <tag:forge:leggings/chain>, 0.0, 700);
blastFurnace.addRecipe("smelt_boots_chain", <tag:forge:nuggets/iron>.firstItem*12, <tag:forge:boots/chain>, 0.0, 400);

blastFurnace.addRecipe("smelt_helmet_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*20, <tag:forge:helmets/netherite>, 0.0, 1000);
blastFurnace.addRecipe("smelt_chestplate_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*32, <tag:forge:chestplates/netherite>, 0.0, 1600);
blastFurnace.addRecipe("smelt_leggings_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*28, <tag:forge:leggings/netherite>, 0.0, 1400);
blastFurnace.addRecipe("smelt_boots_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*16, <tag:forge:boots/netherite>, 0.0, 800);

var allMetalTools = [
	"iron",
	"gold",
	//"netherite", different outputs
	"steel",
	];

for name in allMetalTools {
    val smeltSword = BracketHandlers.getTag("forge:swords/" + name);
    val smeltShovel = BracketHandlers.getTag("forge:shovels/" + name);
    val smeltPickaxe = BracketHandlers.getTag("forge:pickaxes/" + name);
    val smeltAxe = BracketHandlers.getTag("forge:axes/" + name);
    val smeltHoe = BracketHandlers.getTag("forge:hoes/" + name);
    val oreNuggets = BracketHandlers.getTag("forge:nuggets/" + name);

blastFurnace.addRecipe("smelt_sword_"+name, oreNuggets.firstItem*12, smeltSword, 0.0, 400);
blastFurnace.addRecipe("smelt_shovel_"+name, oreNuggets.firstItem*6, smeltShovel, 0.0, 200);
blastFurnace.addRecipe("smelt_pickaxe_"+name, oreNuggets.firstItem*18, smeltPickaxe, 0.0, 600);
blastFurnace.addRecipe("smelt_axe_"+name, oreNuggets.firstItem*18, smeltAxe, 0.0, 600);
blastFurnace.addRecipe("smelt_hoe_"+name, oreNuggets.firstItem*12, smeltHoe, 0.0, 400);
}

blastFurnace.addRecipe("smelt_sword_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*8, <tag:forge:swords/netherite>, 0.0, 400);
blastFurnace.addRecipe("smelt_shovel_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*4, <tag:forge:shovels/netherite>, 0.0, 200);
blastFurnace.addRecipe("smelt_pickaxe_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*12, <tag:forge:pickaxes/netherite>, 0.0, 600);
blastFurnace.addRecipe("smelt_axe_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*12, <tag:forge:axes/netherite>, 0.0, 600);
blastFurnace.addRecipe("smelt_hoe_netherite", <tag:forge:ingots/netherite_scrap>.firstItem*8, <tag:forge:hoes/netherite>, 0.0, 400);

#-Furnace-
//Charcoal
furnace.removeRecipe(<item:minecraft:charcoal>);

//Food processing
//Food recipes in campire, smoker ect...

var foodTypes = [
    "minecraft:cooked_porkchop",
    "minecraft:cooked_beef",
    "minecraft:cooked_cod",
    "minecraft:cooked_salmon",
    "minecraft:cooked_chicken",
    "minecraft:cooked_rabbit",
    "minecraft:cooked_mutton",
	"minecraft:bread",
	"minecraft:baked_potato",
	"minecraft:popped_chorus_fruit",
	];

for name in foodTypes {
    val smeltFoods = BracketHandlers.getItem(name);

furnace.removeRecipe(smeltFoods);
}
#coal smelting, HOP graphite

//Ingot processing
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

furnace.removeRecipe(oreIngots.firstItem); //removes all ingot smelting
furnace.removeRecipe(oreNuggets.firstItem); //removes all nugget smelting

furnace.addRecipe(name+"dust_to_ingot", oreIngots.firstItem, oreDusts, 0.0, 200);
furnace.addRecipe(name+"ingot_to_nuggets", oreNuggets.firstItem*9, oreIngots, 0.0, 200);
//furnace.addRecipe(name+"nuggets_to_ingots", oreIngots.firstItem, oreNuggets*9, 0.0, 200); //currently doesn't support stacked inputs
furnace.addRecipe(name+"block_to_ingots", oreIngots.firstItem*9, oreBlocks, 0.0, 800);
}

furnace.removeRecipe(<tag:forge:ingots/steel>.firstItem);
furnace.removeRecipe(<tag:forge:nuggets/steel>.firstItem);

//Misc annoyances

var miscFurnaceAnnoyances = [
    "create:brass_ingot",
    "create:copper_ingot",
    "create:zinc_ingot",
	"minecraft:green_dye",
	"minecraft:lime_dye",
	"minecraft:coal",
	"minecraft:redstone",
	"minecraft:netherite_scrap",
	];

for name in miscFurnaceAnnoyances {
    val smeltJunk = BracketHandlers.getItem(name);

furnace.removeRecipe(smeltJunk);
}
