//Blood Sweat and Gears II Create.zs
//Author: PhoePhoe

import crafttweaker.api.item.IItemStack;

/* --Notes on Changes---
-Replace wood with treated wood (t1) or oiled wood (t2)
*/

#--Shaft-
craftingTable.removeRecipe(<item:create:shaft>);
craftingTable.addShaped("shaft_wood_hemp", <item:create:shaft>, [
    [<tag:forge:treated_wood>],
    [<tag:forge:rope>],
    [<tag:forge:treated_wood>]
]);
//add extra for better woods