import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Safe-Server mode has been ENABLED!");
//===========================================




//=========== RECIPES TO REMOVE =============
print("========== UNSAFE RECIPES REMOVED! ==========");
val bannedItems = [
    <additionalpipes:teleport_tether>,

    <botania:hourglass>,
    <botania:laputashard:*>,
    <botania:teruterubozu>,
    <botania:manabomb>,
	<botania:lens:7>,

    <forestry:letters>,
    <forestry:mailbox>,
    <forestry:rainmaker>,

    <ic2:dynamite>,
    <ic2:dynamite_sticky>,
    <ic2:mining_laser:*>,
    <ic2:te:1>,
    <ic2:te:2>,
    <ic2:te:57>,
    <ic2:te:82>,

    <inventorypets:bed_pet>,
    <inventorypets:black_hole_pet>,
    <inventorypets:chest_pet>,
    <inventorypets:cloud_pet>,
    <inventorypets:double_chest_pet>,
    <inventorypets:ender_chest_pet>,
    <inventorypets:ghast_pet>,
    <inventorypets:grave_pet>,
    <inventorypets:illuminati_pet>,
    <inventorypets:wither_pet>,

    <minecraft:tnt>,
    <minecraft:tnt_minecart>,

    <opencomputers:upgrade:4>,
	
    <projecte:item.pe_archangel_smite>,
    <projecte:item.pe_catalitic_lens>,
    <projecte:item.pe_evertide_amulet>,
    <projecte:item.pe_harvest_god>,
    <projecte:item.pe_hyperkinetic_lens>,
    <projecte:item.pe_time_watch>,
    <projecte:item.pe_volcanite_amulet>,
    <projecte:nova_cataclysm>,
    <projecte:nova_catalyst>,

    <projectred-expansion:machine2:12>,
    <projectred-expansion:machine2:2>,
    <projectred-expansion:machine2>,

    <railcraft:bore>,
    <railcraft:borehead_bronze>,
    <railcraft:borehead_diamond>,
    <railcraft:borehead_iron>,
    <railcraft:borehead_steel>,
    <railcraft:cart_tnt_wood>,
    <railcraft:cart_worldspike_admin>,
    <railcraft:cart_worldspike_personal>,
    <railcraft:cart_worldspike_standard>,
    <railcraft:worldspike:*>,
    <railcraft:worldspike_point>,

    <tconstruct:piggybackpack>,
    <tconstruct:throwball:1>,

    <thermalexpansion:machine:2>,
	<thermalexpansion:satchel>,

    <weirdinggadget:weirding_gadget>,

    <wrcbe:rep>
] as IItemStack[];

for item in bannedItems{
    recipes.remove(item);
}

//===========================================
