//Blood Sweat and Gears II Create Tagging.zs
//Author: PhoePhoe

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

#--Materials--

#Treated Wood
<tag:forge:wood/preserved>.addItems(<item:immersiveengineering:treated_wood_horizontal>);
<tag:forge:woodslab/preserved>.addItems(<item:immersiveengineering:slab_treated_wood_horizontal>);
#--Tools/Weapons/Armour--
//armours
var armourMaterials = [
	"steel",
	];

for name in armourMaterials {
    val oreHelmet = BracketHandlers.getTag("forge:helmets/" + name);
    val oreImEngHelmet = BracketHandlers.getItem("immersiveengineering:armor_" + name + "_head");
oreHelmet.createItemTag();
oreHelmet.addItems(oreImEngHelmet);

    val oreChestplate = BracketHandlers.getTag("forge:chestplates/" + name);
    val oreImEngChestplate = BracketHandlers.getItem("immersiveengineering:armor_" + name + "_chest");
oreChestplate.createItemTag();
oreChestplate.addItems(oreImEngChestplate);

    val oreLegs = BracketHandlers.getTag("forge:leggings/" + name);
    val oreImEngLegs = BracketHandlers.getItem("immersiveengineering:armor_" + name + "_legs");
oreLegs.createItemTag();
oreLegs.addItems(oreImEngLegs);

    val oreBoots = BracketHandlers.getTag("forge:boots/" + name);
    val oreImEngBoots = BracketHandlers.getItem("immersiveengineering:armor_" + name + "_feet");
oreBoots.createItemTag();
oreBoots.addItems(oreImEngBoots);
}

//tools/weapons
var toolMaterials = [
	"steel",
	];

for name in toolMaterials {
    val oreSword = BracketHandlers.getTag("forge:swords/" + name);
    val oreImEngSword = BracketHandlers.getItem("immersiveengineering:sword_" + name);
oreSword.createItemTag();
oreSword.addItems(oreImEngSword);

    val oreShovel = BracketHandlers.getTag("forge:shovels/" + name);
    val oreImEngShovel = BracketHandlers.getItem("immersiveengineering:shovel_" + name);
oreShovel.createItemTag();
oreShovel.addItems(oreImEngShovel);

    val orePickaxe = BracketHandlers.getTag("forge:pickaxes/" + name);
    val oreImEngPickaxe = BracketHandlers.getItem("immersiveengineering:pickaxe_" + name );
orePickaxe.createItemTag();
orePickaxe.addItems(oreImEngPickaxe);

    val oreAxe = BracketHandlers.getTag("forge:axes/" + name);
    val oreImEngAxe = BracketHandlers.getItem("immersiveengineering:axe_" + name);
oreAxe.createItemTag();
oreAxe.addItems(oreImEngAxe);

    val oreHoe = BracketHandlers.getTag("forge:hoes/" + name);
    val oreImEngHoe = BracketHandlers.getItem("immersiveengineering:hoe_" + name );
oreHoe.createItemTag();
oreHoe.addItems(oreImEngHoe);
}
