//Blood Sweat and Gears II Create.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

/* --Notes on Changes---
-Replace wood with treated wood (t1) or oiled wood (t2)
-Redstone action requires motuus
-Redstone operation requires electron tube/shaft
-Redstone intellegence requires brain
*/

#--Basin--
craftingTable.removeRecipe(<item:create:basin>);
craftingTable.addShaped("create_basin", <item:create:basin>, [
    [<tag:forge:plates/iron>, <item:minecraft:air>, <tag:forge:plates/iron>],
    [<tag:forge:plates/iron>, <item:minecraft:air>, <tag:forge:plates/iron>],
    [<tag:forge:ingots/iron>, <tag:forge:ingots/iron>, <tag:forge:ingots/iron>],
]);

#--Belt (drivebalt/mechanical belt)--
craftingTable.removeRecipe(<item:create:belt_connector>);
craftingTable.addShaped("create_belt_connector", <item:create:belt_connector>*3, [
    [<tag:forge:leather>, <tag:forge:leather>, <tag:forge:leather>],
    [<tag:forge:leather>, <tag:forge:leather>, <tag:forge:leather>]
]);
//add recipes for rubber belting and treated leather

#--Blaze Burner--
craftingTable.removeRecipe(<item:create:empty_blaze_burner>);
craftingTable.addShaped("create_empty_blaze_burner", <item:create:empty_blaze_burner>, [
    [<tag:forge:bars/iron>, <item:minecraft:air>, <tag:forge:bars/iron>],
    [<tag:forge:bars/iron>, <item:minecraft:air>, <tag:forge:bars/iron>],
    [<tag:forge:plates/iron>, <tag:forge:plates/iron>, <tag:forge:plates/iron>],
]);

#--Bracket (wood)--
craftingTable.removeRecipe(<item:create:wooden_bracket>);
craftingTable.addShaped("create_wooden_bracket", <item:create:wooden_bracket>*2, [
    [<tag:forge:rods/treated_wood>, <tag:forge:rods/treated_wood>, <tag:forge:rods/treated_wood>],
    [<item:minecraft:air>, <tag:forge:rods/treated_wood>, <item:minecraft:air>],
    [<tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>],
]);
//add one for better wood

#--Bracket (metal)--
craftingTable.removeRecipe(<item:create:metal_bracket>);
craftingTable.addShaped("create_metal_bracket", <item:create:metal_bracket>*2, [
    [<tag:forge:rods/iron>, <tag:forge:rods/iron>, <tag:forge:rods/iron>],
    [<item:minecraft:air>, <tag:forge:rods/iron>, <item:minecraft:air>],
    [<tag:forge:plates/iron>, <tag:forge:plates/iron>, <tag:forge:plates/iron>],
]);
craftingTable.addShaped("create_metal_bracket3", <item:create:metal_bracket>*3, [
    [<tag:forge:rods/steel>, <tag:forge:rods/steel>, <tag:forge:rods/steel>],
    [<item:minecraft:air>, <tag:forge:rods/steel>, <item:minecraft:air>],
    [<tag:forge:plates/steel>, <tag:forge:plates/steel>, <tag:forge:plates/steel>],
]);

#--Chain Drive--
craftingTable.removeRecipe(<item:create:encased_chain_drive>);
craftingTable.addShaped("create_chaindrive", <item:create:encased_chain_drive>, [
    [<item:minecraft:chain>, <tag:forge:gears/iron>, <item:minecraft:chain>],
    [<tag:create:shaft>, <tag:create:casings/wooden>, <tag:create:shaft>],
    [<item:minecraft:chain>, <tag:forge:gears/iron>, <item:minecraft:chain>]
]);

#--Chain Drive Adjustable--
craftingTable.removeRecipe(<item:create:adjustable_chain_gearshift>);
craftingTable.addShaped("create_adjustable_chain_gearshift", <item:create:adjustable_chain_gearshift>, [
    [<item:minecraft:air>, <tag:forge:motuus/gold>, <item:minecraft:air>],
    [<item:create:electron_tube>, <item:create:encased_chain_drive>, <item:create:electron_tube>],
    [<item:minecraft:air>, <item:immersiveengineering:component_iron>, <item:minecraft:air>]
]);

#--Chute--
craftingTable.removeRecipe(<item:create:chute>);
craftingTable.addShaped("create_chute", <item:create:chute>, [
    [<tag:forge:plates/iron>, <item:minecraft:air>, <tag:forge:plates/iron>],
    [<tag:forge:plates/iron>, <item:minecraft:air>, <tag:forge:plates/iron>],
    [<tag:forge:plates/iron>, <item:minecraft:air>, <tag:forge:plates/iron>]
]);

#--Cogwheel--
craftingTable.removeRecipe(<item:create:cogwheel>);
craftingTable.addShaped("create_cogwheel", <item:create:cogwheel>, [
    [<item:minecraft:air>, <tag:forge:woodslab/preserved>, <item:minecraft:air>],
    [<tag:forge:woodslab/preserved>, <tag:create:shaft>, <tag:forge:woodslab/preserved>],
    [<item:minecraft:air>, <tag:forge:woodslab/preserved>, <item:minecraft:air>]
]);

#--Cogwheel Large--
craftingTable.removeRecipe(<item:create:large_cogwheel>);
craftingTable.addShaped("create_cogwheel_large", <item:create:large_cogwheel>, [
    [<tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>],
    [<tag:forge:woodslab/preserved>, <tag:create:cogwheel>, <tag:forge:woodslab/preserved>],
    [<tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>]
]);

#--Clutch--
craftingTable.removeRecipe(<item:create:clutch>);
craftingTable.addShaped("create_clutch", <item:create:clutch>, [
    [<item:minecraft:air>, <tag:forge:motuus/gold>, <item:minecraft:air>],
    [<tag:create:shaft>, <tag:create:casings/wooden>, <tag:create:shaft>],
    [<item:minecraft:air>, <tag:create:shaft>, <item:minecraft:air>]
]);

#--Copper Valve Handle--xxx

#--Crushing Wheel--xxx

#--Cuckoo Clock--
craftingTable.removeRecipe(<item:create:cuckoo_clock>);
craftingTable.addShaped("create_cuckoo_clock", <item:create:cuckoo_clock>, [
    [<item:minecraft:air>, <tag:forge:woodslab/preserved>, <item:minecraft:air>],
    [<tag:forge:woodslab/preserved>, <item:minecraft:clock>, <tag:forge:woodslab/preserved>],
    [<tag:forge:woodslab/preserved>, <tag:create:cogwheel>, <tag:forge:woodslab/preserved>]
]);

#--Depot--
craftingTable.removeRecipe(<item:create:depot>);
craftingTable.addShaped("create_depot", <item:create:depot>, [
    [<tag:forge:chests/wooden>],
    [<tag:create:casings/wooden>]
]);

#--Encased Fan--
craftingTable.removeRecipe(<item:create:encased_fan>);
craftingTable.addShaped("create_encased_fan", <item:create:encased_fan>, [
    [<item:minecraft:air>, <tag:create:shaft>, <item:minecraft:air>],
    [<tag:create:cogwheel>, <tag:create:casings/wooden>, <tag:create:cogwheel_large>],
    [<item:minecraft:air>, <tag:forge:rotors/iron>, <item:minecraft:air>]
]);

#--Fluid Pipe--
craftingTable.removeRecipe(<item:create:fluid_pipe>);
furnace.addRecipe("smelt_clay_pipe", <item:create:fluid_pipe>, <item:contenttweaker:clay_pipe>, 0.0, 200);

#--Fluid Pipe (smart)--xxx

#--Fluid Tank--
craftingTable.removeRecipe(<item:create:fluid_tank>);
craftingTable.addShaped("create_fluid_tank", <item:create:fluid_tank>, [
    [<tag:forge:plates/ceramic>, <tag:forge:glass_panes>, <tag:forge:plates/ceramic>],
    [<tag:forge:plates/ceramic>, <tag:forge:glass_panes>, <tag:forge:plates/ceramic>],
    [<tag:forge:plates/ceramic>, <tag:forge:glass_panes>, <tag:forge:plates/ceramic>]
]);

#--Fluid Valve--
//this recipe is ok

#--Gearbox--
//this recipe is ok

#--Gearshift--
craftingTable.removeRecipe(<item:create:gearshift>);
craftingTable.addShaped("create_gearshift", <item:create:gearshift>, [
    [<item:minecraft:air>, <tag:forge:motuus/gold>, <item:minecraft:air>],
    [<tag:create:cogwheel>, <tag:create:casings/wooden>, <tag:create:cogwheel>],
    [<item:minecraft:air>, <tag:create:shaft>, <item:minecraft:air>]
]);

#--Gearshift Sequenced--xxx
//requires brain?

#--Handcrank--
craftingTable.removeRecipe(<item:create:hand_crank>);
craftingTable.addShaped("create_crank", <item:create:hand_crank>, [
    [<tag:create:shaft>, <item:minecraft:air>, <item:minecraft:air>],
    [<tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>],
    [<item:minecraft:air>, <tag:forge:rope>, <tag:forge:rods/treated_wood>]
]);

#--Hose Pulley--
craftingTable.removeRecipe(<item:create:hose_pulley>);
craftingTable.addShaped("create_hose_pulley", <item:create:hose_pulley>, [
    [<item:minecraft:air>, <tag:create:casings/copper>, <item:minecraft:air>],
    [<tag:create:shaft>, <item:contenttweaker:hosereel>, <item:create:fluid_pipe>],
    [<item:minecraft:air>, <item:contenttweaker:hosereel>, <item:minecraft:air>]
]);

#--Item Drain--
craftingTable.removeRecipe(<item:create:item_drain>);
craftingTable.addShaped("create_item_drain", <item:create:item_drain>, [
    [<tag:forge:plates/ceramic>, <tag:forge:bars/iron>, <tag:forge:plates/ceramic>],
    [<tag:forge:plates/ceramic>, <item:minecraft:air>, <tag:forge:plates/ceramic>]
]);

#--Mechanical Mixer--
craftingTable.removeRecipe(<item:create:mechanical_mixer>);
craftingTable.addShaped("create_mechanical_mixer", <item:create:mechanical_mixer>, [
    [<item:minecraft:air>, <tag:create:piston_extension>, <item:minecraft:air>],
    [<tag:create:cogwheel>, <tag:create:casings/wooden>, <tag:create:cogwheel>],
    [<item:minecraft:air>, <item:create:whisk>, <item:minecraft:air>]
]);

#--Mechanical Press--
craftingTable.removeRecipe(<item:create:mechanical_press>);
craftingTable.addShaped("create_mechanical_press", <item:create:mechanical_press>, [
    [<item:minecraft:air>, <tag:create:shaft>, <item:minecraft:air>],
    [<tag:create:cogwheel>, <tag:create:casings/wooden>, <tag:create:cogwheel>],
    [<item:minecraft:air>, <tag:forge:storage_blocks/iron>, <item:minecraft:air>]
]);

#--Millstone--
craftingTable.removeRecipe(<item:create:millstone>);
craftingTable.addShaped("create_millstone", <item:create:millstone>, [
    [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>],
    [<item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>],
    [<item:minecraft:smooth_stone>, <tag:create:cogwheel>, <item:minecraft:smooth_stone>]
]);

#--Mechanical Pump--
//this recipe is ok

#--Nozzle--xxx

#--Portable Fluid Interface--
craftingTable.removeRecipe(<item:create:portable_fluid_interface>);
craftingTable.addShaped("create_fluid_interface", <item:create:portable_fluid_interface>, [
    [<item:create:chute>],
    [<item:create:fluid_pipe>],
    [<item:create:fluid_tank>]
]);

#--Shaft--
craftingTable.removeRecipe(<item:create:shaft>*4);
craftingTable.addShaped("shaft_wood_hemp", <item:create:shaft>, [
    [<tag:forge:wood/preserved>],
    [<tag:forge:rope>],
    [<tag:forge:wood/preserved>]
]);
//add extra for better woods

#--Schematic Table--xxx
#--Schematicannon--xxx
//requires brain

#--Speedometer--
//this recipe is ok

#--Spout--
craftingTable.removeRecipe(<item:create:spout>);
craftingTable.addShaped("create_spout", <item:create:spout>, [
    [<tag:forge:plates/ceramic>, <item:create:fluid_tank>, <tag:forge:plates/ceramic>],
    [<tag:forge:plates/ceramic>, <item:minecraft:air>, <tag:forge:plates/ceramic>],
    [<item:minecraft:air>, <tag:forge:plates/ceramic>, <tag:forge:plates/ceramic>]
]);

#--Stressometer--
//this recipe is ok

#--Turntable--
craftingTable.removeRecipe(<item:create:turntable>);
craftingTable.addShaped("create_turntable", <item:create:turntable>, [
    [<tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>, <tag:forge:woodslab/preserved>],
    [<tag:create:cogwheel>, <tag:create:shaft>, <tag:create:cogwheel>],
    [<item:minecraft:air>, <tag:create:shaft>, <item:minecraft:air>]
]);

#--Waterwheel--
craftingTable.removeRecipe(<item:create:water_wheel>);
craftingTable.addShaped("create_waterwheel", <item:create:water_wheel>, [
    [<item:immersiveengineering:waterwheel_segment>, <item:immersiveengineering:waterwheel_segment>, <item:immersiveengineering:waterwheel_segment>],
    [<item:immersiveengineering:waterwheel_segment>, <tag:create:cogwheel_large>, <item:immersiveengineering:waterwheel_segment>],
    [<item:immersiveengineering:waterwheel_segment>, <item:immersiveengineering:waterwheel_segment>, <item:immersiveengineering:waterwheel_segment>]
]);


