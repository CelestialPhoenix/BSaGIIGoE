//Blood Sweat and Gears II String/Rope/Fabric Components.zs
//Author: PhoePhoe

#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;

new ItemBuilder().build("hemp_fibre");
new ItemBuilder().build("silk_fibre");

new ItemBuilder().build("hemp_string");
//vanilla string

new ItemBuilder().build("hemp_rope");
new ItemBuilder().build("silk_rope");

new ItemBuilder().build("hemp_fabric");
new ItemBuilder().build("silk_fabric");

new BlockBuilder()
    .withType<BlockBuilderPillarRotatable>()
    .build("hemp_rope_block");

new BlockBuilder()
    .withType<BlockBuilderPillarRotatable>()
    .build("silk_rope_block");

new BlockBuilder()
    .withType<BlockBuilderPillarRotatable>()
    .build("hemp_fabric_block");

new BlockBuilder()
    .withType<BlockBuilderPillarRotatable>()
    .build("silk_fabric_block");