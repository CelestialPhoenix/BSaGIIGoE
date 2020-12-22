//Blood Sweat and Gears II ContenTweaker.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

#--Redstone Motuus--
craftingTable.addShaped("motuus_silver", <item:contenttweaker:silver_motuus>, [
    [<item:minecraft:air>, <tag:forge:nuggets/silver>, <item:minecraft:air>],
    [<tag:forge:nuggets/silver>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/silver>],
    [<tag:forge:nuggets/silver>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/silver>]
]);

craftingTable.addShaped("motuus_gold", <item:contenttweaker:gold_motuus>, [
    [<item:minecraft:air>, <tag:forge:nuggets/gold>, <item:minecraft:air>],
    [<tag:forge:nuggets/gold>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/gold>],
    [<tag:forge:nuggets/gold>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/gold>]
]);
/* waiting for platinum
craftingTable.addShaped("motuus_platinum", <item:contenttweaker:platinum_motuus>, [
    [<item:minecraft:air>, <tag:forge:nuggets/platinum>, <item:minecraft:air>],
    [<tag:forge:nuggets/platinum>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/platinum>],
    [<tag:forge:nuggets/platinum>, <tag:forge:dusts/redstone>, <tag:forge:nuggets/platinum>]
]);
*/

#--String, Rope, Fabric--
//Hemp
craftingTable.addShapeless("hemp_string", <tag:forge:strings/hemp>.firstItem, [<tag:forge:fibres/hemp>, <tag:forge:fibres/hemp>, <tag:forge:fibres/hemp>, <tag:forge:fibres/hemp>]);

craftingTable.addShaped("hemp_rope", <tag:forge:ropes/hemp>.firstItem, [
    [<tag:forge:strings/hemp>, <tag:forge:strings/hemp>],
    [<tag:forge:strings/hemp>, <tag:forge:strings/hemp>],
    [<tag:forge:strings/hemp>, <tag:forge:strings/hemp>]
]);

craftingTable.addShaped("hemp_fabric", <tag:forge:fabrics/hemp>.firstItem, [
    [<tag:forge:strings/hemp>, <tag:forge:strings/hemp>, <tag:forge:strings/hemp>],
    [<tag:forge:strings/hemp>, <tag:forge:strings/hemp>, <tag:forge:strings/hemp>],
    [<tag:forge:strings/hemp>, <tag:forge:strings/hemp>, <tag:forge:strings/hemp>]
]);

craftingTable.addShapeless("hemp_string_uncraft", <tag:forge:fibres/hemp>.firstItem*3, [<tag:forge:strings/hemp>]);
craftingTable.addShapeless("hemp_rope_uncraft", <tag:forge:strings/hemp>.firstItem*4, [<tag:forge:ropes/hemp>]);
craftingTable.addShapeless("hemp_fabric_uncraft", <tag:forge:strings/hemp>.firstItem*6, [<tag:forge:fabrics/hemp>]);

//Silk
craftingTable.addShapeless("silk_string", <tag:forge:strings/silk>.firstItem, [<tag:forge:fibres/silk>, <tag:forge:fibres/silk>, <tag:forge:fibres/silk>, <tag:forge:fibres/silk>]);

craftingTable.addShaped("silk_rope", <tag:forge:ropes/silk>.firstItem, [
    [<tag:forge:strings/silk>, <tag:forge:strings/silk>],
    [<tag:forge:strings/silk>, <tag:forge:strings/silk>],
    [<tag:forge:strings/silk>, <tag:forge:strings/silk>]
]);

craftingTable.addShaped("silk_fabric", <tag:forge:fabrics/silk>.firstItem, [
    [<tag:forge:strings/silk>, <tag:forge:strings/silk>, <tag:forge:strings/silk>],
    [<tag:forge:strings/silk>, <tag:forge:strings/silk>, <tag:forge:strings/silk>],
    [<tag:forge:strings/silk>, <tag:forge:strings/silk>, <tag:forge:strings/silk>]
]);

craftingTable.addShapeless("silk_string_uncraft", <tag:forge:fibres/silk>.firstItem*3, [<tag:forge:strings/silk>]);
craftingTable.addShapeless("silk_rope_uncraft", <tag:forge:strings/silk>.firstItem*4, [<tag:forge:ropes/silk>]);
craftingTable.addShapeless("silk_fabric_uncraft", <tag:forge:strings/silk>.firstItem*6, [<tag:forge:fabrics/silk>]);