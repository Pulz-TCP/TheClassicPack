import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Safe-Server mode has been ENABLED!");

//============== VARIABLES =================
//minecraft --------------------------------
var gunpowder = <minecraft:gunpowder>;
var redstoneBlock = <minecraft:redstone_block>;
var tnt = <minecraft:tnt>;

//ic2 ---------------------------------------
var advancedAlloy = <ic2:crafting:3>;
var advancedCircuit = <ic2:crafting:2>;
var advancedMachineCasing = <ic2:resource:13>;
var coil = <ic2:crafting:5>;
var crystalMemory = <ic2:crystal_memory>;
var electricMotor = <ic2:crafting:6>;
var energyCrystal = <ic2:energy_crystal:26>.anyDamage();
var ironIngot = <ore:ingotIron>;
var miningLaser = <ic2:mining_laser:26>.anyDamage();
var patternStorage = <ic2:te:62>;
var reinforcedStone = <ic2:resource:11>;
var thermalCentrifuge = <ic2:te:52>;

//thaumcraft --------------------------------
var alumentum = <thaumcraft:alumentum>;
var causalityCollapser = <thaumcraft:causality_collapser>;
var nitor = <ore:nitor>;

//===========================================




//=========== RECIPES TO REMOVE =============
print("========== UNSAFE RECIPES REMOVED! ==========");
val bannedItems = [
    <additionalpipes:teleport_tether>,

    <botania:hourglass>,
    <botania:laputashard:14>,
    <botania:laputashard:19>,
    <botania:laputashard:4>,
    <botania:laputashard:9>,
    <botania:laputashard>,
    <botania:teruterubozu>,

    <forestry:crafting_material:4>,
    <forestry:iodine_capsule>,
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
    <inventorypets:chest_pet>,
    <inventorypets:cloud_pet>,
    <inventorypets:double_chest_pet>,
    <inventorypets:ender_chest_pet>,
    <inventorypets:ghast_pet>,
    <inventorypets:grave_pet>,
    <inventorypets:illuminati_pet>,

    <minecraft:tnt>,
    <minecraft:tnt_minecart>,

    <opencomputers:upgrade:4>,

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
    <railcraft:worldspike:1>,
    <railcraft:worldspike:2>,
    <railcraft:worldspike:3>,
    <railcraft:worldspike>,
    <railcraft:worldspike_point>,

    <tconstruct:piggybackpack>,
    <tconstruct:throwball:1>,

    <thermalexpansion:machine:2>,

    <weirdinggadget:weirding_gadget>,

    <wrcbe:rep>
] as IItemStack[];

for item in bannedItems{
    recipes.remove(item);
}

//===========================================




//=============== THAUMCRAFT =================
//remove and re-add infusion so it doesnt need tnt
mods.thaumcraft.Infusion.removeRecipe(causalityCollapser);
mods.thaumcraft.Infusion.registerRecipe("causalitycollapserpatch", "RIFTCLOSER", causalityCollapser, 9, 
[<aspect:alienis>*50, <aspect:vitium>*50], 
gunpowder, [<thaumcraft:morphic_resonator>, redstoneBlock, 
alumentum, nitor, <thaumcraft:vis_resonator>, 
redstoneBlock, alumentum, nitor]);									 
//============================================




//============= SHAPED RECIPES ==============
//(output, [components]) --------------------    
recipes.remove(patternStorage);
recipes.remove(thermalCentrifuge);
//new recipe that doesn't use mining laser
recipes.addShaped(thermalCentrifuge,        [[coil, energyCrystal, coil], 
                                             [advancedAlloy, advancedMachineCasing, advancedCircuit], 
                                             [ironIngot, electricMotor, ironIngot]]);

//new recipe that doesn't use mining laser									 
recipes.addShaped(patternStorage,           [[reinforcedStone, reinforcedStone, reinforcedStone], 
                                             [crystalMemory, advancedMachineCasing, crystalMemory], 
                                             [energyCrystal, advancedCircuit, energyCrystal]]);											 
//============================================