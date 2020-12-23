//Blood Sweat and Gears II Create.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

/* --Notes on Changes---
-Replace wood with treated wood (t1) or oiled wood (t2)
-Redstone action requires motuus
-Redstone operation requires electron tube/shaft
-Redstone intellegence requires brain
*/

#--Belt (drivebalt/mechanical belt)--
craftingTable.removeRecipe(<item:create:belt_connector>);
craftingTable.addShaped("create_belt_connector", <item:create:belt_connector>*3, [
    [<tag:forge:leather>, <tag:forge:leather>, <tag:forge:leather>],
    [<tag:forge:leather>, <tag:forge:leather>, <tag:forge:leather>]
]);
//add recipes for rubber belting and treated leather


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

#--Cuckoo Clock--
craftingTable.removeRecipe(<item:create:cuckoo_clock>);
craftingTable.addShaped("create_cuckoo_clock", <item:create:cuckoo_clock>, [
    [<item:minecraft:air>, <tag:forge:woodslab/preserved>, <item:minecraft:air>],
    [<tag:forge:woodslab/preserved>, <item:minecraft:clock>, <tag:forge:woodslab/preserved>],
    [<tag:forge:woodslab/preserved>, <tag:create:cogwheel>, <tag:forge:woodslab/preserved>]
]);

#--Encased Fan--
craftingTable.removeRecipe(<item:create:encased_fan>);
craftingTable.addShaped("create_encased_fan", <item:create:encased_fan>, [
    [<item:minecraft:air>, <tag:create:shaft>, <item:minecraft:air>],
    [<tag:create:cogwheel>, <item:create:andesite_casing>, <tag:create:cogwheel_large>],
    [<item:minecraft:air>, <tag:forge:rotors/iron>, <item:minecraft:air>]
]);

#--Gearbox--
#stock recipe is ok

#--Gearshift--
craftingTable.removeRecipe(<item:create:gearshift>);
craftingTable.addShaped("create_gearshift", <item:create:gearshift>, [
    [<item:minecraft:air>, <tag:forge:motuus/gold>, <item:minecraft:air>],
    [<tag:create:cogwheel>, <item:create:andesite_casing>, <tag:create:cogwheel>],
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



#--Nozzle--

#--Shaft--
craftingTable.removeRecipe(<item:create:shaft>*4);
craftingTable.addShaped("shaft_wood_hemp", <item:create:shaft>, [
    [<tag:forge:wood/preserved>],
    [<tag:forge:rope>],
    [<tag:forge:wood/preserved>]
]);
//add extra for better woods

#--Schematic Table--
#--Schematicannon--
//requires brain

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


